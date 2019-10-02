<%-- 
    Document   : index
    Created on : 02/10/2019, 8:28:17
    Author     : Santiago
--%>

<%@page import="ec.gob.agentesdecontrol.controlador.Controlador"%>
<%@page import="ec.gob.agentesdecontrol.modelo.Persona"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>registro perrsona</title>
    </head>
    <body>
        <h1 style="text-align: center" >REGISTRO DE PERSONAL DE LOS AGENTES DE CONTROL</h1>
        <table border="0">
            <tr>
            <h2>INGRESO DE DATOS DE UN AGENTE</h2>
        </tr>
    </table>
    <form action="ingresar.jsp" method="POST">
        <center>  <table border="1">
            <tr>
                <td>INGRESE CEDULA:  </td>
                <td><input type="text" name="ci"/></td>
            </tr>
            <tr>
                <td>INGRESE NOMBRES:  </td>
                <td><input type="text" name="nombres"/></td>
            </tr>
             <tr>
                <td>INGRESE APELLIDOS:   </td>
                <td><input type="text" name="apellidos"/></td>
            </tr>
            <tr>
                <td>INGRESE DIRECCION:   </td>
                <td><input type="text" name="direccion"/></td>
            </tr>
            <tr>
                <td>INGRESE EMAIL:   </td>
                <td><input type="email" name="email"/></td>
            </tr>
            
            <tr>
                <td></td>
                <td> <input type="submit" value="GUARDAR DATOS"/></td>
                <td> <input type="button" value="MOSTRAR DATOS INGRESADOS" onclick="mostrarDatos()" /></td>
           <td> <input type="button" value="SEPARAR NOMBRES" onclick="separar()" /></td>
           
            </tr>
            
        </table>
        
        </center>
        <br>
        <br>
        <<table border ="1">
            <thead>
                <tr>
                    <th>CEDULA</th>
                    <th>NOMBRES</th>
                    <th>APELLIDO PATERNO</th>
                    <th>APELLIDO MATERNO</th>
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
                    <td><% out.print(elemento.getPrimerNombre()); %> </td>
                    <td><% out.print(elemento.getPrimerApellido()); %> </td>
                    <td><% out.print(elemento.getSegundoApellido()); %> </td>
                   
                    <td><% out.print(elemento.getDireccion()); %> </td>
                    <td><% out.print(elemento.getEmail()); %> </td>
                    
                </tr>
                <% }
                %>
            </tbody>

        
        
        

    </form>
        
        
        <script type="text/javascript">
            function mostrarDatos(){
                location.href="mostrar.jsp"
            }
        </script>
        <script type="text/javascript">
            function separar(){
               location.href="separar.jsp"
            }
        </script>
        

</body>
</html>
