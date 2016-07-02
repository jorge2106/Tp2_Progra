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
    double subTotalProduct = price * cant;

    InCar shoopingCarElement = new InCar(productName, price, cant, subTotalProduct);
    ArrayList<InCar> carElements = shoopingCar.getCarProducts();
    carElements.add(shoopingCarElement);
    double carSubtotal = shoopingCar.getSubTotal();
    carSubtotal += subTotalProduct;
    double carShippingCost = shoopingCar.getShippingCost();
    carShippingCost += carSubtotal + (carSubtotal * 0.5);
    double totalPurchase = carSubtotal + carShippingCost;
%>

<jsp:setProperty name="shoopingCar" property="carProducts" value="<%=carElements%>" />
<jsp:setProperty name="shoopingCar" property="subTotal" value="<%=carSubtotal%>" />
<jsp:setProperty name="shoopingCar" property="shippingCost" value="<%=carShippingCost%>" />
<jsp:setProperty name="shoopingCar" property="total" value="<%=totalPurchase%>" />

<script type="text/javascript">
    alert("<%=productName%>" + "\nHa sido agregado al Carrito de Compra");
    window.location = "FullProductView.jsp";
</script>
