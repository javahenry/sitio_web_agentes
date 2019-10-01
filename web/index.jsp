<%-- 
    Document   : index
    Created on : 01/10/2019, 8:46:20
    Author     : Santiago
--%>

<%@page import="ec.gob.agentesmetropolitanos.modelo.Operaciones"%>
<%@page import="ec.gob.agentesmetropolitanos.modelo.Operaciones.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Factorial </title>
    </head>
    <body>
        <h1 style="text-align:center">OPERACIONES MATEMATICAS</h1>
        <form method="POST">
            <label>Ingresa un numero</label>
            <input type="number" name="dim" value="" />
     
            
            <input type="submit" value="Asignar Valores" name="numero"/>
        </form>
       
      
        <%
            if(request.getParameter("numero")!=null){
            Integer dim = Integer.parseInt(request.getParameter("dim"));
            Operaciones.dimensionar(dim);
            Operaciones.llenarArreglo();
            out.print(Operaciones.valores());
            
            }
        %>

    </body>
</html>
