<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    //VALIDAR SOLO USUARIO LOGEADO
    HttpSession obj_Session = request.getSession(false);
    String usuario = (String)obj_Session.getAttribute("Usuario");
    String rol = (String)obj_Session.getAttribute("Rango");
    if(usuario.equals("")){
        //No puedes acceder sin haber iniciado sesion
        response.sendRedirect("MenuPrincipal.html");}
%>

<html>
    <head>
        <title>Anicare</title>
        <style type="text/css">
            #popup {
                visibility: hidden;
                opacity: 0;
                margin-top: -300px;
             }
             #popup:target {
                visibility:visible;
                opacity: 1;
                background-color: rgba(0,0,0,0.8);
                position: fixed;
                top:0;
                left:0;
                right:0;
                bottom:0;
                margin:0;
                z-index: 999;
                transition:all 1s;
             }
             #popupi {
                visibility: hidden;
                opacity: 0;
                margin-top: -300px;
             }
             #popupi:target {
                visibility:visible;
                opacity: 1;
                background-color: rgba(0,0,0,0.8);
                position: fixed;
                top:0;
                left:0;
                right:0;
                bottom:0;
                margin:0;
                z-index: 999;
                transition:all 1s;
             }
             .popup-contenedor {
                position: relative;
                margin:2% auto;
                padding:30px 50px;
                background: linear-gradient(white,#ccccff);
                /*background-color: #fafafa;*/
                color:#333;
                border-radius: 3px;
                width: 40%;
             }
             input.input-text{

                 font-family: "Roboto", Arial;
                font-size: 16px;
                color: rgb(0, 120, 150);
                width: 100%;
                outline: none;
                padding: 15px;
                background: none;
                border: none;
                border-bottom: 2px solid #BBDEFB;
             }
             a.popup-cerrar {
                position: absolute;
                top:3px;
                right:3px;
                background-color: crimson;
                padding:7px 10px;
                font-size: 20px;
                text-decoration: none;
                line-height: 1;
                color:#fff;
             }
             a.popup-link {
                text-align: center;
                display: block;
                margin: 30px 0;
            }
            .popup-contenedor input[type="submit"] {
                background: rgb(0, 120, 150);
                border-radius: 1px;
                border: 2px solid #f2f2f2;
                color: #fff;
                cursor: pointer;
                display: inline-block;
                font-family: "Roboto", Arial;
                font-size: 16px;
                padding: 15px;
                width: 100%;
                transition: all 0.3s ease;
              }
              .popup-contenedor input[type="submit"]:hover {
                background: #1976D2;
              }
              .aviso {
                    color: rgb(143, 186, 202);
                }
                a{
                    color: rgb(80, 119, 136);
                    text-decoration:none;
                    line-height:normal;
                    font-weight:bold;
                    -webkit-transition:all 500ms ease;
                    -o-transition:all 500ms ease;
                    transition:all 500ms ease;
            }

            a:hover {
                    color: orange;
}-
        </style>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <script src="http://code.jquery.com/jquery-latest.js"></script>
        <link rel="stylesheet" href="dist/sweetalert.css" type="text/css">
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
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
                        <a href="../Registro/CerrarSesion.jsp">Cerrar sesión</a>
                    </nav>
            </div>
        </header>
            <br><br>
            <section class="contenido wrapper">
                <div class="desarrollo">
                    <div class="titulo">
                    <svg viewBox="0 0 800 600">
                        <text text-anchor="middle"
                              x="50%"
                              y="35%"
                              class="text--line" style="color: #BBDEFB"
                              >
                          Reporte de
                        </text>
                        <text text-anchor="middle"
                              x="50%"
                              y="68%"
                              class="text--line2"
                              >
                          Eventos
                        </text>


                      <g class="g-ants">
                        <use xlink:href="#s-text"
                          class="text-copy"></use>     
                        <use xlink:href="#s-text"
                          class="text-copy"></use>     
                        <use xlink:href="#s-text"
                          class="text-copy"></use>     
                        <use xlink:href="#s-text"
                          class="text-copy"></use>     
                        <use xlink:href="#s-text"
                          class="text-copy"></use>     
                      </g>


                    </svg>
                    </div>
                
                    <div class="textoB">
                        <br>
                        <h1>¡Bienvenido!</h1><br>
                        <p>Si observas algo fuera de lo normal haznoslo saber con un reporte, juntos podemos mejorar Anicare.</p>
                        <br><br>
            <a href="#popupi">Contactanos!</a>
                     </div>
                </div>
                
            </section>   
            <div id="popupi">
                    <div class="popup-contenedor">
                        <a class="popup-cerrar" href="#">X</a>
                        <form action="../Registro/inicio.jsp"  method="POST">
                            <center>
                                Envianos un correo a anicare@gmail.com<br>
                                Tambien puedes comunicarte al numero 55 0000 0000
                        </form>
                        
                      </div>
            </div>
            
    </body>
</html>
