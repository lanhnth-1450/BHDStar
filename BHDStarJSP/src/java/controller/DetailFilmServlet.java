/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao2.FilmDAO;
import dao2.ScheduleDAO;
import control.DBConnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Film;
import model.Schedule;

/**
 *
 * @author Lanh
 */
public class DetailFilmServlet extends HttpServlet {

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
            out.println("<title>Servlet DetailFilmServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet DetailFilmServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
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
            Connection con = DBConnection.getConnection();
            
            int film_id = Integer.parseInt(request.getParameter("film_id"));
            
            FilmDAO filmDAO = new FilmDAO();
            Film film = filmDAO.getFilm(con, film_id);
            
            ScheduleDAO scheduleDAO = new ScheduleDAO();

            ArrayList<Schedule> listSchedule_1 = new ArrayList<Schedule>();
            ArrayList<Schedule> listSchedule_2 = new ArrayList<Schedule>();
            ArrayList<Schedule> listSchedule_3 = new ArrayList<Schedule>();
            
            ArrayList<Date> listDate = getListDate();
            SimpleDateFormat formatterDate = new SimpleDateFormat("yyyy-MM-dd");
            
            Date date1 = listDate.get(0);
            listSchedule_1 = scheduleDAO.getListScheduleByFilm(con, film, date1);
            
            Date date2 = listDate.get(1);
            listSchedule_2 = scheduleDAO.getListScheduleByFilm(con, film, date2);
            
            Date date3 = listDate.get(2);
            listSchedule_3 = scheduleDAO.getListScheduleByFilm(con, film, date3);
            
            System.out.println(film.getId());
            request.setAttribute("film", film);
            request.setAttribute("listDate", listDate);
            request.setAttribute("listSchedule_1", listSchedule_1);
            request.setAttribute("listSchedule_2", listSchedule_2);
            request.setAttribute("listSchedule_3", listSchedule_3);
            
            RequestDispatcher dispatcher = request.getRequestDispatcher("chitietphim.jsp?film_id="+film.getId());
            dispatcher.forward(request, response);
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

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    
    
    public ArrayList<Date> getListDate() {
        Date today = new Date(System.currentTimeMillis());
        ArrayList<Date> list = new ArrayList<>();
        Calendar c = Calendar.getInstance();
        c.setTime(today);
        list.add(today);
        for (int i = 1; i < 7; i++) {
            c.add(Calendar.DATE, 1);
            Date currentDatePlusOne = new Date(c.getTimeInMillis());
            list.add(currentDatePlusOne);
            SimpleDateFormat formatterDate = new SimpleDateFormat("yyyy-MM-dd");
            System.out.println(formatterDate.format(currentDatePlusOne));
        }
        System.out.println(list);
        return list;
    }
    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
