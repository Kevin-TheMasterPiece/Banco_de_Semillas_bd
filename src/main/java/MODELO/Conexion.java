/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package MODELO;



/**
 *
 * @author WORKING
 */
import java.sql.*;
public class Conexion {
    Connection conexion;
   
    public Connection conectar (){
       
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection ("jdbc:mysql://localhost/bd_proyecto","root", "");
            
        } catch (Exception e) {
        }
        return conexion;
    }
    
}
