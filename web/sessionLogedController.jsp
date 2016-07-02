
<%@page import="beans.Sesion"%>
<jsp:useBean id="actualSession" scope="session" class="beans.Sesion" />

<%
    if (actualSession.isNull()) {
%>
<%@include file="Aside.jsp"%>
<%
} else {
%>
<%@include file="AsideLoged.jsp"%>
<%
    }
%>
