<%-- 
    Document   : AdminProductsView
    Created on : 02/07/2016, 10:38:40 AM
    Author     : Justin
--%>

<%@page import="beans.Product"%>
<%@page import="java.util.ArrayList"%>
<%@page import="ManagersXML.ProductsManager"%>
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
        <%@include file="AdminHeader.jsp" %>
        <section id="adminCategories">
            <%
                ProductsManager manager = new ProductsManager(getServletContext().getRealPath("XMLFiles/Products.xml"));
                String categoryName = request.getParameter("option");
                ArrayList products = manager.getCategoryList(categoryName);
                for (int i = 0; i < products.size(); i++) {
                    Product product = (Product) products.get(i);
            %>
            <div>
                <a href="AdminController.jsp?code=<%=product.getCode()%>"><h3><%=product.getName()%></h3>
                    <img src="<%=product.getUrlPict()%>" alt="Product"></a>
                <p><%=product.getShortDescription()%></p>
            </div>
            <%
                }
            %>
        </section>
        <%@include file="Footer.jsp" %>
    </body>
</html>
