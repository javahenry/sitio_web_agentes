<%-- 
    Document   : registro
    Created on : 01/10/2019, 11:36:06
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
        <h1>Registro de Personal</h1>
         <form method="POST" action="respuesta.jsp"> 
                <p>
                <label>Identidad</label>
                <input type="text" name="identidad" />
                </p>
                <p>
                <label>ingresa tu  primer nombre</label>
                <input type="text" name="pnombre"  />
                </p>
                <p>
                <label>ingresa tu Segundo nombre</label>
                <input type="text" name="snombre"  />
                </p>
                <p>
                <label>ingresa tu Primer Apellido</label>
                <input type="text" name="papellido"  />
                </p>
                <p>
                <label>ingresa tu Segundo Apellido</label>
                <input type="text" name="sapellido"  />
                </p>
                <p>
                <label>ingresa tu Fecha Nacimiento</label>
                <input type="date" name="fechan"  />
                </p>
                <p>
                    <label>Escoge tu sexo</label>
                    </p>
                <p>
                    <label>Masculino</label>
                    <input type="radio" name="sexo" value="Masculino" />
                    <label>Femenino</label>
                    <input type="radio" name="sexo" value="femenino" />
                    <label>otro</label>
                    <input type="radio" name="sexo" value="otro" />
               
                </p>
                <p>
                    <input type="submit" value="registro" name="registro"/>
                </p>
            </form>
    </body>
</html>
