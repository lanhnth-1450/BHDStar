/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import control.DBConnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Lanh
 */
@WebServlet(name = "SearchFilmServlet", urlPatterns = {"/SearchFilmServlet"})
public class SearchFilmServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SearchFilmServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet lala at " + request.getContextPath() + "</h1>");
            
//            <div class="result" style="display: none" id="resultSearchFilm">
//                                        <ul>
//                                            <li>
//                                                <a href="#">Siêu bão địa cầu Siêu bão địa cầu</a>
//                                                <a href="#">Siêu bão địa cầu</a>
//                                                <a href="#">Siêu bão địa cầu</a>
//                                                <a href="#">Siêu bão địa cầu</a>
//                                            </li>
//                                        </ul>
//                                    </div>
//            out.println("</body>");
            out.println("<div class=\"result\" style=\"display: none\" id=\"resultSearchFilm\">");
            out.println("<ul>");
            out.println("<li>");
            String nameFilm = request.getParameter("q");
            Statement st = null;
            ResultSet res = null;
            
            try {
                Connection con = DBConnection.getConnection();
                String sql = "SELECT name FROM film WHERE film.name like '"+nameFilm+"%'ORDER BY name";
                st = con.createStatement();
                res = st.executeQuery(sql);
                while(res.next()) {
                    out.println("<a href=\"#\">lalala1 res.getString(0);</a>");
                }
            } catch (SQLException ex) {
                out.println(ex.toString());
            }
            out.println("</ul>");
            out.println("</li>");
            out.println("</div>");
            out.println("</html>");
            
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String search = request.getParameter("search");
        response.setContentType("text/html");
        if (!((search.trim()).equals(""))) {
            String searchString = getSearchResult(search);
            response.getWriter().write(searchString);
        } else {
            response.getWriter().write("");
        }
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    
    public String getSearchResult(String search) {
        Connection conn = DBConnection.getConnection();
        Statement st = null;
        ResultSet res = null;
        String finalSearch = "";
        try {
            Class.forName("com.mysql.jdbc.Driver");
            st = conn.createStatement();
            String s = "SELECT name FROM film WHERE film.name like '"+search+"%'ORDER BY name";
//            SELECT name FROM film WHERE film.name like 'Coco' ORDER BY name
            res = st.executeQuery(s);
            while (res.next()) {
                String un = res.getString(1);
                finalSearch += un + "\n";
            }
            st.close();
            conn.close();
        } catch (Exception e) {
        }
        return finalSearch;
    }
    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
