
<%@page import="java.util.ArrayList"%>
<%@page import="beans.InCar"%>
<%@page import="beans.Product"%>
<%@page import="beans.ShoppingCar"%>
<jsp:useBean id="product" scope="session" type="beans.Product"/>
<jsp:useBean id="shoopingCar" scope="session" type="beans.ShoppingCar"/>

<%
    ArrayList<InCar> carElements = shoopingCar.getCarProducts();
    String code = "";
    double subtotalProduct = 0;
    double carShippingCost = 0;
    double totalPurchase = 0;
    double subToltalPurchase = 0;
    int cantToBuy = 0;
    for (int i = 0; i < carElements.size(); i++) {
        code = carElements.get(i).getProductName();
        cantToBuy = Integer.parseInt(request.getParameter(code));
        carElements.get(i).setCantTobuy(cantToBuy);
        subtotalProduct = cantToBuy * carElements.get(i).getPrice();
        subToltalPurchase += subtotalProduct;
        carElements.get(i).setSubtotal(subtotalProduct);
        carShippingCost = (subToltalPurchase * 0.05);
        totalPurchase = subToltalPurchase + carShippingCost;
    }
%>
<jsp:setProperty name="shoopingCar" property="carProducts" value="<%=carElements%>" />
<jsp:setProperty name="shoopingCar" property="subTotal" value="<%=subToltalPurchase%>" />
<jsp:setProperty name="shoopingCar" property="shippingCost" value="<%=carShippingCost%>" />
<jsp:setProperty name="shoopingCar" property="total" value="<%=totalPurchase%>" />

<%response.sendRedirect("ShoopingCart.jsp");%>
