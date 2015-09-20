<%@page import="javax.servlet.http.HttpServlet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inmobiliaria</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/jquery-ui.min.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">

        <script type="text/javascript" src="js/jquery.min.js"></script>
        <script type="text/javascript" src="js/jquery-ui.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
        <script type="text/javascript" src="js/scripts.js"></script>

        <%@taglib prefix="s" uri="http://stripes.sourceforge.net/stripes.tld"%>
        <script>
            $(document).ready(function() {

                var formAlumnos = $("[name='formAlumnos']");
                formAlumnos.submit(function() {
                    return false;
                });

                $("#registrar").click(function() {
                    var formArray = formAlumnos.serializeArray();
                    $.post("registrar.action", formArray, function(resp) {
                        alert(resp);
                    });
                });

            });
        </script>
    </head>
    <body>
        <!--<h1><a href="jsp/hello.jsp" >CRUD</a> </h1>-->

        <div class="container-fluid">

            <div class="row">
                <div class="col-md-12">
                    <div class="nav-space"></div>
                    <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
                        <div class="navbar-header">						 
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#colapse">
                                <span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
                            </button> 

                            <a class="navbar-brand" href="index.html">Jachis</a>
                            <!-- logo -->
                        </div>

                        <div class="collapse navbar-collapse" id="colapse">

                            <ul class="nav navbar-nav">
                                <li class="active">
                                    <a class="btn btn-primary"  href="#modalRegistro" data-toggle="modal" >Registrate</a>
                                </li>
                            </ul>

                            <!-- fin option para usuario de rol: publicador -->

                            <form class="navbar-form navbar-right" role="search">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">
                                        Email
                                    </label>
                                    <input type="email" class="form-control" id="loginEmail" />
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">
                                        Contraseña
                                    </label>
                                    <input type="password" class="form-control" id="loginPassword"/>
                                </div> 
                                <input type="submit" class="btn btn-default" value="Ingresar">
                            </form>
                            <!-- fin opciones para usuario de rol: interesado -->
                        </div>
                        <!-- fin opciones de usuario -->

                    </nav>
                </div>
            </div> 
            <!-- fin navbar -->

            <div class="row">
                <div class="col-md-12">
                    <div class="carousel slide" id="carousel-departments">
                        <div class="carousel-inner">
                            <div class="item active">
                                <img alt="Carousel Bootstrap First" src="http://lorempixel.com/1200/550/sports/3" />
                                <div class="carousel-caption">
                                    <h4>
                                        Los mejores depas en Lima
                                    </h4>                                    
                                </div>
                            </div>
                            <div class="item">
                                <img alt="Carousel Bootstrap First" src="http://lorempixel.com/1200/550/sports/1" />
                                <div class="carousel-caption">
                                    <h4>
                                        Osea Hello
                                    </h4>                                   
                                </div>
                            </div>
                            <div class="item">
                                <img alt="Carousel Bootstrap First" src="http://lorempixel.com/1200/550/sports/2" />
                                <div class="carousel-caption">
                                    <h4>
                                        Para que más
                                    </h4>                                    
                                </div>
                            </div>
                        </div> 
                        <a class="left carousel-control" href="#carousel-departments" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> 
                        <a class="right carousel-control" href="#carousel-departments" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
                    </div>
                </div>
            </div>


            <footer>
                <div class="row">
                    <div class="col-md-12">
                        Desarrollado por Alumnos
                    </div>                    
                </div>
            </footer>

            <!--Modal ausar para los detalles de Solicitud-->
            <div class="modal fade" id="modalRegistro" role="dialog" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                ×
                            </button>
                            <h4 class="modal-title">
                                Registro Nuevo Usuario
                            </h4>
                        </div>
                        <div class="modal-body form-horizontal" id="registroNuevoUsuario">
                            <div class="form-group">
                                <label class="col-sm-6">Correo Electrónico</label>
                                <div class="col-sm-6">
                                    <input type="email" class="form-control"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-6">Contraseña</label>
                                <div class="col-sm-6">
                                    <input type="password" class="form-control" name="usuario.contrasena"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-6">Repetir Contraseña</label>
                                <div class="col-sm-6">
                                    <input type="password" class="form-control"/>
                                </div>
                            </div>
                            <hr>
                            <div class="form-group">
                                <label class="col-sm-6">Nombre</label>
                                <div class="col-sm-6">
                                    <input type="text" class="form-control"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-6">Apellido </label>
                                <div class="col-sm-6">
                                    <input type="text" class="form-control"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-6">DNI</label>
                                <div class="col-sm-6">
                                    <input type="number" class="form-control"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-6">Dirección</label>
                                <div class="col-sm-6">
                                    <input type="text" class="form-control"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-6">Teléfono</label>
                                <div class="col-sm-6">
                                    <input type="number" class="form-control"/>
                                </div>
                            </div>                                                              
                        </div>
                        <div class="modal-footer">                                                
                            <input type="button" class="btn btn-primary" id="registrarUsuario" value="Registrar">
                            <input type="button" class="btn btn-danger" id="cancelarRegistro" value="Cancelar">
                        </div>
                    </div>
                </div>
            </div>
            <!--fin Modal detalle de Solicitud-->


        </div>
        <!--        
        <s:errors/>
        <form id="formAlumnos" name="formAlumnos">
            <table>
                <tr>
                    <td>
                        Codigo
                    </td>
                    <td>
                        <input type="text" name="alumnos.codigo" />
                    </td>

                </tr>
                <tr>
                    <td>
                        Nombre
                    </td>
                    <td>
                        <input type="text" name="alumnos.nombre" />
                    </td>

                </tr>
                <tr>
                    <td>
                        Apellido
                    </td>
                    <td>
                        <input type="text" name="alumnos.apellidoP" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Edad
                    </td>
                    <td>
                        <input type="text" name="alumnos.edad" />
                    </td>

                </tr>
                <tr>
                    <td colspan="2">
                        <button id="registrar" >Registrar</button>

                    </td>

                </tr>

            </table>
        </form>
        -->

    </body>
</html>
