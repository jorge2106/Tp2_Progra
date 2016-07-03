<form action="AdminOperationsController.jsp">
    <h3>Nombre</h3><input type="text" name="name"/>
    <h3>Descripción Corta</h3><input type="text" name="shortDescription"/>
    <h3>Descripción Larga</h3><input type="text" name="longDescription"/>
    <h3>Precio</h3><input type="text" name="price"/>
    <h3>Cantidad</h3> <input type="text" name="cant"/>
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
    <h3>Direccion de la imgen</h3> <input type="text" name="urlPict"/>
    <h3>Código</h3> <input type="text" name="code"/>
    <input type="submit" name="option" value="Agregar"/>
    <input type="submit" name="option" value="Cancelar"/>
</form>
