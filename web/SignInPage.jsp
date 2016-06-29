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
        <title>Ecological Network - Crear cuenta</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" type="image/png" href="eco.png" />
        <link rel="stylesheet" href="generalStyle.css">
    </head>
    <body>
        <%@include file="Header.jsp" %>
        <%@include file="Aside.jsp" %>
        <%@include file="Footer.jsp" %>

        <section>
            <h1> Crear cuenta</h1>
            <h2> Ingrese sus datos personales </h2>
            <form method="get" action="userController.jsp">
                <label>Nombre </label>
                <input list="text" id="name" name="name" pattern="^[A-Za-z]+" required> <br><br>

                <label>Primer Apellido</label>
                <input type="text" id="lastName" name="lastName" required> <br><br>

                <label>Cédula</label>
                <input type="text" id="identityCard" name="identityCard" required> <br><br>

                <label>Telefono</label>
                <input type="text" id="phoneNumber" name="phoneNumber" required> <br><br>

                <label>Contraseña</label>
                <input type="password" id="pass" name="pass" required><br><br>

                <label>Repetir Contraseña</label>
                <input type="password" id="password_repeat" name="password_repeat" required oninput="check1(this)"> <br><br>

                <label>Correo electronico</label>
                <input type="email" id="email_addr" name="email_addr" placeholder="nombre@correo.com" required> <br><br>

                <input type="submit" name="option" value="Crear">
                <script>
                    function check(input) {
                        if (input.value !== document.getElementById('email.addr').value) {
                            input.setCustomValidity('The two email addresses must match.');
                        } else {
                            input.setCustomValidity('');
                        }
                    }
                </script> 
            </form>
        </section>
    </body>
</html>
