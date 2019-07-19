/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import ErrorCorrection.AvailableData;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ahnaf
 */
public class Available extends HttpServlet {

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
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Available</title>");
            out.println("</head>");
            out.println("<body>");

            String from = request.getParameter("from");
            String to = request.getParameter("to");
            String journeyDate = request.getParameter("journeyDate");
            String departureTime = request.getParameter("departureTime");

            //String email = request.getParameter("email");
            DBConnection db = new DBConnection();

            Connection conn = db.getConnection();

            ArrayList<AvailableData> std = new ArrayList<AvailableData>();
            ResultSet result = null;
            try {

                String query = "Select bus.bnum , bus.btype , bus.total_seats , ticket.fare from bus inner join ticket on bus.bnum=ticket.bnum where bus.bnum in (select bnum from time_slot where journey_date= '" + journeyDate + "' and departure_time='" + departureTime + "' and bnum in (select bnum from route where starting_point='" + from + "' and destination='" + to + "'))";
                Statement st = conn.createStatement();
                //st = connect.createStatement();
                
                result = st.executeQuery(query);

                while (result.next()) {
                  
                    int bnum = result.getInt(1);                    
                    String btype = result.getString(2);
                    int total_seats =  result.getInt(3) ;
                    int fare = result.getInt(4) ;
                    
                    std.add(new AvailableData(bnum , btype , total_seats , fare ));  

                }

            } catch (SQLException e) {

                e.printStackTrace();
            }
            out.println(result);
          
            request.setAttribute("data", std);

           RequestDispatcher rd = request.getRequestDispatcher("ShowAvailable.jsp");
           rd.forward(request, response);

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
