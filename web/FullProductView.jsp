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
        <link rel="icon" type="image/png" href="eco.png" />
        <link rel="stylesheet" href="generalStyle.css">
        <title>Ecological NetWork</title>
    </head>
    <body>
        <%@include file="Header.jsp"%>
        <%@include file="Aside.jsp"%>
        <jsp:useBean id="product" scope="session" class="beans.Product"/>
        <% 
        int code = Integer.parseInt(request.getParameter("code"));
        ProductsManager manager = new ProductsManager(getServletContext().getRealPath("XMLFiles/Products.xml"));
        product = manager.getProduct(code);
        %>
        <section>
            
        </section>
        <%@include file="Footer.jsp"%>
    </body>
</html>
