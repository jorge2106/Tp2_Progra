<%-- 
    Document   : whoAreWe
    Created on : 01/07/2016, 06:54:38 PM
    Author     : andre
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="icon" type="image/png" href="img/eco.png" />
    <link rel="stylesheet" href="generalStyle.css">
    <title>¿Quienes Somos?</title>
</head>
<body>
    <%@include file="Header.jsp" %>
    <%@include file="sessionLogedController.jsp" %>
    <section id="whoAreWe">
        <div>
            <h1>¡Hola!</h1>
            <p>
                Somos un grupo de personas que intenta conservar el ambiente mediante <br/>
                la venta de productos naturales y servicios que ayuden al ambiente.
            </p>
            <p>
                Tratamos de reducir nuestra huella en el mundo haciendo que la compra de productos <br/>
                orgánicos sea más accesible para usted. Desde su hogar y desde cualquier parte del mundo.
            </p>
            <p>
                EcologicalNetwork es un sitio web creado en el año 2016 por un grupo de desarroladores,
                de la Universidad de Costa Rica, con deseos de preservar ambiente a través de herramientas 
                tecnológicas, tales como sitios web. Además de ofrecer productos de uso personal
                u hogar al alcance de la mano de sus clientes.
            </p>
            <p>
                Puede ponerse en contacto con algun colaborarador de EcologicalNetwork y nosotros mismos<br/>
                en el siguiente enlace: <a href="ContactUsPage.jsp">Contactenos</a>
            </p>
        </div>
    </section>
    <%@include file="Footer.jsp" %>
</body>
</html>
