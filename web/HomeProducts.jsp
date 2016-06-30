<%-- 
    Document   : HomeProducts
    Created on : 29/06/2016, 11:42:55 PM
    Author     : Justin
--%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
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
        <%@include file="Header.jsp" %>
        <%@include file="Aside.jsp"%>
        <jsp:useBean id="product" scope="session" class="beans.Product"/>
        <section id="categories">
            <%
                ProductsManager manager = new ProductsManager(getServletContext().getRealPath("XMLFiles/Products.xml"));
                ArrayList products = manager.getCategoryList("Home");
                for (int i = 0; i < products.size(); i++) {
                    product = (Product) products.get(i);
                    String name = product.getName();
                    int code = product.getCode();
                    String shortDescription = product.getShortDescription();
                    String urlPict = product.getUrlPict();
            %>
            <div>
                <h3><%=name%></h3>
                <img src="<%=urlPict%>" alt="Product">
                <p><%=shortDescription%></p>
            </div>
            <%
                }
            %>
        </section>
        <%@include file="Footer.jsp" %>
    </body>
</html>
