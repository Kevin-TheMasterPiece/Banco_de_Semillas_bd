/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package CONTROLADOR;

import MODELO.Conexion;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author WORKING
 */
@WebServlet(name = "Controlador", urlPatterns = {"/Controlador"})
public class Controlador extends HttpServlet {
        
    
    

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
        
        try {
            String nombre = request.getParameter("nombre");
            String nombreCientifico = request.getParameter("nombreCientifico");
            String frutal = request.getParameter("frutal");
            String origen = request.getParameter("origen");
            String infog = request.getParameter("infog");
            String cuidados = request.getParameter("cuidados");
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection c = DriverManager.getConnection ("jdbc:mysql://localhost/bd_proyecto","root", "");
            PreparedStatement ps = c.prepareStatement("insert into arboltabla (nombre, nombreCientifico, frutal, origen, infog, cuidados) values (?,?,?,?,?,?)");
            
            ps.setString(1, nombre);
            ps.setString(2, nombreCientifico);
            ps.setString(3, frutal);
            ps.setString(4, origen);
            ps.setString(5, infog);
            ps.setString(6, cuidados);
            ps.executeUpdate();
            
            ps.close();
            c.close();
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        
        request.getRequestDispatcher( "index.jsp").forward(request, response);
        
       
        
    }

    

}
