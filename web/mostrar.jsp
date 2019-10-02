<%-- 
    Document   : mostrar
    Created on : 02/10/2019, 8:54:45
    Author     : Santiago
--%>

<%@page import="ec.gob.agentesdecontrol.modelo.Persona"%>
<%@page import="ec.gob.agentesdecontrol.controlador.Controlador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>mostar datos</title>
    </head>
    <body>
        <<table border ="1">
            <thead>
                <tr>
                    <th>CEDULA</th>
                    <th>NOMBRES</th>
                    <th>APELLIDOS</th>
                    <th>DIRECCION</th>
                    <th>CORREO</th>

                </tr>
            </thead>
            <tbody>
                <%
                    for (Persona elemento : Controlador.listado) {
                %>
                <tr>
                    <td><% out.print(elemento.getCedula()); %> </td>
                    <td><% out.print(elemento.getPrimerNombre()+ " "+elemento.getSegundoNombre()); %> </td>
                    <td><% out.print(elemento.getPrimerApellido()); %> </td>
                    <td><% out.print(elemento.getDireccion()); %> </td>
                    <td><% out.print(elemento.getEmail()); %> </td>
                    
                </tr>
                <% }
                %>
            </tbody>

        </table>
            <address><a href="index.jsp">Volver al formulario</a></address>

    </body>
</html>
