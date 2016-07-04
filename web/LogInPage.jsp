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
        <link rel="stylesheet" href="generalStyle.css">
        <link rel="icon" type="image/png" href="eco.png" />
        <title>Ecological Network - Iniciar Sesion</title>
    </head>
    <body>
        <%@include file="Header.jsp" %>
        <%@include file="sessionLogedController.jsp" %>
        <section id="logSignIn">
            <div>
            <h1>Iniciar Sesion</h1>
            <form method="get" action="userController.jsp">
                <label>Correo:</label>
                <input type="text" name="email" > <br>
                <label>Contraseña:</label>
                <input type="password" name="password"><br>
                <input type="submit" name="option" value="Iniciar">
            </form>
            </div>
        </section>
        <%@include file="Footer.jsp" %>
    </body>
</html>
