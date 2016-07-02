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
        <jsp:useBean id="product" scope="session" type="beans.Product"/>
        <form method="get" action="ShoopingCarController.jsp">
            <h3>Selecione la cantidad que desea Comprar</h3>
            <select name="cantProduct">
                <% 
                for (int i = 1; i <= product.getCant(); i++) {
                %>
                <h4><option><%=i%></option></h4>
                <%
                    }

                %>
            </select>
            <input type="submit" name="accept" value="Aceptar">
        </form>
        <%@include file="Footer.jsp" %>
    </body>
</html>
