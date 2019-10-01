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
        <title>JSP Page</title>
    </head>
    <body>
        <h1 style="text-align:center">EJERCICIOS ARITMETICOS</h1>
        <form method="POST">
            <label>Ingresa un numero</label>
            <input type="number" name="dim" value="" />
     
            
            <input type="submit" value="Asignar Valores" name="numero"/>
        </form>
        <%--
        Es el numero 5 > 6 = <%= 5>6 %>
        <br>
        La suma de 5 + 7 = <%= 5+7 %>
           <br>
        Poner en mayusculas agentes: <%= new String("agentes").toUpperCase() %>
        --%>
        
        <%--
            
            if(request.getParameter("factorial")!=null){
            Integer var = Integer.parseInt(request.getParameter("n1"));
            out.println(Operaciones.factorial(var) );
            }
        --%>
      
        <%
            if(request.getParameter("numero")!=null){
            Integer dim = Integer.parseInt(request.getParameter("dim"));
            Operaciones.dimensionar(dim);
            Operaciones.llenarArreglo();
            out.print(Operaciones.valores());
            
            }
        %>
        <address>
            <a href="registro.jsp">Registrar persona</a>
        </address>
    </body>
</html>
