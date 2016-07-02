<aside>
    <nav>
        <h2>Mi Cuenta</h2>
        <ul>
            <li><a href=""><h3>Modificar Datos Personales</h3></a></li>
            <li><a href=""><h3>Compras Anteriores</h3></a></li>
            <li><a href="javascript:preguntar()"><h3>Eliminar Cuenta</h3></a></li>
            <li><a href="userController.jsp?option=Cerrar"><h3>Cerrar Sesión</h3></a></li>
            <li><a href="ShoopingCart.jsp"><img src="img/carrito-compra-1-crop-u21808.png" alt="carrito" style="width:100px;height:88px;"></a></li>
        </ul>
    </nav><br>
    <%@include file="categoriesMenu.jsp" %>
</aside>

<script language="Javascript">
    function preguntar() {
        eliminar = confirm("¿Deseas eliminar este usuario?");
        if (eliminar)
            window.location.href = "userController.jsp?option=Eliminar";
    }
</script>


