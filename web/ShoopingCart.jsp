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

        <section id="shoppingCar">
            <form method="get" action="subtotalChageController.jsp">
                <table border="2" style="width:100%">
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
                <h2>Subtotal: <%=shoopingCar.getSubTotal()%></h2><br>
                <h2>Envio: <%=shoopingCar.getShippingCost()%></h2><br>
                <h2>Total: <%=shoopingCar.getTotal()%></h2><br>
                <input id="button1" type="submit" name="option" value="Actualizar">
            </form><br>
            <form method="get" action="PurchaseProcess.jsp">
                <input id="button2" type="submit" name="option" value="Procesar Compra">
            </form>
        </section>
        <%@include file="Footer.jsp" %>
    </body>
</html>
