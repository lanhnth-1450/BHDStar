/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao2;

import control.DBConnection;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Time;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Film;
import model.Room;
import model.Schedule;
import model.Seat;


/**
 *
 * @author Lanh
 */
public class ScheduleDAO {
    public static ArrayList<Schedule> getListScheduleByFilm(Connection con, Film film, Date date) {
        ArrayList<Schedule> listSchedule = new ArrayList<Schedule>();
        try {
            String sql = "SELECT *,room.id as room_id, room.name as room_name "
                    + "FROM schedule INNER JOIN room ON schedule.room_id = room.id "
                    + "WHERE schedule.film_id = ? AND schedule.date = ? ";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, film.getId());
            SimpleDateFormat formatterDate = new SimpleDateFormat("yyyy-MM-dd");
            ps.setString(2, date.toString());
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Time time = rs.getTime("time");
                Double price = rs.getDouble(4);
                Room room = new Room(rs.getInt("room_id"), rs.getString("room_name"));
                Schedule schedule = new Schedule(rs.getInt(1), time, date, price, room, film);
                listSchedule.add(schedule);
            }
        } catch (SQLException ex) {
            Logger.getLogger(FilmDAO.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
        return listSchedule;
    }
    
    public static void main(String[] args) {
        Connection conn = DBConnection.getConnection();
        ArrayList<Schedule> listSchedule = new ArrayList<Schedule>();
        Film film = new Film();
        FilmDAO filmDAO = new FilmDAO();
        film = filmDAO.getFilm(conn, 1);
        Date date = Date.valueOf("2018-01-04");
        System.out.println(date);
        listSchedule = getListScheduleByFilm(conn,film, date);
        
        System.out.println(listSchedule.size());
    }
}
