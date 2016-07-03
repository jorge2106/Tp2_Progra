
<%@page import="java.util.ArrayList"%>
<%@page import="beans.InCar"%>
<%@page import="beans.Product"%>
<%@page import="beans.ShoppingCar"%>
<jsp:useBean id="product" scope="session" type="beans.Product"/>
<jsp:useBean id="shoopingCar" scope="session" type="beans.ShoppingCar"/>

<%
    ArrayList<InCar> carElements = shoopingCar.getCarProducts();
    String code = "";
    double subtotal = 0;
    double carShippingCost = 0;
    double totalPurchase = 0;
    int cantToBuy = 0;
    for (int i = 0; i < carElements.size(); i++) {
        code = carElements.get(i).getProductName();
        cantToBuy = Integer.parseInt(request.getParameter(code));
        carElements.get(i).setCantTobuy(cantToBuy);
        subtotal = cantToBuy * carElements.get(i).getPrice();
        carElements.get(i).setSubtotal(subtotal);
        carShippingCost = subtotal + (subtotal * 0.5);
        totalPurchase = subtotal + carShippingCost;
    }
%>
<jsp:setProperty name="shoopingCar" property="carProducts" value="<%=carElements%>" />
<jsp:setProperty name="shoopingCar" property="subTotal" value="<%=subtotal%>" />
<jsp:setProperty name="shoopingCar" property="shippingCost" value="<%=carShippingCost%>" />
<jsp:setProperty name="shoopingCar" property="total" value="<%=totalPurchase%>" />

<%response.sendRedirect("ShoopingCart.jsp");%>
