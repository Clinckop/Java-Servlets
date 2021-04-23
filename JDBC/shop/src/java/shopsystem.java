/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Lenovo
 */
@WebServlet(urlPatterns = {"/shopsystem"})
public class shopsystem extends HttpServlet {

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
            Class.forName("com.mysql.jdbc.Driver"); 
            Connection con=DriverManager.getConnection( "jdbc:mysql://localhost:3306/jdbc","root",""); 
            
            //here sonoo is database name, root is username and password  
            Statement stmt=con.createStatement();  
            if(con!=null)
            {
//                String carname = request.getParameter("cname");
//                String carmodel = request.getParameter("cmodel");
//                out.println("carname ="+carname+" , carmodel ="+carmodel );
//                String query="Insert into cars(cname, cmodel) values (?,?)";
//                PreparedStatement pstmt=con.prepareStatement(query);
//                pstmt.setString(1,carname);
//                pstmt.setString(2,carmodel);
//                pstmt.executeUpdate();
                out.println("Inside if statement");
                ResultSet rs=stmt.executeQuery("select * from cars");  
            //System.out.println(rs);
                while(rs.next()) 
                {
                    String name = rs.getString(1);   //store the value in a separate variable
                    String model = rs.getString(2);   //store the value in a separate variable
                    out.println("<br/>"+name+"  "+model);
                }
                con.close();
            }
            else
            {
                out.println("Inside else");
            }
            
            
        }
        catch (Exception e) {
            // Could not find the database driver
            System.out.println("Exception: "+e.getMessage());
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
