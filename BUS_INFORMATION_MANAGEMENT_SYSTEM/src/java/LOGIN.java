/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ahnaf
 */
public class LOGIN extends HttpServlet {

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
            
            
            
            String name = request.getParameter("userName");
            String pass = request.getParameter("passWord");
            //String email = request.getParameter("email");
            int flag=0;
            
            DBConnection db = new DBConnection();
            
            Connection conn = db.getConnection();
            //int j = Integer.parseInt(bnum);
            //System.out.print("\n[Performing INSERT] ... ");
            try{
            
            String query = "select pnum from passenger where pnum='"+name+"' ";
            Statement st = conn.createStatement();
            //st = connect.createStatement();
            ResultSet result ;
            result = st.executeQuery(query);
            
            while(result.next())
            {
                String pnum = result.getString("pnum");
                //out.println(name+"\n");
                //out.println(pnum+"\n");
                
                if(pnum.equals(name))
                {
                    flag=1;
                    break;
                }
                
            }
            if(flag==1)
            {
                out.println("Login Successfull ! ");
            }
            else
                out.println("Wrong username or Password ! ");
            //System.out.println("Query is successful");
           
            
        }catch(SQLException e){
            System.out.println("Wrong Username or Password");
            out.println("Wrong Username or Password");
            e.printStackTrace();
        }
            
            
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet LOGIN</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LOGIN at " + request.getContextPath() + "</h1>");
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
