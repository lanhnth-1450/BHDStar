/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

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
    
    public ArrayList<Film> getListFilm(Connection con) {
        ArrayList<Film> listFilm = new ArrayList<Film>();
        try {
            String sql = "SELECT * FROM film";
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
    public static void main(String[] args) {
        Connection conn = DBConnection.getConnection();
        ArrayList<Film> listFilm = new ArrayList<>();
        FilmDAO filmDAO = new FilmDAO();
        listFilm = filmDAO.getListFilm(conn);
        
        System.out.println(listFilm.size());
    }
}
