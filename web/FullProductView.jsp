<%-- 
    Document   : fullProductView
    Created on : 30/06/2016, 03:10:54 PM
    Author     : Justin
--%>
<%@page import="ManagersXML.ProductsManager"%>
<%@page import="beans.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" type="image/png" href="img/eco.png" />
        <link rel="stylesheet" href="generalStyle.css">
        <title>Ecological NetWork</title>
    </head>
    <body>
        <%@include file="Header.jsp"%>
        <%@include file="sessionLogedController.jsp" %>
        <jsp:useBean id="product" scope="session" type="beans.Product"/>
        <section id="fullProduct">
            <div>
                <h3><%=product.getName()%></h3>
                <img src="<%=product.getUrlPict()%>" alt="Product">
                <p><%=product.getLongDescription()%></p>
                <h2>Precio: <%=product.getPrice()%></h2>
                <%
                    if (actualSession.isNull()) {
                %>
                <form method="get" action="LogInPage.jsp">
                    <input type="submit" value="Agregar al carrito"/>
                </form>
                <%
                } else {
                %>
                <form method="get" action="ShoopingCarController.jsp">
                    <input type="submit" name="option" value="Agregar al carrito"/><br>
                </form>
                <%
                    }
                %>
            </div>
        </section>
        <%@include file="Footer.jsp"%>
    </body>
</html>
