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
        <jsp:useBean id="productSelected" scope="session" type="beans.Product"/>
        <section>
            <div id="adminFullProduct">
                <h3><%=productSelected.getName()%></h3>
                <img src="<%=productSelected.getUrlPict()%>" alt="Product">
                <p><%=productSelected.getLongDescription()%></p>
                <h2>Precio: <%=productSelected.getPrice()%></h2>
                <form method="get" action="ModifyProducts.jsp">
                    <select name="option">
                        <option>Modificar</option>
                        <option>Eliminar</option>
                    </select>
                    <input type="submit" name="acept" value="Aceptar"/>
                </form>
            </div>
        </section>
        <%@include file="Footer.jsp"%>
    </body>
</html>
