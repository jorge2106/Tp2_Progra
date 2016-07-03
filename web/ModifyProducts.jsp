<%-- 
    Document   : GetProductsAtributes
    Created on : 02/07/2016, 02:02:47 PM
    Author     : Justin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" type="image/png" href="eco.png" />
        <link rel="stylesheet" href="generalStyle.css">
        <title>Ecological NetWork - Admin</title>
    </head>
    <body>
        <%@include file="AdminHeader.jsp" %>
        <section id="modifyPorduct">
            <%
            String option = request.getParameter("option");
            if (option.equals("Modificar")) { %>
            <%@include file="UpdateForm.jsp" %>
            <% } else {
           if (option.equals("Agregar")) { %>
            <%@include file="AddForm.jsp" %>
            <% } else { %>
            <h2>¿Está seguro que desea eliminar este producto?</h2>
            <form action="AdminOperationsController.jsp">
                <input type="submit" name="option" value="Eliminar"/>
                <input type="submit" name="option" value="Cancelar"/>
            </form>
            <% }
                }
            %>
        </section>
        <%@include file="Footer.jsp" %>
    </body>
</html>
