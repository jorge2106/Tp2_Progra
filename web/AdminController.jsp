
<%@page import="beans.Product"%>
<%@page import="ManagersXML.ProductsManager"%>
<jsp:useBean id="product" scope="session" class="beans.Product"/>

<%
    ProductsManager manager = new ProductsManager(getServletContext().getRealPath("XMLFiles/Products.xml"));
    int code = Integer.parseInt(request.getParameter("code"));
    Product tempProduct = manager.getProduct(code);
    String name = tempProduct.getName();
    String shortDescription = tempProduct.getShortDescription();
    String longDescription = tempProduct.getLongDescription();
    int price = tempProduct.getPrice();
    int cant = tempProduct.getCant();
    int tendence = tempProduct.getTendence();
    String urlPict = tempProduct.getUrlPict();

%>
<jsp:setProperty name="product" property="name" value="<%=name%>" />
<jsp:setProperty name="product" property="cod" value="<%=code%>" />
<jsp:setProperty name="product" property="shortDescription" value="<%=shortDescription%>" />
<jsp:setProperty name="product" property="longDescription" value="<%=longDescription%>" />
<jsp:setProperty name="product" property="price" value="<%=price%>" />
<jsp:setProperty name="product" property="cant" value="<%=cant%>" />
<jsp:setProperty name="product" property="tendence" value="<%=tendence%>" />
<jsp:setProperty name="product" property="urlPict" value="<%=urlPict%>" />
<%

    response.sendRedirect("AdminProductView.jsp");
%>