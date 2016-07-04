<%-- 
    Document   : SignInPage
    Created on : 16/06/2016, 07:13:03 PM
    Author     : andre
--%>
<%@page import="ManagerDataBase.MySQLManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" type="image/png" href="eco.png" />
        <link rel="stylesheet" href="generalStyle.css">
        <title>Ecological Network - Crear cuenta</title>
    </head>
    <body>
        <%@include file="Header.jsp" %>
        <%@include file="sessionLogedController.jsp" %>

        <section id="logSignIn">
                <h1> Crear cuenta</h1>
                <h2> Ingrese sus datos personales </h2>
                <form method="get" action="userController.jsp">
                    <label>Nombre </label>
                    <input type="text" id="name" name="name" pattern="^[A-Za-z]+" required> <br>

                    <label>Primer Apellido</label>
                    <input type="text" id="lastName" name="lastName" required> <br>

                    <label>Cédula</label>
                    <input type="text" id="identityCard" name="identityCard" required> <br>

                    <label>Teléfono</label>
                    <input type="text" id="phoneNumber" name="phoneNumber" required> <br>

                    <label>Correo electrónico</label>
                    <input type="email" id="email_addr" name="email_addr" placeholder="EmailAddress@gmail.com" required> <br>

                    <label>Contraseña</label>
                    <input type="password" id="pass" name="pass" required><br>

                    <input type="submit" name="option" value="Crear"> 
                </form>
        </section>
        <%@include file="Footer.jsp" %>
    </body>
</html>
