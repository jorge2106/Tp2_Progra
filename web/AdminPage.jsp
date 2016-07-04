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
        <%@include file="AdminHeader.jsp" %>
        <section id="admin">
            <h1>Seleccione una categoría</h1>
            <div>
                <a href="AdminProductsView.jsp?option=Home"><h2>Hogar</h2></a>
            </div>
            <div>
                <a href="AdminProductsView.jsp?option=Cloth"><h2>Ropa</h2></a>
            </div>
            <div>
                <a href="AdminProductsView.jsp?option=Personal"><h2>Uso Personal</h2></a>
            </div>
            <div>
                <a href="AdminProductsView.jsp?option=Plants"><h2>Árboles</h2></a>
            </div>
            <div>
                <a href="AdminProductsView.jsp?option=Food"><h2>Alimentos</h2></a>
            </div>
            <div>
                <a href="AdminProductsView.jsp?option=Organic Chemicals"><h2>Químicos Ecológicos</h2></a>
            </div>
            <div>
                <a href="AdminProductsView.jsp?option=Medicine"><h2>Medicina</h2></a>
            </div>
            <div>
                <a href="AdminProductsView.jsp?option=Essences"><h2>Esencias</h2></a>
            </div>
        </section>
        <%@include file="Footer.jsp" %>
    </body>
</html>
