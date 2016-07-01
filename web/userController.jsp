 

<%@page import="beans.Sesion"%>
<%@page import="ManagerDataBase.MySQLManager"%>
<jsp:useBean id="actualSession" scope="session" type="beans.Sesion" />


<%

    String option = request.getParameter("option");

    if (option.equals("Crear")) {

        String name = request.getParameter("name");

        String lastName = request.getParameter("lastName");

        int id = Integer.parseInt(request.getParameter("identityCard"));

        String phoneNumber = request.getParameter("phoneNumber");

        String password = request.getParameter("pass");

        String email = request.getParameter("email_addr");

        MySQLManager manager = new MySQLManager();
        manager.connectionToDB();
        manager.addNewUser(name, lastName, id, phoneNumber, email, password);

        response.sendRedirect("LogInPage.jsp");

    } else {
        if (option.equals("Iniciar")) {

            String eMail = "";
            eMail = request.getParameter("email");

            String password = "";
            password = request.getParameter("password");
%>
<jsp:setProperty name="actualSession" property="eMail" value="<%=eMail%>"/>
<jsp:setProperty name="actualSession" property="password" value="<%=password%>"/>
<%
    response.sendRedirect("index.jsp");
} else {
    if (option.equals("Cerrar")) {
%>
<jsp:setProperty name="actualSession" property="eMail" value="<%=null%>"/>
<jsp:setProperty name="actualSession" property="password" value="<%=null%>"/>
<%
                response.sendRedirect("index.jsp");
            }
        }
    }
%>
