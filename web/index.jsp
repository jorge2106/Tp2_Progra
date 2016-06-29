<%-- 
    Document   : index
    Created on : 17/06/2016, 02:01:41 PM
    Author     : Jorge
--%>

<%@page import="ManagerDataBase.MySQLManager"%>
<%@page import="beans.Sesion"%>
<jsp:useBean id="actualSession" scope="session" class="beans.Sesion" />
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" type="image/png" href="eco.png" />
        <link rel="stylesheet" href="generalStyle.css">
        <title>Ecological NetWork</title>
    </head>
    <body>
        <jsp:setProperty name="actualSession" property="eMail" value=" " />
        <jsp:setProperty name="actualSession" property="eMail" value=" " />

        <%@include file="Header.jsp" %>
        <%
            if (actualSession.geteMail().equals(" ")) {
        %>
        <%@include file="Aside.jsp"%>
        <%
        } else {
        %>
        <%@include file="AsideLoged.jsp"%>
        <%
            }
        %>
        <%@include file="Footer.jsp" %>

    </body>
</html>
