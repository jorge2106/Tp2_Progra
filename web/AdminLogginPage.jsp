<%-- 
    Document   : AdminLogginPage
    Created on : 04/07/2016, 05:30:16 PM
    Author     : Justin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" type="image/png" href="img/eco.png"/>
        <link rel="stylesheet" href="generalStyle.css">
        <title>Ecological NetWork - Admin LogIn</title>
    </head>
    <body>
        <section id="adminLoggin">
            <div>
                <form method="post" action="AdminLogginController.jsp">
                    <h3>Nombre de usuario:</h3>
                    <input type="email" name="email" placeholder="EmailAddress@gmail.com" required/>
                    <h3>Contraseña:</h3>
                    <input type="password" name="pass" required/>
                    <input type="submit" name="acept" value="Iniciar Sesión"/>
                </form>
            </div>
        </section>
        <%@include file="Footer.jsp" %>
    </body>
        
</html>
