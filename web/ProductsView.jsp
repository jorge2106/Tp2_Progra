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
        <link rel="icon" type="image/png" href="img/eco.png" />
        <link rel="stylesheet" href="generalStyle.css">
        <title>Ecological NetWork</title>
    </head>
    <body>
        <%@include file="Header.jsp" %>
        <%@include file="sessionLogedController.jsp" %>
        <section id="categories">
            <%                ProductsManager manager = new ProductsManager(getServletContext().getRealPath("XMLFiles/Products.xml"));
                String categoryName = request.getParameter("option");
                ArrayList products = manager.getCategoryList(categoryName);
                for (int i = 0; i < products.size(); i++) {
                    Product product = (Product) products.get(i);
                    if (product.getCant() > 0) {%>
            <div>
                <a href="ProductController.jsp?code=<%=product.getCode()%>"><h3><%=product.getName()%></h3>
                    <img src="<%=product.getUrlPict()%>" alt="Product"></a>
                <p><%=product.getShortDescription()%></p>
            </div>
            <% }
                }
            %>
        </section>
        <%@include file="Footer.jsp" %>
    </body>
</html>
