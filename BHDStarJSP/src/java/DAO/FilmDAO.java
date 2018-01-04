/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import control.DBConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Film;

/**
 *
 * @author Lanh
 */
public class FilmDAO {
    
    public static ArrayList<Film> getListFilm(Connection con) {
        ArrayList<Film> listFilm = new ArrayList<Film>();
        try {
            String sql = "SELECT * FROM film order by film.name";
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Film film = new Film(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDate(4),
                        rs.getInt(5),
                        rs.getFloat(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9)
                );
                listFilm.add(film);
            }
        } catch (SQLException ex) {
            Logger.getLogger(FilmDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listFilm;
    }
    
    public Film getFilm(Connection con, int id) {
        try {
            String sql = "SELECT * FROM film WHERE id = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            Film result = null;
            while (rs.next()) {
                Film a = new Film(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDate(4),
                        rs.getInt(5),
                        rs.getFloat(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9));
                result = (Film) a;
            }
            return result;
        } catch (SQLException ex) {
            Logger.getLogger(FilmDAO.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }
    
    public ArrayList<Film> getFilmByName(Connection con, String name) {
        ArrayList<Film> result = new ArrayList<Film>();
        try {
            String sql = "SELECT * FROM film where name like ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, "%"+name+"%");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Film a = new Film(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDate(4),
                        rs.getInt(5),
                        rs.getFloat(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9));
                result.add(a);
            }
        } catch (SQLException ex) {
            Logger.getLogger(FilmDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return result;
    }
    
//    public static void main(String[] args) {
//        Connection conn = DBConnection.getConnection();
//        ArrayList<Film> listFilm = new ArrayList<>();
//        FilmDAO filmDAO = new FilmDAO();
//        listFilm = filmDAO.getListFilm(conn);
//        
//        System.out.println(listFilm.size());
//    }
}
