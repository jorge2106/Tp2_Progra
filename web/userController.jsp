 

<%@page import="ManagerDataBase.MySQLManager"%>
<jsp:useBean id="userLoged" scope="session" class="beans.User" />
<jsp:useBean id="actualSession" scope="session" type="beans.Sesion" />


<%

    String option = request.getParameter("option");

    if (option.equals("Crear")) {

        String name = "";
        name = request.getParameter("name");

        String lastName = "";
        name = request.getParameter("lastName");

        int id = 0;
        id = Integer.parseInt(request.getParameter("identityCard"));

        String phoneNumber = "";
        phoneNumber = request.getParameter("phoneNumber");

        String password = "";
        password = request.getParameter("pass");

        String email = "";
        email = request.getParameter("email_addr");

        MySQLManager manager = new MySQLManager();
        manager.connectionToDB();
        manager.addNewUser(name, lastName, id, phoneNumber, email, password);
%>

<jsp:setProperty name="userLoged" property="name" value="<%=name%>" />
<jsp:setProperty name="userLoged" property="lastName" value="<%=lastName%>" />
<jsp:setProperty name="userLoged" property="identityCard" value="<%=id%>" />
<jsp:setProperty name="userLoged" property="phone" value="<%=phoneNumber%>" />
<jsp:setProperty name="userLoged" property="password" value="<%=password%>" />
<jsp:setProperty name="userLoged" property="eMail" value="<%=email%>" />

<%
    session.setAttribute("actualSession", actualSession);
    response.sendRedirect("LogInPage.jsp");
} else {
    if (option.equals("Iniciar")) {

        String eMail = "";
        eMail = request.getParameter("email");

        String password = "";
        password = request.getParameter("password");
%>
<jsp:setProperty name="actualSession" property="eMail" value="<%=eMail%>" />
<jsp:setProperty name="actualSession" property="password" value="<%=password%>" />
<%
            session.setAttribute("actualSession", actualSession);
            response.sendRedirect("LogInPage.jsp");
        }
    }
%>
