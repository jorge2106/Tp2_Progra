<%@page import="java.util.ArrayList"%>
<%@page import="beans.InCar"%>
<%@page import="beans.Product"%>
<%@page import="beans.ShoppingCar"%>
<jsp:useBean id="product" scope="session" type="beans.Product"/>
<jsp:useBean id="shoopingCar" scope="session" type="beans.ShoppingCar"/>
<%
        String productName = product.getName();
        double price = product.getPrice();
        int cantProducts = product.getCant();
        int code = product.getCode();
        int cantToBuy = 1;

        InCar shoopingCarElement = new InCar(productName, price, code, cantProducts, cantToBuy, price);
        ArrayList<InCar> carElements = shoopingCar.getCarProducts();
        carElements.add(shoopingCarElement);
        double carShippingCost = shoopingCar.getShippingCost();
        double subtotal = cantToBuy * price;
        carShippingCost += subtotal + (subtotal * 0.5);
        double totalPurchase = subtotal + carShippingCost;
%>
<jsp:setProperty name="shoopingCar" property="carProducts" value="<%=carElements%>" />
<jsp:setProperty name="shoopingCar" property="subTotal" value="<%=subtotal%>" />
<jsp:setProperty name="shoopingCar" property="shippingCost" value="<%=carShippingCost%>" />
<jsp:setProperty name="shoopingCar" property="total" value="<%=totalPurchase%>" />


<script type="text/javascript">
    alert("<%=productName%>" + "\nHa sido agregado al Carrito de Compra");
    window.location = "FullProductView.jsp";
</script>