<%-- 
    Document   : SignInPage
    Created on : 16/06/2016, 07:13:03 PM
    Author     : andre
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Ecological Network - Crear cuenta</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
            <form action ="action_page.php">
                <label>Nombre </label>
                <input list="text" id="name" name="name" pattern="^[A-Za-z]+" placeholder="Andrey" required> <br><br>
                <datalist id="text">
                    <option value="Juan">
                    <option value="Pedro">
                    <option value="Luis">
                    <option value="Karla">
                </datalist>
                <label>Primer Apellido</label>
                <input type="text" id="lastName" name="lastName" placeholder="Gonzalez" required> <br><br>

                <label>Contraseña</label>
                <input type="password" id="pass" name="pass" required><br><br>

                <label>Repetir Contraseña</label>
                <input type="password" id="password_repeat" name="password_repeat" required oninput="check1(this)"> <br><br>

                <label>Correo electronico</label>
                <input type="email" id="email_addr" name="email_addr" placeholder="nombre@correo.com" required> <br><br>

                <input type="submit">
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
