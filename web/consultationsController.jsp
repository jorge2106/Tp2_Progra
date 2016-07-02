
<%@page import="ManagerDataBase.MySQLManager"%>
<%

    MySQLManager manager = new MySQLManager();

    String userName = request.getParameter("name");
    String eMail = request.getParameter("email_addr");
    String consultation = request.getParameter("textA");

    manager.connectionToDB();
    manager.addNewConsultation(userName, eMail, consultation);

    response.sendRedirect("index.jsp");

%>