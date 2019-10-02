<%-- 
    Document   : ingresar
    Created on : 02/10/2019, 8:35:25
    Author     : Santiago
--%>

<%@page import="java.util.Arrays"%>
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
                String apellidos = request.getParameter("apellidos");
                String[]apell=apellidos.split(" ");
                String ap1= apell[0];
                String ap12= apell[1];
                Persona persona=new Persona();
                persona.setCedula(request.getParameter("ci"));
                persona.setPrimerApellido(ap1);
                persona.setSegundoApellido(ap12);
                
                persona.setPrimerNombre(request.getParameter("nombres"));
                persona.setDireccion(request.getParameter("direccion"));
                persona.setEmail(request.getParameter("email"));
               
                Controlador.listado.add(persona);
                out.print("<h1>DATO INGRESADO</h1>");
                out.print("<br/><a href='index.jsp'>Retornar al formulario</a>");
                
                
            }catch(NumberFormatException ex){
                out.print("<h1>FORMATO INCORRECTO</h1>");
                out.print("<br/><a href='index.jsp'>Retornar al formulario</a>");
                
            }catch(Exception e){
                out.print("<h1>"+e.getMessage()+"</h1>");
                out.print("<br/><a href='index.jsp'>Retornar al formulario</a>");
                
            }
            %>
            
            
            
            
            
            
    </body>
</html>
