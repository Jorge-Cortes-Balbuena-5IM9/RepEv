<%@page session="true"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cerrando...</title>
    </head>
    <body>
        <%
            HttpSession sessionOut = request.getSession();
            sessionOut.invalidate();
            response.sendRedirect("../MenuPrincipal/MenuPrincipal.html");
        %>
    </body>
</html>
