<%-- 
    Document   : pedidoSemillas
    Created on : 26/04/2023, 8:12:44 p. m.
    Author     : WORKING
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tu arbol</title>
    </head>
    <body>
        <%
        Statement s;
        Connection c; 
        PreparedStatement ps;
        ResultSet rs;
        
        %>
        
        <%
            
            
            String ver = request.getParameter("ver");
            try {
                    Class.forName("com.mysql.jdbc.Driver");
                    c = DriverManager.getConnection ("jdbc:mysql://localhost/bd_proyecto","root", "");
                    ps=c.prepareStatement("select * from arboltabla where nombre like '%"+ver+"%'");
                    rs = ps.executeQuery();

                    while (rs.next()) {

                                out.println("<h1>Arbol: ''" + rs.getString(1) + "''<h2>Nombre cientifico: " + rs.getString(2) + "</h2></h1><br>");
                                out.println("<p><h2>Es frutal? </h2>" + rs.getString(3) + "</p>");
                                out.println("<p><h2>Origen: </h2>" + rs.getString(4) + "</p>");
                                out.println("<h2>Informacion general: </h2><p>" + rs.getString(5) + "</p>");
                                out.println("<h2>Cuidados que debes tener: </h2><p>" + rs.getString(6) + "</p>");
                               
                        }
                } catch (Exception e) {
                }
            %>
            
    </body>
</html>
