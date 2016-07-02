
<%@page import="beans.Product"%>
<%@page import="ManagersXML.ProductsManager"%>
<jsp:useBean id="productSelected" scope="session" class="beans.Product"/>

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
<jsp:setProperty name="productSelected" property="name" value="<%=name%>" />
<jsp:setProperty name="productSelected" property="cod" value="<%=code%>" />
<jsp:setProperty name="productSelected" property="shortDescription" value="<%=shortDescription%>" />
<jsp:setProperty name="productSelected" property="longDescription" value="<%=longDescription%>" />
<jsp:setProperty name="productSelected" property="price" value="<%=price%>" />
<jsp:setProperty name="productSelected" property="cant" value="<%=cant%>" />
<jsp:setProperty name="productSelected" property="tendence" value="<%=tendence%>" />
<jsp:setProperty name="productSelected" property="urlPict" value="<%=urlPict%>" />
<%

    response.sendRedirect("AdminProductView.jsp");
%>