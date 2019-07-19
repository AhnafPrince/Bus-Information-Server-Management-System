/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import ErrorCorrection.AvailableData;
import ErrorCorrection.ConnectionInfoData;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ahnaf
 */
@WebServlet(urlPatterns = {"/CounterInfo"})
public class CounterInfo extends HttpServlet {

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
            
        
            String location = request.getParameter("location");
            

            //String email = request.getParameter("email");
            DBConnection db = new DBConnection();

            Connection conn = db.getConnection();

            ArrayList<ConnectionInfoData> std = new ArrayList<ConnectionInfoData>();
            ResultSet result = null;
            try {

                String query = "select enum,location,pnum from counter where location='Dhaka';";
                        
                Statement st = conn.createStatement();
                //st = connect.createStatement();
                
                result = st.executeQuery(query);

                while (result.next()) {
                  
                    int emnum = result.getInt(1);                    
                    String locationd = result.getString(2);
                    String pnum =  result.getString(3) ;
                    
                    
                    std.add(new ConnectionInfoData(emnum ,locationd , pnum  ));  
                    
                }

            } catch (SQLException e) {

                e.printStackTrace();
            }
            out.println(result);
          
            request.setAttribute("data", std);

          RequestDispatcher rd = request.getRequestDispatcher("ShowCounterInfo.jsp");
           rd.forward(request, response);    
            
            
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet CounterInfo</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CounterInfo at " + request.getContextPath() + "</h1>");
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
