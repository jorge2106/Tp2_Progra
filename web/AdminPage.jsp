<%-- 
    Document   : AdminPage
    Created on : 01/07/2016, 08:11:07 PM
    Author     : Justin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" type="image/png" href="eco.png" />
        <link rel="stylesheet" href="generalStyle.css">
        <title>Ecological NetWork - Admin</title>
    </head>
    <body>
        <%@include file="Header.jsp" %>
        <aside>
            <nav>
                <ul>
                    <li><a href="AdminController.jsp?option=add"><h3>Agregar un producto</h3></a></li>
                    <li><a href="AdminController.jsp?option=update"><h3>Modificar un producto</h3></a></li>
                    <li><a href="AdminController.jsp?option=delete"><h3>Eliminar un producto</h3></a></li>
                </ul>
            </nav>
        </aside>
        <%@include file="Footer.jsp" %>
    </body>
</html>
