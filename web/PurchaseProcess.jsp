

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
            <form method="get" action="FinishPurchase.jsp">
                <h2>Detalles de la Envio y Pago</h2>
                <h4>Provincia <input type="text" name="province" required="*"></h4>
                <h4>Canton <input type="text" name="canton" required="*"></h4>
                <h4>Distrito <input type="text" name="district" required="*"></h4>
                <h4>Direccion Exacta <input type="text" name="exactAddress" required></h4>
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
                <h4>Numero de Tarjeta <input type="text" name="cardNumber" placeholder="****-****-****-****" 
                                                required></h4>
                <h4>Fecha de Expiracion <input type="text" name="expireDate" 
                                               placeholder="dd/mm/aaaa" 
                                                required></h4>
                <input type="submit" name="confirm" value="Confirmar Compra">
            </form>
        </section>
        <%@include file="Footer.jsp" %>
    </body>
</html>
