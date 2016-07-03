<%@page import="beans.InCar"%>
<%@page import="java.util.ArrayList"%>
<%@page import="beans.Product"%>
<jsp:useBean id="shoopingCar" scope="session" type="beans.ShoppingCar"/>
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
        <%            ArrayList<InCar> carProducts = shoopingCar.getCarProducts();
        %>

        <section>
            <form method="get" action="subtotalChageController.jsp">
                <table border="1" style="width:100%">
                    <tr>
                        <th>
                            Nombre Producto
                        </th>
                        <th>
                            Precio
                        </th>
                        <th>
                            Cantidad
                        </th>
                        <th>
                            Subtotal
                        </th>
                    </tr>
                    <%
                        for (int i = 0; i < carProducts.size(); i++) {
                            InCar actualProduct = carProducts.get(i);
                    %>
                    <tr>
                        <td>
                            <%=actualProduct.getProductName()%>
                        </td>
                        <td>
                            <%=actualProduct.getPrice()%>
                        </td>
                        <td>
                            <select name="<%=actualProduct.getProductName()%>" >
                                <%
                                    for (int j = 1; j <= actualProduct.getCantProduct(); j++) {
                                        if (j == actualProduct.getCantTobuy()) {
                                %>
                                <option selected="<%=j%>"><%=j%></option>
                                <%
                                } else {
                                %>
                                <option><%=j%></option>
                                <%
                                        }
                                    }
                                %>
                            </select>
                        </td>
                        <td>
                            <%=actualProduct.getSubtotal()%>
                        </td>
                    </tr>
                    <%
                        }
                    %>
                </table><br><br>
                <input type="submit" name="option" value="Procesar Compra">
                <input type="submit" name="option" value="Actualizar">
            </form><br>
        </section>
        <%@include file="Footer.jsp" %>
    </body>
</html>
