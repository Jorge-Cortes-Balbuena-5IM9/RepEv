package org.apache.jsp.MenuPrincipal;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class PrincipalUsuario_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write('\n');
 //VALIDAR SOLO OPERADORES
    HttpSession obj_Session = request.getSession(false);
    String usuario = (String)obj_Session.getAttribute("Usuario");
    String rol = (String)obj_Session.getAttribute("Rango");
    
    
    if(usuario.equals("")){
        //No puedes acceder sin haber iniciado sesion
        response.sendRedirect("MenuPrincipal.html");}
    if(rol.equals("Gerente de soporte")){
        //No puedes acceder si eres gerente
        response.sendRedirect("gerentesupp.jsp");
    }
    else 
        if(rol.equals("Usuario Normal"))
    {
        //No eres del staff, adios
        response.sendRedirect("UsuarioNormal.jsp");
    }
    else
        if(rol.equals("Ingeniero de Soporte")){
        //No puedes acceder si eres gerente
        response.sendRedirect("ingeniero.jsp");
    }

      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>Anicare</title>\n");
      out.write("        <style type=\"text/css\">\n");
      out.write("            #popup {\n");
      out.write("                visibility: hidden;\n");
      out.write("                opacity: 0;\n");
      out.write("                margin-top: -300px;\n");
      out.write("             }\n");
      out.write("             #popup:target {\n");
      out.write("                visibility:visible;\n");
      out.write("                opacity: 1;\n");
      out.write("                background-color: rgba(0,0,0,0.8);\n");
      out.write("                position: fixed;\n");
      out.write("                top:0;\n");
      out.write("                left:0;\n");
      out.write("                right:0;\n");
      out.write("                bottom:0;\n");
      out.write("                margin:0;\n");
      out.write("                z-index: 999;\n");
      out.write("                transition:all 1s;\n");
      out.write("             }\n");
      out.write("             #popupi {\n");
      out.write("                visibility: hidden;\n");
      out.write("                opacity: 0;\n");
      out.write("                margin-top: -300px;\n");
      out.write("             }\n");
      out.write("             #popupi:target {\n");
      out.write("                visibility:visible;\n");
      out.write("                opacity: 1;\n");
      out.write("                background-color: rgba(0,0,0,0.8);\n");
      out.write("                position: fixed;\n");
      out.write("                top:0;\n");
      out.write("                left:0;\n");
      out.write("                right:0;\n");
      out.write("                bottom:0;\n");
      out.write("                margin:0;\n");
      out.write("                z-index: 999;\n");
      out.write("                transition:all 1s;\n");
      out.write("             }\n");
      out.write("             .popup-contenedor {\n");
      out.write("                position: relative;\n");
      out.write("                margin:2% auto;\n");
      out.write("                padding:30px 50px;\n");
      out.write("                background: linear-gradient(white,#ccccff);\n");
      out.write("                /*background-color: #fafafa;*/\n");
      out.write("                color:#333;\n");
      out.write("                border-radius: 3px;\n");
      out.write("                width: 40%;\n");
      out.write("             }\n");
      out.write("             input.input-text{\n");
      out.write("\n");
      out.write("                 font-family: \"Roboto\", Arial;\n");
      out.write("                font-size: 16px;\n");
      out.write("                color: rgb(0, 120, 150);\n");
      out.write("                width: 100%;\n");
      out.write("                outline: none;\n");
      out.write("                padding: 15px;\n");
      out.write("                background: none;\n");
      out.write("                border: none;\n");
      out.write("                border-bottom: 2px solid #BBDEFB;\n");
      out.write("             }\n");
      out.write("             a.popup-cerrar {\n");
      out.write("                position: absolute;\n");
      out.write("                top:3px;\n");
      out.write("                right:3px;\n");
      out.write("                background-color: crimson;\n");
      out.write("                padding:7px 10px;\n");
      out.write("                font-size: 20px;\n");
      out.write("                text-decoration: none;\n");
      out.write("                line-height: 1;\n");
      out.write("                color:#fff;\n");
      out.write("             }\n");
      out.write("             a.popup-link {\n");
      out.write("                text-align: center;\n");
      out.write("                display: block;\n");
      out.write("                margin: 30px 0;\n");
      out.write("            }\n");
      out.write("            .popup-contenedor input[type=\"submit\"] {\n");
      out.write("                background: rgb(0, 120, 150);\n");
      out.write("                border-radius: 1px;\n");
      out.write("                border: 2px solid #f2f2f2;\n");
      out.write("                color: #fff;\n");
      out.write("                cursor: pointer;\n");
      out.write("                display: inline-block;\n");
      out.write("                font-family: \"Roboto\", Arial;\n");
      out.write("                font-size: 16px;\n");
      out.write("                padding: 15px;\n");
      out.write("                width: 100%;\n");
      out.write("                transition: all 0.3s ease;\n");
      out.write("              }\n");
      out.write("              .popup-contenedor input[type=\"submit\"]:hover {\n");
      out.write("                background: #1976D2;\n");
      out.write("              }\n");
      out.write("              .aviso {\n");
      out.write("                    color: rgb(143, 186, 202);\n");
      out.write("                }\n");
      out.write("                a{\n");
      out.write("                    color: rgb(80, 119, 136);\n");
      out.write("                    text-decoration:none;\n");
      out.write("                    line-height:normal;\n");
      out.write("                    font-weight:bold;\n");
      out.write("                    -webkit-transition:all 500ms ease;\n");
      out.write("                    -o-transition:all 500ms ease;\n");
      out.write("                    transition:all 500ms ease;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            a:hover {\n");
      out.write("                    color: orange;\n");
      out.write("}-\n");
      out.write("        </style>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0\">\n");
      out.write("        <script src=\"http://code.jquery.com/jquery-latest.js\"></script>\n");
      out.write("        <script>\n");
      out.write("            \n");
      out.write("          \n");
      out.write("        </script>\n");
      out.write("        <link rel=\"stylesheet\" href=\"dist/sweetalert.css\" type=\"text/css\">\n");
      out.write("        <script src=\"https://unpkg.com/sweetalert/dist/sweetalert.min.js\"></script>\n");
      out.write("        <link rel = \"stylesheet\" type = \"text/css\" href = \"EstilosPrincipal.css\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <header class=\"headerdin\">\n");
      out.write("                        <div class=\"wrapper\">\n");
      out.write("                <div class=\"logo\">Anicare</div>\n");
      out.write("                    <nav>\n");
      out.write("                        <a> ");
 out.println(usuario);
      out.write(" </a>\n");
      out.write("                    </nav>\n");
      out.write("                    <nav>\n");
      out.write("                        <a> ");
 out.println(rol);
      out.write(" </a>\n");
      out.write("                    </nav>\n");
      out.write("                    <nav>\n");
      out.write("                        <a href=\"../Registro/CerrarSesion.jsp\">Cerrar sesión</a>\n");
      out.write("                    </nav>\n");
      out.write("            </div>\n");
      out.write("        </header>\n");
      out.write("            <br><br>\n");
      out.write("            <section class=\"contenido wrapper\">\n");
      out.write("                <div class=\"desarrollo\">\n");
      out.write("                    <div class=\"titulo\">\n");
      out.write("                    <svg viewBox=\"0 0 800 600\">\n");
      out.write("                        <text text-anchor=\"middle\"\n");
      out.write("                              x=\"50%\"\n");
      out.write("                              y=\"35%\"\n");
      out.write("                              class=\"text--line\" style=\"color: #BBDEFB\"\n");
      out.write("                              >\n");
      out.write("                          Reporte de\n");
      out.write("                        </text>\n");
      out.write("                        <text text-anchor=\"middle\"\n");
      out.write("                              x=\"50%\"\n");
      out.write("                              y=\"68%\"\n");
      out.write("                              class=\"text--line2\"\n");
      out.write("                              >\n");
      out.write("                          Eventos\n");
      out.write("                        </text>\n");
      out.write("\n");
      out.write("\n");
      out.write("                      <g class=\"g-ants\">\n");
      out.write("                        <use xlink:href=\"#s-text\"\n");
      out.write("                          class=\"text-copy\"></use>     \n");
      out.write("                        <use xlink:href=\"#s-text\"\n");
      out.write("                          class=\"text-copy\"></use>     \n");
      out.write("                        <use xlink:href=\"#s-text\"\n");
      out.write("                          class=\"text-copy\"></use>     \n");
      out.write("                        <use xlink:href=\"#s-text\"\n");
      out.write("                          class=\"text-copy\"></use>     \n");
      out.write("                        <use xlink:href=\"#s-text\"\n");
      out.write("                          class=\"text-copy\"></use>     \n");
      out.write("                      </g>\n");
      out.write("\n");
      out.write("\n");
      out.write("                    </svg>\n");
      out.write("                    </div>\n");
      out.write("                \n");
      out.write("                    <div class=\"textoB\">\n");
      out.write("                        <br>\n");
      out.write("                        <h1>¡Bienvenido!</h1><br>\n");
      out.write("                        <p>Si observas algo fuera de lo normal haznoslo saber con un reporte, juntos podemos mejorar Anicare.</p>\n");
      out.write("                        <br><br>\n");
      out.write("                        <a href=\"../Registro/Reporte.jsp\">Elaborar reporte</a><br><br>\n");
      out.write("                        <a href=\"../Usuario/Historial.jsp\">Historial de reportes enviados</a>\n");
      out.write("                        <a href=\"../Registro/EditarRep.jsp\">Editar reportes</a>\n");
      out.write("                     </div>\n");
      out.write("                </div>\n");
      out.write("                \n");
      out.write("            </section>            \n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
