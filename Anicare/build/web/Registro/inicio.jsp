<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*, java.io.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Anicare</title>
        <link rel="stylesheet" href="dist/sweetalert.css" type="text/css">
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    </head>
    <body>
        <%
            String contrasena;
            String nombre;
            Connection c=null; 
            Statement s=null, s2=null;
            ResultSet rnombre = null,r = null;
            
            HttpSession sesion = request.getSession();
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
                contrasena= request.getParameter("contrasenai");
                nombre = request.getParameter("nombrei");
                
                rnombre = s2.executeQuery("select * from usuarios where nombre= '"+nombre+"'");
                r = s.executeQuery("select * from usuarios where contrasena= '"+contrasena+"' and nombre= '"+nombre+"'");
                if(rnombre.next()){
                    if(r.next()){
                        String con = r.getString("contrasena");
                        String nom = r.getString("nombre");
                        String email = r.getString("email");
                        String rango = r.getString("rol");
                        
                        //SESIONES IMPORTANTES
                        
                        sesion.setAttribute("Usuario", nombre);
                        sesion.setAttribute("Rango", rango);
                        
                        //FIN
                        
                        
                        out.println("<script>swal({"
                                +"title: 'Bienvenido',"
                                +" text: '¡Hola otra vez, "+nom+"!',"
                                +"icon: 'success',"
                                +"button: 'Aceptar'"
                                +"}).then(function(){window.location = '../MenuPrincipal/PrincipalUsuario.jsp'});"
                                + "</script>");
                    }
                    else{
                        out.println("<script>swal({"
                                +"title: 'ATENCIÓN',"
                                +" text: 'Contraseña incorrecta.',"
                                +"icon: 'warning',"
                                +"button: 'Aceptar'"
                                +"}).then(function(){window.history.back();});"
                                + "</script>");
                    }
                }
                else{
                    out.println("<script>swal({"
                                +"title: 'ATENCIÓN',"
                                +" text: 'Usuario inexistente.',"
                                +"icon: 'warning',"
                                +"button: 'Aceptar'"
                                +"}).then(function(){window.history.back();});"
                                + "</script>");}
            }
            catch( SQLException error) {
                out.print(error.toString() );
            }
        %>
    </body>
</html>
