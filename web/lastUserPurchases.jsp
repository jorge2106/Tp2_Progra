<%@page import="java.util.ArrayList"%>
<%@page import="ManagerDataBase.MySQLManager"%>
<%@page import="beans.Sesion" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" type="image/png" href="img/eco.png" />
        <link rel="stylesheet" href="generalStyle.css">
        <title>Ecological NetWork</title>
    </head>
    <body>
        <jsp:useBean id="actualSession" scope="session" type="beans.Sesion"/>

        <%@include file="Header.jsp" %>
        <%@include file="AsideLoged.jsp"%>
        <%
            MySQLManager manager = new MySQLManager();
            String userId = manager.getUserId(actualSession.geteMail());
            ArrayList<String> purchases = manager.getUserPurchase(userId);
        %>

        <section id="lastPurchases">
            <div>
                <h1>Historial de Compras</h1>
                <%for (int i = 0; i < purchases.size(); i++) {%>
                <h3><%=purchases.get(i)%></h3>
                <%}%>
            </div>
        </section>
        <%@include file="Footer.jsp" %>
    </body>
</html>
