
<%@page import="ManagerDataBase.MySQLManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="beans.Sesion"%>
<jsp:useBean id="actualSession" scope="session" class="beans.Sesion"/>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" type="image/png" href="img/eco.png" />
        <link rel="stylesheet" href="generalStyle.css">
        <title>Ecological NetWork</title>
    </head>
    <body>
        <%@include file="Header.jsp" %>

        <%@include file="Footer.jsp" %>
    </body>
</html>
