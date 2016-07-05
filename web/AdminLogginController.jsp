<%@page import="ManagerDataBase.MySQLManager"%>

<%
    MySQLManager manager = new MySQLManager();

    String eMail = request.getParameter("email");

    String passwordLog = request.getParameter("pass");

    manager.connectionToDB();
    if (manager.validateAdminLogIn(eMail, passwordLog)) {
%>
<jsp:setProperty name="actualSession" property="eMail" value="<%=eMail%>"/>
<jsp:setProperty name="actualSession" property="password" value="<%=passwordLog%>"/>
<%
    response.sendRedirect("AdminPage.jsp");
} else {
%>
<script type="text/javascript">
    alert("Datos Ingresados Erroneos");
    window.location = "AdminLogginPage.jsp";
</script>
<%
    }
%>
