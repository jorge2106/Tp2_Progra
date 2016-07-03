<%@page import="java.util.ArrayList"%>
<%@page import="beans.Product"%>
<%@page import="ManagersXML.Top10Manager"%>
<%
    Top10Manager manager = new Top10Manager(getServletContext().getRealPath("XMLFiles/Products.xml"));
    ArrayList<Product> top10 = manager.getTop10(); %>
<section id="top10">
    <h1>Este es nuestro Top 10 de los productos más vendidos</h1>
    <% while (top10.size() != 0) {
            Product product = top10.remove(0);
    %>
    <div>
        <a href="ProductController.jsp?code=<%=product.getCode()%>"><h3><%=product.getName()%></h3>
        <img src="<%=product.getUrlPict()%>" alt="Product"></a>
        <p><%=product.getLongDescription()%></p>
        <h2>Precio: <%=product.getPrice()%></h2>
    </div>
    <% }
    %>
</section>