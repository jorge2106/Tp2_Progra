<%-- 
    Document   : whoAreWe
    Created on : 01/07/2016, 06:54:38 PM
    Author     : andre
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="generalStyle.css">
    <title>¿Quienes Somos?</title>
</head>
<body>
    <%@include file="Header.jsp" %>
    <%@include file="sessionLogedController.jsp" %>
    <section>
        <h1>¡Hola!</h1>
        <p>
            Somos un grupo de personas que intenta conservar el ambiente mediante <br/>
            la venta de productos naturales y servicios que ayuden al ambiente.
        </p>
        pegar foto 
        <p>
            Tratamos de reducir nuestra huella en el mundo haciendo que la compra de productos <br/>
            organicos sea más accesible para usted. Desde su hogar y desde cualquier parte del mundo.
        </p>
        pegar foto 
        <p>
            EcologicalNetwork es un sitio web creado en el año 2016 por un grupo de desarroladores,<br/>
            de la Universidad de Costa Rica, con deseos de alcanzar puntos debiles en la lucha por<br/>
            preservar ambiente como los son los sitios web. Además de ofrecer productos de uso personal<br/>
            u hogar al alcance de la mano de sus clientes.
        </p>

        pegar foto 
        <p>
            Puede ponerse en contacto con algun colaborar de EcologicalNetwork y nosotros mismos<br/>
            en el siguiente enlace:
        </p>
        <a href="ContactUsPage.jsp">Contactenos</a>
    </section>
    <%@include file="Footer.jsp" %>
</body>
</html>
