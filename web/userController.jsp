 

<%@page import="beans.User"%>
<%@page import="beans.Sesion"%>
<%@page import="ManagerDataBase.MySQLManager"%>
<jsp:useBean id="userLoged" scope="session" class="beans.User" />
<jsp:useBean id="actualSession" scope="session" type="beans.Sesion" />


<%

    String option = request.getParameter("option");

    if (option.equals("Crear")) {

        String name = "";
        name = request.getParameter("name");

        String lastName = "";
        name = request.getParameter("lastName");

        int id = 0;
        id = Integer.parseInt(request.getParameter("identityCard"));

        String phoneNumber = "";
        phoneNumber = request.getParameter("phoneNumber");

        String password = "";
        password = request.getParameter("pass");

        String email = "";
        email = request.getParameter("email_addr");

        MySQLManager manager = new MySQLManager();
        manager.connectionToDB();
        manager.addNewUser(name, lastName, id, phoneNumber, email, password);

        userLoged = new User(name, lastName, id, phoneNumber, email, password);

        session.setAttribute("userLoged", userLoged);
        response.sendRedirect("LogInPage.jsp");

    } else {
        if (option.equals("Iniciar")) {

            String eMail = "";
            eMail = request.getParameter("email");

            String password = "";
            password = request.getParameter("password");

            actualSession = new Sesion(eMail, password);

            session.setAttribute("actualSession", actualSession);
            response.sendRedirect("index.jsp");
        } else {
            if (option.equals("Cerrar")) {

                actualSession = new Sesion(null, null);

                session.setAttribute("actualSession", actualSession);
                response.sendRedirect("index.jsp");
            }
        }
    }
%>
