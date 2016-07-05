

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
        <%@include file="Header.jsp"%>
        <%@include file="sessionLogedController.jsp" %>
        <section id="purchaseProcess">
            <h2>Detalles de Envio y Pago</h2>
            <form method="post" action="FinishPurchase.jsp">
                <h4>Provincia <input type="text" name="province" pattern="[A-Za-z\\s+/]{0,100}" required></h4>
                <h4>Canton <input type="text" name="canton" pattern="[A-Za-z\\s+/]{0,100}" required></h4>
                <h4>Distrito <input type="text" name="district" pattern="[A-Za-z\\s+/]{0,100}" required></h4>
                <h4>Direccion Exacta <input type="text" name="exactAddress" pattern="[A-Za-z1-9\\s+/]{0,200}" required></h4>
                <h4>Tipo de Tarjeta</h4>
                <select name="cardType">
                    <option>Credito</option>
                    <option>Debito</option>
                </select>
                <h4>Entidad Crediticia</h4>
                <select name="lender">
                    <option>Visa</option>
                    <option>MasterCard</option>
                    <option>PayPal</option>
                    <option>Credomatic</option>
                </select>
                <h4>Numero de Tarjeta <input type="text" name="cardNumber" 
                                             pattern="[0-9]{4,}[-][0-9]{4,}[-][0-9]{4,}[-][0-9]{4,}"
                                             placeholder="xxxx - xxxx - xxxx - xxxx" required></h4>
                
                <h4>Fecha de Expiración <input type="text" name="expireDate" 
                                               pattern="[0-9]{2,}[/][0-9]{2,}[/][0-9]{4,}"
                                               placeholder="dd/mm/aaaa" required></h4>
                
                <input type="submit" name="confirm" value="Confirmar Compra">
            </form>
        </section>
        <%@include file="Footer.jsp" %>
    </body>
</html>
