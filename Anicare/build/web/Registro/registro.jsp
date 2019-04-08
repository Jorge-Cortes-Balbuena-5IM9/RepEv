<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*, java.io.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="dist/sweetalert.css" type="text/css">
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    </head>
    <body>
        <%
            String contrasena;
            String email;
            String nombre;
            Connection c=null; 
            Statement s=null, s2=null;
            ResultSet rnombre = null;
            try{
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                c = DriverManager.getConnection("jdbc:mysql://localhost/Anicare","root","n0m3l0");
                s= c.createStatement();
                s2= c.createStatement();
            }
            catch( SQLException error) {
                out.print(error.toString() );
            }
            try{
                contrasena= request.getParameter("contrasena");
                nombre = request.getParameter("nombre");
                email = request.getParameter("email");
                rnombre = s2.executeQuery("select * from usuarios where nombre= '"+nombre+"'");
                if(rnombre.next())
                    out.println("<script>swal({"
                                +"title: 'ATENCIÓN',"
                                +" text: 'El nombre de usuario ya está en uso, elige uno distinto.',"
                                +"icon: 'warning',"
                                +"button: 'Aceptar'"
                                +"}).then(function(){window.history.back();});"
                                + "</script>");
                else{
                    s.executeUpdate("insert into usuarios values ('"+nombre+"', '"+contrasena+"', '"+email+"')");
                    out.println("<script>swal({"
                                +"title: 'REGISTRADO',"
                                +" text: '¡Has sido registrado exitosamente en Solving Bátiz!',"
                                +"icon: 'success',"
                                +"button: 'Aceptar'"
                                +"}).then(function(){window.history.back();});"
                                + "</script>");
                }
                }
            catch( SQLException error) {
                out.print(error.toString() );
            }
        %>
    </body>
</html>
