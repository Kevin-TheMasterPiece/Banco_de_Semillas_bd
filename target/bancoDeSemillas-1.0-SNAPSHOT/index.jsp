<%-- 
    Document   : index
    Created on : 24/04/2023, 9:17:09 p. m.
    Author     : WORKING
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ingreso Arboles</title>
</head>
<body>
    
    <form class="formc" action="Controlador" method="POST">
        <h2>Información del arbol</h2>

        <label>Nombre:</label>
        <input type="text" name="nombre" required><br>

        <label>Nombre cientifico:</label>
        <input type="text"  name="nombreCientifico" required><br>

        <label >Es o no frutal:</label>
        <select name="frutal" class="select">
            <option disabled selected>Eliga una opcion</option>
            <option value="Si es frutal">Si es frutal</option>
            <option value="No es frutal">No es frutal</option>
            
        </select><br>

        <label>Origen:</label>
        <input type="text"  name="origen" required><br>

        <label>Informacion general:</label>
        <input type="text"  name="infog" required><br>
        
        <label>Cuidados:</label>
        <input type="text"  name="cuidados" required><br>

        <br>
        <input type="submit" name="accion" value="guardar">
        <br>
        
      </form>
    <form action="verArboles.jsp">
        <input type="submit"  name="accion" value="Ver registro">
    </form>
    
      
</body>
</html>