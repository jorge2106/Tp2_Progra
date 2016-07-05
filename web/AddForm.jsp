<form method="get" action="AdminOperationsController.jsp">
    <h3>Nombre</h3><input type="text" name="name" pattern="[A-Za-z/\s/]{0,100}" required/>
    <h3>Descripción Corta</h3><input type="text" name="shortDescription" pattern="[A-Za-z/\s/]{0,60}" required/>
    <h3>Descripción Larga</h3><input type="text" name="longDescription" pattern="[A-Za-z/\s/]{0,200}" required/>
    <h3>Precio</h3><input type="text" name="price" pattern="[0,9]{2,7}" required/>
    <h3>Cantidad</h3> <input type="text" name="cant" pattern="[0,9]{1,3}" required/>
    <h3>Categoría</h3> 
    <select name="category">
        <option>Home</option>
        <option>Cloth</option>
        <option>Personal</option>
        <option>Plants</option>
        <option>Food</option>
        <option>Organic Chemicals</option>
        <option>Essences</option>
        <option>Medicine</option>
    </select>
    <h3>Dirección de la imagen</h3> <input type="text" name="urlPict" required/>
    <h3>Código</h3> <input type="text" name="code" pattern="[0,9]{1,3}" required/><br><br>
    <input type="submit" name="option" value="Agregar"/>
</form>
<form action="AdminOperationsController.jsp">
    <input type="submit" name="option" value="Cancelar"/>
</form>
