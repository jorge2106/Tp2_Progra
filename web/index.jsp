<%-- 
    Document   : index
    Created on : 17/06/2016, 02:01:41 PM
    Author     : Jorge
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="beans.ShoppingCar"%>
<jsp:useBean id="shoopingCar" scope="session" class="beans.ShoppingCar"/>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" type="image/png" href="img/eco.png" />
        <link rel="stylesheet" href="generalStyle.css">
        <title>Ecological NetWork</title>
    </head>
    <body>
        <%@include file="Header.jsp" %>
        <%@include file="sessionLogedController.jsp" %>
        <%@include file="Top10.jsp" %>
        <%@include file="Footer.jsp" %>
    </body>
</html>
