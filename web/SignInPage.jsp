<%-- 
    Document   : SignInPage
    Created on : 16/06/2016, 07:13:03 PM
    Author     : andre
--%>

<html lang="en-US">
    <head>
        <title>Ecological Network - Crear cuenta</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" type="image/png" href="eco.png" />
        <link rel="stylesheet" href="generalStyle.css">
    </head>
    <body>
         <img src="eco.png" alt="EcoNet">
        <%@include file="Header.jsp" %>
        <section>
            <form action ="action_page.php">
                <label>Nombre: </label>
                <input list="text" id="name" name="name" pattern="^[A-Za-z]+" placeholder="Andrey" required>
                <datalist id="text">
                    <option value="Juan">
                    <option value="Pedro">
                    <option value="Luis">
                    <option value="Karla">
                </datalist>
                <label>Primer Apellido</label>
                <input type="text" id="lastName" name="lastName" placeholder="Gonzalez" required>

                <label>Contraseña</label>
                <input type="password" id="pass" name="pass" required>

                <label>Repetir Contraseña</label>
                <input type="password" id="password_repeat" name="password_repeat" required oninput="check1(this)">

                <label>Correo electronico</label>
                <input type="email" id="email_addr" name="email_addr" placeholder="nombre@correo.com" required>

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
             <%@include file="Footer.jsp" %>
    </body>
</html>
