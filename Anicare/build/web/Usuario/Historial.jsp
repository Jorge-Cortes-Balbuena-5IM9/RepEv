<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*, java.io.*" %>
<%
    //VALIDAR SOLO STAFF
    HttpSession obj_Session = request.getSession(false);
    String usuario = (String)obj_Session.getAttribute("Usuario");
    String rol = (String)obj_Session.getAttribute("Rango");
    if(usuario.equals("")){
        //No puedes acceder sin haber iniciado sesion
        response.sendRedirect("../MenuPrincipal/MenuPrincipal.html");}
    if(rol.equals("Usuario Normal"))
    {
        //Pagina de los chiquitines :^)
        response.sendRedirect("../MenuPrincipal/UsuarioNormal.jsp");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <title>Anicare</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <script src="http://code.jquery.com/jquery-latest.js"></script>
        <link rel = "stylesheet" type = "text/css" href = "EstilosPrincipal.css">
    </head>
    <body>
        <header class="headerdin">
            <div class="wrapper">
                <div class="logo">Anicare</div>
                        <nav>
                        <a> <% out.println(usuario);%> </a>
                    </nav>
                    <nav>
                        <a> <% out.println(rol);%> </a>
                    </nav>
                    <nav>
                    <a href="../MenuPrincipal/PrincipalUsuario.jsp">Regresar</a>
                    </nav>
            </div>
        </header>
            <br><br>
            <section class="contenido wrapper">
                <div class="desarrollo">
                    <center>
                        <br><br>
                        <h1>Historial de reportes enviados</h1>
                        <br><br>
                        <h2>Usuario:</h2>
                        <h3> <% out.println(usuario);%> </h3>
                        <br><br>
                        
                        <%
                            Connection c=null;
                            Statement s=null;
                            ResultSet r=null;
                            ResultSet n=null;
                            try{
                                Class.forName("com.mysql.jdbc.Driver").newInstance();
                                c = DriverManager.getConnection("jdbc:mysql://localhost/Anicare", "root", "n0m3l0");
                                s = c.createStatement();
                            }
                            catch(SQLException error){
                                out.print(error.toString());
                            }
                            
                            try
                            {
                                r = s.executeQuery("select * from Reportes where autor = '"+ usuario +"';");
                                   out.println("<center><table cellpadding='50' width='100%'>");
                                   out.println("<tr><th style='font-size: 20px;'>Asunto</th>");
                                   out.println("<th style='font-size: 20px;'>Clasificacion </th>");
                                   out.println("<th style='font-size: 20px;'>Modulo</th>");
                                   out.println("<th style='font-size: 20px;'>Contenido</th></tr>");
                                    while(r.next()){
                                    String asunto = r.getString("Asunto");
                                    String cla= r.getString("clasif");
                                    String mod = r.getString("Modulo");
                                    String con = r.getString("contenido");



                                    out.println("<tr><th>"+ asunto + "</th>");
                                    out.println("<th>" + cla + "</th>");
                                    out.println("<th>"+ mod + "</th>");
                                    out.println("<th>"+ con + "</th></tr>");
                                    out.println("<th>" + "</th></tr>");
                                    out.println("<th>" + "</th></tr>");
                                    out.println("<th>" + "</th></tr>");
                                    out.println("<th>" + "</th></tr>");
                                    out.println("<th>" + "</th></tr>");
                                }
                                out.println("</table></center>");
                            }       

                            catch(SQLException error){
                                out.print(error.toString());
                            }
                        %>
                    </center>
                </div>
                
            </section>
            
    </body>
</html>
