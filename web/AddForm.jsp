<form method="get" action="AdminOperationsController.jsp">
    <h3>Nombre</h3><input type="text" name="name" required/>
    <h3>Descripción Corta</h3><input type="text" name="shortDescription" required/>
    <h3>Descripción Larga</h3><input type="text" name="longDescription" required/>
    <h3>Precio</h3><input type="text" name="price" required/>
    <h3>Cantidad</h3> <input type="text" name="cant" required/>
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
    <h3>Código</h3> <input type="text" name="code" required/><br><br>
    <input type="submit" name="option" value="Agregar"/>
</form>
<form action="AdminOperationsController.jsp">
    <input type="submit" name="option" value="Cancelar"/>
</form>
