<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="ManagerDataBase.MySQLManager"%>
<%@page import="java.util.ArrayList"%>
<%@page import="beans.InCar"%>
<%@page import="beans.ShoppingCar"%>
<jsp:useBean id="shoopingCar" scope="session" type="beans.ShoppingCar"/>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" type="image/png" href="img/eco.png" />
        <link rel="stylesheet" href="generalStyle.css">
        <title>Ecological NetWork</title>
    </head>
    <body>
        <%@include file="Header.jsp"%>
        <%@include file="sessionLogedController.jsp" %>
        <%            ArrayList<InCar> carElements = shoopingCar.getCarProducts();
            String province = request.getParameter("province");
            String canton = request.getParameter("canton");
            String district = request.getParameter("district");
            String address = request.getParameter("exactAddress");
            String completeAddress = province + ", " + canton + ", " + district + " - " + address;
            String lender = request.getParameter("lender");
            String cardNumber = request.getParameter("cardNumber");
            String codCardNumber = " xxxx - xxxx - xxxx - " + cardNumber.substring(15, cardNumber.length());
        %>
        <section id="confirmPurchase">
            <form>
                <h2>Confirmacion de la compra</h2>
                <h3>Productos seleccionados</h3>
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
                        for (int i = 0; i < carElements.size(); i++) {
                            InCar actualProduct = carElements.get(i);
                    %>
                    <tr>
                        <td>
                            <%=actualProduct.getProductName()%>
                        </td>
                        <td>
                            <%=actualProduct.getPrice()%>
                        </td>
                        <td>
                            <%=actualProduct.getCantTobuy()%>
                        </td>
                        <td>
                            <%=actualProduct.getSubtotal()%>
                        </td>
                    </tr>
                    <%
                        }
                    %>
                </table><br>
                <h3>Subtotal</h3>
                <h4><jsp:getProperty name="shoopingCar" property="subTotal"/></h4>
                <h3>Costo Envio</h3>
                <h4><jsp:getProperty name="shoopingCar" property="shippingCost"/></h4>
                <h3>Total a pagar</h3>
                <h4><jsp:getProperty name="shoopingCar" property="total"/></h4>
                <h3>Direccion</h3>
                <h4><%=completeAddress%></h4>
                <h3>Tarjeta</h3>
                <h4><%=lender + " / " + codCardNumber%></h4><br>
                <a href="saveUserBillController.jsp?address=<%=completeAddress%>&lender=<%=lender%>&cardNumber=<%=codCardNumber%>" target="blank">Generar Factura</a><br><br>
                <a href="userController.jsp?option=Finalizar">Terminar Compra</a>

            </form>
        </section>
        <%@include file="Footer.jsp" %>
    </body>
</html>