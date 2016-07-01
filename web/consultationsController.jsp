
<%@page import="ManagerDataBase.MySQLManager"%>
<%

    MySQLManager manager = new MySQLManager();

    manager.connectionToDB();

    String userName = request.getParameter("name");
    String eMail = request.getParameter("email_addr");
    String consultation = request.getParameter("textA");

    manager.addNewConsultation(userName, eMail, consultation);

    response.sendRedirect("index.jsp");

%>