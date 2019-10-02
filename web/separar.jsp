<%-- 
    Document   : separar
    Created on : 02/10/2019, 11:12:54
    Author     : Santiago
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
         String nom1=request.getParameter("nombres");
         out.print("<h1>"+nom1+"</h1>");
        %>
    </body>
</html>
