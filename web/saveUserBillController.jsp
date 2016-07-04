
<%@page import="ManagersXML.ProductsManager"%>
<%@page import="java.io.*"%>
<%@page import="java.util.*"%>
<%@page import="net.sf.jasperreports.engine.*"%>
<%@page import="net.sf.jasperreports.view.JasperViewer"%>
<%@page import="javax.servlet.ServletResponse"%>


<%@page import="beans.InCar"%>
<%@page import="java.util.ArrayList"%>
<%@page import="ManagerDataBase.MySQLManager"%>
<%@page import="beans.Sesion"%>
<jsp:useBean id="actualSession" scope="session" class="beans.Sesion"/>
<%@page import="beans.ShoppingCar"%>
<jsp:useBean id="shoopingCar" scope="session" type="beans.ShoppingCar"/>

<%
    MySQLManager manager = new MySQLManager();
    ProductsManager managerProduct = new ProductsManager(getServletContext().getRealPath("XMLFiles/Products.xml"));
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

    manager.connectionToDB();
    manager.addNewBill(products, lender, cardNumber, address, subtotal, shippingCost, total, userId);

    
    //File reportFile = new File(application.getRealPath("newBill.jasper"));
    //Map<String, Object> parameter = new HashMap();
    //byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), parameter, manager.getConnection());
    //response.setContentType("application/pdf");
    //response.setContentLength(bytes.length);
    //ServletOutputStream output = response.getOutputStream();
    //output.write(bytes,0,bytes.length);
    
    //output.flush();
    //output.close();
            
    response.sendRedirect("userController.jsp?option=Finalizar");
%>
