 

<%@page import="beans.Sesion"%>
<%@page import="ManagerDataBase.MySQLManager"%>
<jsp:useBean id="actualSession" scope="session" type="beans.Sesion" />


<%

    String option = request.getParameter("option");
    int optionMenu = 0;
    if (option.equals("Crear")) {
        optionMenu = 1;
    }
    if (option.equals("Iniciar")) {
        optionMenu = 2;
    }
    if (option.equals("Cerrar")) {
        optionMenu = 3;
    }
    if (option.equals("Eliminar")) {
        optionMenu = 4;
    }

    MySQLManager manager = new MySQLManager();

    switch (optionMenu) {
        case 1:
            String name = request.getParameter("name");

            String lastName = request.getParameter("lastName");

            int id = Integer.parseInt(request.getParameter("identityCard"));

            String phoneNumber = request.getParameter("phoneNumber");

            String password = request.getParameter("pass");

            String email = request.getParameter("email_addr");

            manager.connectionToDB();
            manager.addNewUser(name, lastName, id, phoneNumber, email, password);

            response.sendRedirect("LogInPage.jsp");
            break;

        case 2:
            String eMail = request.getParameter("email");

            String passwordLog = request.getParameter("password");
            
            System.out.println(eMail + " " + passwordLog);

            manager.connectionToDB();
            if (manager.validateUserLogIn(eMail, passwordLog)) {
%>
<jsp:setProperty name="actualSession" property="eMail" value="<%=eMail%>"/>
<jsp:setProperty name="actualSession" property="password" value="<%=passwordLog%>"/>
<%
    response.sendRedirect("index.jsp");
} else {
%>
<script type="text/javascript">
    alert("Datos Ingresados Erroneos");
    window.location = "LogInPage.jsp";
</script>
<%
        }
        break;
    case 3:
%>
<jsp:setProperty name="actualSession" property="eMail" value="<%=null%>"/>
<jsp:setProperty name="actualSession" property="password" value="<%=null%>"/>
<%
        response.sendRedirect("index.jsp");
        break;
    case 4:
        manager.connectionToDB();
        manager.deleteMyAccount(actualSession.geteMail());
%>
<jsp:setProperty name="actualSession" property="eMail" value="<%=null%>"/>
<jsp:setProperty name="actualSession" property="password" value="<%=null%>"/>
<%
            response.sendRedirect("index.jsp");
            break;
    }

%>
