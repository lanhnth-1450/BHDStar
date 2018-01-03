/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Lanh
 */
public class DBConnection {
    static Connection con;
    static String url;
    static String username = "root";
    static String password = "lanh";
    
    public static Connection getConnection() {
        if (con != null) {
            return con;
        }
        try {
            String url = "jdbc:mysql://localhost:3306/bhdstar";
            Class.forName("com.mysql.jdbc.Driver");
            try {
                con = DriverManager.getConnection(url, username, password);
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        } catch (ClassNotFoundException e) {
            System.out.println(e);
        }
        
        return con;
    }
    
}
