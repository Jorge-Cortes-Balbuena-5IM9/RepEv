<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
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


<html>
    <head>
        <title>Elaborar reporte</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="http://code.jquery.com/jquery-latest.js"></script>
        <link rel = "stylesheet" type = "text/css" href = "EstilosRegistro.css">
        <script src="formulario.js"></script>
    </head>
    <body>
        <header class="headerdin">
            <div class="wrapper">
                <div class="logo">Anicare</div>
                    <nav>
                        <a href="../MenuPrincipal/PrincipalUsuario.jsp">Regresar</a>
                    </nav>
            </div>
        </header>
        <div class="contenedor-formulario">
  <div class="wrap">
    <form action="RepAlta.jsp" class="formulario" name="formulario_registro" method="get">
      <div>
          <h3 class="titulo">Alta de reporte</h3>
          <br>
        
          <div class="input-group">
              <label class="label" for="asunto">Asunto:</label><br><br>
                <input type="text" id="asunto" name="asunto">
        </div>
          
          <div class="input-group">
              <label class="label" for="clasif">Clasificación:</label> <br><br>
              <select name="clasif" id="clasif">
                  <option>Seleccione su respuesta</option>
                  <option id="duda">Duda</option>
                  <option id="problema tecnico">Problema Tecnico</option>
              </select>
        </div>
          
          
          <div class="input-group">
              <label class="label" for="Modulo">Modulo en donde se presenta:</label><br><br>
              <select name="Modulo" id="Modulo">
                  <option>Seleccione su respuesta</option>
                  <option>Localizacion</option>
                  <option>Cuidados</option>
                  <option>Animal Crossing</option>
              </select>
        </div>
          ´
          
          <div class="input-group">
              <label class="label" for="asunto">Contenido:</label><br><br>
              <textarea name="contenido" id= "contenido" rows="4" cols="52">
              </textarea>
            
        </div>
          
        <input type="submit" id="btn-submit" value="Enviar">
      </div>
    </form>
  </div>
</div>
    </body>
</html>
