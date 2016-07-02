<%@page import="java.util.ArrayList"%>
<%@page import="beans.InCar"%>
<%@page import="beans.Product"%>
<%@page import="beans.ShoppingCar"%>
<jsp:useBean id="product" scope="session" type="beans.Product"/>
<jsp:useBean id="shoopingCar" scope="session" type="beans.ShoppingCar"/>
<%
    String productName = product.getName();
    double price = product.getPrice();
    int cant = product.getCant();
    int code = product.getCode();

    InCar shoopingCarElement = new InCar(productName, price, code, cant, price);
    ArrayList<InCar> carElements = shoopingCar.getCarProducts();
    carElements.add(shoopingCarElement);
    double carShippingCost = shoopingCar.getShippingCost();
    carShippingCost += price + (price * 0.5);
    double totalPurchase = price + carShippingCost;
%>
<jsp:setProperty name="shoopingCar" property="carProducts" value="<%=carElements%>" />
<jsp:setProperty name="shoopingCar" property="subTotal" value="<%=price%>" />
<jsp:setProperty name="shoopingCar" property="shippingCost" value="<%=carShippingCost%>" />
<jsp:setProperty name="shoopingCar" property="total" value="<%=totalPurchase%>" />


<script type="text/javascript">
    alert("<%=productName%>" + "\nHa sido agregado al Carrito de Compra");
    window.location = "FullProductView.jsp";
</script>
