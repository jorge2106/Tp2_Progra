<%-- 
    Document   : LogInPage
    Created on : 17/06/2016, 12:55:57 PM
    Author     : Justin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ecological Network - Iniciar Sesion</title>
    </head>
    <body>
        <h1>Iniciar Sesion</h1>
        <label>Correo:</label>
        <input type="text" name="eMail" pattern="^[A-Za-z][\\w+]*@[A-Za-z0-9]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$"> <br><br>
        <label>Contraseña:</label>
        <input type="text" name="password"><br><br>
    </body>
</html>
