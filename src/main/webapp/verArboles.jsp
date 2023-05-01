<%-- 
    Document   : verArboles
    Created on : 25/04/2023, 6:42:05 p. m.
    Author     : WORKING
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
	<title>Mostrar información de la base de datos</title>
</head>
<body>
    <%
        Statement s;
        Connection c; 
        PreparedStatement ps;
        ResultSet rs;
        
        %>
        <div>
            <form action="verArboles.jsp">
            <input type="search" name="busqueda">
            <input type="submit" value="Buscar">
            
        </form>
         
        </div>
        <br>
        <form action="index.jsp">
            <input type="submit" value="Agregar otro arbol">
        </form>
        
    
    <br>
	<table>
            
                            <tr>
                                <th>Nombre<hr></th>
                                <th>Nombre Cientifico<hr></th>
                                <th>Es frutal?<hr></th>
                                <th></th>
                            </tr>
		
		<%
			try {
				String busqueda = request.getParameter("busqueda");
				Class.forName("com.mysql.jdbc.Driver");
                                c = DriverManager.getConnection ("jdbc:mysql://localhost/bd_proyecto","root", "");
				if (busqueda == null){
				s = c.createStatement();
                                rs = s.executeQuery ("select * from arboltabla");
				
				while (rs.next()) {

					out.println("<tr>");
					out.println("<td>" + rs.getString(1) + "</td>");
					out.println("<td>" + rs.getString(2) + "</td>");
					out.println("<td>" + rs.getString(3) + "</td>");
                                        out.println("<td>" + "<form action=pedidoSemillas.jsp method=post> <input type=hidden name=ver value="+rs.getString(1)+"> <input type=submit value=Ver detalles> </form>" + "</td>");
					out.println("</tr>");
				}
                            }else if (busqueda != null){
                            ps=c.prepareStatement("select * from arboltabla where nombre like '%"+busqueda+"%'or nombreCientifico like '%"+busqueda+"%'");
                            rs = ps.executeQuery();
                          
                            while (rs.next()) {

					out.println("<tr>");
					out.println("<td>" + rs.getString(1) + "</td>");
					out.println("<td>" + rs.getString(2) + "</td>");
					out.println("<td>" + rs.getString(3) + "</td>");
                                        out.println("<td>" + "<form action=pedidoSemillas.jsp method=post> <input type=hidden name=ver value="+rs.getString(1)+"> <input type=submit value=Ver detalles> </form>" + "</td>");
					out.println("</tr>");
				}
                                
                             
                            }
				c.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
                        
		%>
	</table>
                
</body>
</html>

