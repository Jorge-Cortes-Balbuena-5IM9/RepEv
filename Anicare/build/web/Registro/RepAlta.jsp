<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*, java.io.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="dist/sweetalert.css" type="text/css">
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    </head>
    <body>
        <%
            HttpSession obj_Session = request.getSession(false);
            String usuario = (String)obj_Session.getAttribute("Usuario");
            String Asunto;
            String Clasificacion;
            String Modulo;
            String Conte;
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
                Asunto= request.getParameter("asunto");
                Clasificacion = request.getParameter("clasif");
                Modulo = request.getParameter("Modulo");
                Conte = request.getParameter("contenido");
                
                s.executeUpdate("insert into Reportes values ('"+usuario+"', '"+Asunto+"', '"+Clasificacion+"' , '"+Modulo+"' , '"+Conte+"')");
                    out.println("<script>swal({"
                                +"title: 'REGISTRADO',"
                                +" text: '¡Reporte exitosamente registrado en Anicare!',"
                                +"icon: 'success',"
                                +"button: 'Aceptar'"
                                +"}).then(function(){window.history.back();});"
                                + "</script>");
                }
                
            catch( SQLException error) {
                out.print(error.toString() );
            }
        %>
    </body>
</html>
