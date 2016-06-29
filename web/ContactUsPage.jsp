<%-- 
    Document   : ContactUsPage
    Created on : 17/06/2016, 02:51:55 PM
    Author     : Justin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" type="image/png" href="eco.png" />
        <link rel="stylesheet" href="generalStyle.css">
        <title>Ecological NetWork - Contactenos</title>
    </head>
    <body>
        <%@include file="Header.jsp" %>
        <%@include file="Aside.jsp" %>
        <ul>
            <h3>Nuestro correo electronico: ecologicalNetWork@eco.com</h3>
            <form method="get" action="userController.jsp">
                <label>Nombre Completo </label>
                <input type="text" id="name" name="name" pattern="^[A-Za-z]+" required> <br>
                <label>Correo electrónico</label>
                <input type="email" id="email_addr" name="email_addr" placeholder="nombre@correo.com" required> <br>
                <textarea type="text" id="name" name="textA" rows="20" cols="100" required></textarea>
                <input type="submit" name="option" value="Hacer consulta">

            </form>
        </ul>
        <%@include file="Footer.jsp" %>
    </body>
</html>
