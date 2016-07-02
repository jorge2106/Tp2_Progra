<%-- 
    Document   : AdminProductView
    Created on : 02/07/2016, 10:55:11 AM
    Author     : Justin
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
        <%@include file="AdminHeader.jsp" %>
        <jsp:useBean id="product" scope="session" type="beans.Product"/>
        <section>
            <div id="adminFullProduct">
                <h3><%=product.getName()%></h3>
                <img src="<%=product.getUrlPict()%>" alt="Product">
                <p><%=product.getLongDescription()%></p>
                <h2>Precio: <%=product.getPrice()%></h2>
                <form method="get" action="AdminOperationsController.jsp">
                    <input type="submit" name="update" value="Modificar"/>
                    <input type="submit" name="delete" value="Eliminar"/>
                </form>
            </div>
        </section>
        <%@include file="Footer.jsp"%>
    </body>
</html>
