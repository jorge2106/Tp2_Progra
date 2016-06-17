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
        <title>Ecological NetWork</title>
    </head>
    <body>
        <header>Ecological NetWork</header>
        <div>
            <a href="principal.jsp">Inicio</a>
            <a href="">Quienes Somos</a>
            <a href="">Contactenos</a>
        </div>
        <a href="SignInPage.jsp"><p>Crear Cuenta</p></a>
        <a href="LogInPage.jsp"><p>Iniciar Sesion</p></a>

         <%@include file="Footage.jsp" %>
    </body>
</html>
