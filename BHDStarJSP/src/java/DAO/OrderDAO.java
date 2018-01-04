/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Order;

/**
 *
 * @author Lanh
 */
public class OrderDAO {
    public boolean addOrder(Connection con, Order order) {
        try {
            String sql = "INSERT INTO `order`(date, status, discount, grandtotal, client_id) VALUES(?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setDate(1, (Date) order.getDate());
            ps.setInt(2, order.getStatus());
            ps.setFloat(3, order.getDiscount());
            ps.setFloat(4, order.getGrandtotal());
            ps.setInt(5, order.getClient().getId());
            ps.executeUpdate();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }
}
