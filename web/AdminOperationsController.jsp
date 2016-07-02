<%@page import="ManagersXML.AdminManager"%>
<jsp:useBean id="productSelected" scope="session" class="beans.Product"/>
<%
    AdminManager manager = new AdminManager(getServletContext().getRealPath("XMLFiles/Products.xml"));
    String option = request.getParameter("option");
    int code = productSelected.getCode();
    if (option.equals("Modificar")) {
        String name = request.getParameter("name");
        String shortDescription = request.getParameter("shortDescription");
        String longDescription = request.getParameter("longDescription");
        int price = Integer.parseInt(request.getParameter("price"));
        int cant = Integer.parseInt(request.getParameter("cant"));
        if (manager.updateProduct(code, name, shortDescription, longDescription, price, cant)) { %>
            <script type="text/javascript">
                alert("Producto modificado con éxito");
                window.location = "AdminPage.jsp";
            </script>
        <% }
    } else {
        if (option.equals("Agregar")) {
            String name = request.getParameter("name");
            String shortDescription = request.getParameter("shortDescription");
            String longDescription = request.getParameter("longDescription");
            String urlPict = request.getParameter("urlPict");
            String category = request.getParameter("category");
            int price = Integer.parseInt(request.getParameter("price"));
            int cant = Integer.parseInt(request.getParameter("cant"));
            int newCode = Integer.parseInt(request.getParameter("code"));
            if(manager.addNewProduct(name, newCode, shortDescription, longDescription, price, cant, urlPict, category)){ %>
                <script type="text/javascript">
                alert("Producto agregado con éxito");
                window.location = "AdminPage.jsp";
            </script>
           <% } else { %>
                <script type="text/javascript">
                alert("Ya existe un producto con el código: " + <%=code%>);
                window.location = "ModifyProduct.jsp?option=add";
            </script>
           <%}
        } else {
            if (option.equals("Eliminar")) {
                if (manager.deleteProduct(code)) { %>
                    <script type="text/javascript">
                alert("Producto eliminado con éxito");
                window.location = "AdminPage.jsp";
            </script>
              <%  }
            } else {
                response.sendRedirect("AdminPage.jsp");
            }
        }
    }
%>