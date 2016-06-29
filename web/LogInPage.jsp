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
        <link rel="icon" type="image/png" href="eco.png" />
        <link rel="stylesheet" href="generalStyle.css">
        <title>Ecological Network - Iniciar Sesion</title>
    </head>
    <body>
        <%@include file="Header.jsp" %>
        <%@include file="Aside.jsp" %>
        <%@include file="Footer.jsp" %>
        <section>
            <form method="get" action="userController.jsp">
                <h1>Iniciar Sesion</h1>
                <label>Correo:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                <input type="text" name="email" > <br><br>
                <label>Contraseña:</label>
                <input type="password" name="password"><br><br>
                <input type="submit" name="option" value="Iniciar">
            </form>
        </section>
    </body>
</html>
