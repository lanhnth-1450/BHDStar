/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao2;

import com.mysql.jdbc.Connection;
import control.DBConnection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Client;

/**
 *
 * @author DaiPhongPC
 */
public class ClientDAO {

    Statement stmt = null;
    ResultSet rs = null;
    Connection conn;

    public Client checkLogin(String em, String pa) {
        Client c;
        String searchQuery
                = "select * from client where mail='"
                + em
                + "' AND password='"
                + pa
                + "'";
        try {
            //connect to DB 
            conn = (Connection) DBConnection.getConnection();
            stmt = conn.createStatement();
            rs = stmt.executeQuery(searchQuery);
            boolean more = rs.next();
            if (!more) {
                System.out.println("Sorry, you are not a registered user! Please sign up first");
                return null;
            } //if user exists set the isValid variable to true
            else if (more) {
                int id = rs.getInt("id");
                String username = rs.getString("username");
                String pass = rs.getString("password");
                String name = rs.getString("name");
                String add = rs.getString("address");
                String mail = rs.getString("mail");
                String phone = rs.getString("phone");
                c = new Client(id, username, pass, name, add, mail, phone);
                return c;
            }
        } catch (Exception ex) {
            System.out.println("Log In failed: An Exception has occurred! " + ex);
            return null;
        } //some exception handling
        return null;

    }
    public boolean singUp(Client c){
        conn=(Connection) DBConnection.getConnection();
        String query = "insert into client(username,password,name,address,mail,phone) \n"
                + "values (?,?,?,?,?,?);";
        try {
            PreparedStatement st = conn.prepareStatement(query);
            st.setString(1, c.getUsername());
            st.setString(2, c.getPassword());
            st.setString(3, c.getName());
            st.setString(4, c.getAddress());
            st.setString(5, c.getMail());
            st.setString(6, c.getPhone());
            st.executeUpdate();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(ClientDAO.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }
}
