
<%@page import="beans.InCar"%>
<%@page import="java.util.ArrayList"%>
<%@page import="ManagerDataBase.MySQLManager"%>
<%@page import="beans.Sesion"%>
<jsp:useBean id="actualSession" scope="session" class="beans.Sesion" />
<%@page import="beans.ShoppingCar"%>
<jsp:useBean id="shoopingCar" scope="session" type="beans.ShoppingCar"/>

<%
    MySQLManager manager = new MySQLManager();
    ArrayList<InCar> carElements = shoopingCar.getCarProducts();
    String products = "";
    for (int i = 0; i < carElements.size(); i++) {
        products += carElements.get(i).toString() + "\n";
    }
    
    String userId = manager.getUserId(actualSession.geteMail());
    double subtotal = shoopingCar.getSubTotal();
    double shippingCost = shoopingCar.getShippingCost();
    double total = shoopingCar.getTotal();
    String address = request.getParameter("address");
    String cardNumber = request.getParameter("cardNumber");
    String lender = request.getParameter("lender");

%>
