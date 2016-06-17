<%-- 
    Document   : newjsp
    Created on : 17/06/2016, 02:01:41 PM
    Author     : Jorge
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" type="image/png" href="eco.png" />
        <link rel="stylesheet" href="generalStyle.css">
        <title>Ecological NetWork</title>
    </head>
    <body>
        <img src="eco.png" alt="EcoNet">
        <%@include file="Header.jsp" %>
        <div>
            <a href="index.jsp">Inicio</a>
            <a href="">Quienes Somos</a>
            <a href="ContactUsPage.jsp">Contactenos</a>
        </div>
        <a href="SignInPage.jsp"><p>Crear Cuenta</p></a>
        <a href="LogInPage.jsp"><p>Iniciar Sesion</p></a>
        <%@include file="Footer.jsp" %>
    </body>
</html>
