/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Seat;

/**
 *
 * @author Lanh
 */
public class SeatDAO {
    public ArrayList<Seat> getNumberSeated(Connection con, int schedule_id) {
        ArrayList<Seat> listSeat = new ArrayList<Seat>();
        try {
            String sql = "SELECT seat.id FROM ticket, schedule, seat WHERE ticket.schedule_id = ? and ticket.schedule_id = schedule.id and seat.id = ticket.seat_id";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, schedule_id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Seat seat = new Seat(
                        rs.getInt(1),
                        rs.getInt(2),
                        rs.getInt(3),
                        rs.getString(4)
                );
                listSeat.add(seat);
            }
            System.out.println(" lalala \n"+listSeat.size());
            
        } catch (SQLException ex) {
            Logger.getLogger(ScheduleDAO.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
        return listSeat;
    }
}
