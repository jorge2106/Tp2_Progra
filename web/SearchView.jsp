<%-- 
    Document   : SearchView
    Created on : 03/07/2016, 03:08:50 PM
    Author     : Justin
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="beans.Product"%>
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
        <%@include file="Header.jsp" %>
        <%@include file="sessionLogedController.jsp" %>
        <%
            ProductsManager manager = new ProductsManager(getServletContext().getRealPath("XMLFiles/Products.xml"));
            String searchWord = request.getParameter("search");
            ArrayList<Product> matchedProducts = manager.searchProducts(searchWord);

            if (matchedProducts.size() != 0) { %>
            <section id="top10">
            <% for (int i = 0; i < matchedProducts.size(); i++) {%>
            <div>
                <a href="ProductController.jsp?code=<%=matchedProducts.get(i).getCode()%>">
                    <h3><%=matchedProducts.get(i).getName()%></h3>
                    <img src="<%=matchedProducts.get(i).getUrlPict()%>" alt="Product"></a>
                <p><%=matchedProducts.get(i).getLongDescription()%></p>
                <h2>Precio: <%=matchedProducts.get(i).getPrice()%></h2>
            </div>
            <%}%>
        </section>
        <%} else { %>
        <script type="text/javascript">
            alert("No existe un producto con estas especificaciones");
            window.location = "index.jsp";
        </script>
        <% }
        %>
        <%@include file="Footer.jsp" %>
    </body>
</body>
</html>
