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
@WebServlet(urlPatterns = {"/sq1"})
public class sq1 extends HttpServlet {

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
            Connection con=DriverManager.getConnection( "jdbc:mysql://localhost:3306/shop","root",""); 
            
            //here sonoo is database name, root is username and password  
            Statement stmt=con.createStatement();  
            if(con!=null)
            {
                ResultSet rs=stmt.executeQuery("SELECT `product_id`, `product_name`, `product_description`, `supplier_name`, `list_price`, `min_price` FROM `product_info`");  
                System.out.println(rs);
                out.print("<html><body>");
                out.print("<table cellspacing='5'>");
                out.print("<tr>");
                
                while(rs.next()) 
                {
                    out.print("<td>");
                    out.println("</br>"+"product_id :- "+rs.getString("product_id")+"</br>"+"product_name :- "+rs.getString("product_name")+"</br>"+"product_description:- "+rs.getString("product_description")+"</br>"+"supplier_name:- "+rs.getString("supplier_name")+"</br>"+"list_price:- "+rs.getString("list_price")+"</br>"+"min_price:- "+rs.getString("min_price"));
                    out.print("</td>");
                }
                
                out.print("</tr>");
                out.print("</table>");
                out.print("</html></body>");
                con.close();
            }
            else
            {
                out.println("Connection not established.");
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
