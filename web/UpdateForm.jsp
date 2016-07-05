<form method="get"action="AdminOperationsController.jsp">
    <h3>Nombre</h3><input type="text" name="name" required/>
    <h3>Descripción Corta</h3><input type="text" name="shortDescription" required/>
    <h3>Descripción Larga</h3><input type="text" name="longDescription" required/>
    <h3>Precio</h3><input type="text" name="price" required/>
    <h3>Cantidad</h3> <input type="text" name="cant" required/><br><br>
    <input type="submit" name="option" value="Modificar"/>
</form>
<form action="AdminOperationsController.jsp">
    <input type="submit" name="option" value="Cancelar"/>
</form>
