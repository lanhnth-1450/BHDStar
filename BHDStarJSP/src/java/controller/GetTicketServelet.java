/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import DAO.TicketDAO;
import control.DBConnection;
import dao2.ScheduleDAO;
import dao2.SeatDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Client;
import model.Order;
import model.Schedule;
import model.Seat;
import model.Ticket;

/**
 *
 * @author Lanh
 */
@WebServlet(name = "GetTicketServelet", urlPatterns = {"/GetTicketServelet"})
public class GetTicketServelet extends HttpServlet {

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
            out.println("<title>Servlet GetTicketServelet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet GetTicketServelet at " + request.getContextPath() + "</h1>");
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
        HttpSession session = request.getSession();
        Connection con = DBConnection.getConnection();

        String listSeat = request.getParameter("prime_seat");
        String seated[] = listSeat.split(",");
        int lseat[] = null;
        for (int i = 0; i < seated.length; i++) {
            lseat[i] = Integer.parseInt(seated[i]);
        }

        String priceSchedule = request.getParameter("price");
        int subtotal = Integer.parseInt(request.getParameter("subtotal"));
        int price = Integer.parseInt(priceSchedule);

        ScheduleDAO scheduleDAO = new ScheduleDAO();
        Schedule schedule = scheduleDAO.getSchedule(con, 2);

        Client client = (Client) session.getAttribute("user");
        
        Date today = new Date(System.currentTimeMillis());
        Order order = new Order(9, today, 1, client, subtotal);

        for (int i = 0; i <= lseat.length; i++) {
            SeatDAO seatDAO = new SeatDAO();
            Seat seat = new Seat();
            seat = seatDAO.getSeat(con, lseat[i]);

            Ticket ticket = new Ticket(price, schedule, order, seat);
            TicketDAO ticketDAO = new TicketDAO();
            ticketDAO.addTicket(con, ticket);
        }


//        PrintWriter outPrintWriter = response.getWriter();
//        Gson g = new GsonBuilder().disableHtmlEscaping().create();
//        g.toJson("", outPrintWriter);
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
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
