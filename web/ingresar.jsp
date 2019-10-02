<%-- 
    Document   : ingresar
    Created on : 02/10/2019, 8:35:25
    Author     : Santiago
--%>

<%@page import="ec.gob.agentesdecontrol.controlador.Controlador"%>
<%@page import="ec.gob.agentesdecontrol.modelo.Persona"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            try{
                Persona persona=new Persona();
                persona.setCedula(request.getParameter("ci"));
                persona.setPrimerApellido(request.getParameter("apellidos"));
                persona.setPrimerNombre(request.getParameter("nombres"));
                persona.setDireccion(request.getParameter("direccion"));
                persona.setEmail(request.getParameter("email"));
               
                Controlador.listado.add(persona);
                out.print("<h1>DATO INGRESADO</h1>");
                out.print("<br/><a href='index.jsp'>Retornar al formulario</a>");
                
                
            }catch(NumberFormatException ex){
                out.print("<h1>FORMATO INCORRECTO</h1>");
                out.print("<br/><a href='index.jsp'>Retornar al formulario</a>");
                
            }
            %>
    </body>
</html>
