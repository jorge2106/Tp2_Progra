<form method="get"action="AdminOperationsController.jsp">
    <h3>Nombre</h3><input type="text" name="name" pattern="[A-Za-z/\s/]{0,100}" required/>
    <h3>Descripción Corta</h3><input type="text" name="shortDescription" pattern="[A-Za-z1-9/\s/]{0,60}" required/>
    <h3>Descripción Larga</h3><input type="text" name="longDescription" pattern="[A-Za-z1-9/\s/]{0,200}" required/>
    <h3>Precio</h3><input type="text" name="price" pattern="[0,9]{2,7}" required/>
    <h3>Cantidad</h3> <input type="text" name="cant" pattern="[0,9]{1,3}" required/><br><br>
    <input type="submit" name="option" value="Modificar"/>
</form>
<form action="AdminOperationsController.jsp">
    <input type="submit" name="option" value="Cancelar"/>
</form>
