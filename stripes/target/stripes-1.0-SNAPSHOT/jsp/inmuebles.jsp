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

                            <ul class="nav navbar-nav navbar-left">
                                <li>
                                    <a href="#modal-container-publish" data-toggle="modal" role="button">Publicar Anuncio</a>
                                </li>	
                                <li>
                                    <a href="jsp/gallery.jsp" data-toggle="modal" role="button">Gallery</a>
                                </li>
                            </ul>
                            <!-- fin option para usuario de rol: publicador -->

                            <ul class="nav navbar-nav navbar-right">



                                <li class="dropdown" id="btn-profile-options">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                        <img src="images/profile1.jpg" alt="Robert" class="profile"> Robert Vargas<strong class="caret"></strong></a>
                                    <ul class="dropdown-menu">
                                        <li>
                                            <a href="#">Acerca de Nosotros</a>
                                        </li>
                                        <li>
                                            <a href="#">Misión y Visión</a>
                                        </li>
                                        <li class="divider">
                                        <li>
                                            <a href="#">Ayuda</a>
                                        </li>
                                        <li class="divider">
                                        <li>
                                            <a href="#">Sign Out</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                            <!-- fin opciones para usuario de rol: interesado -->
                        </div>
                        <!-- fin opciones de usuario -->

                    </nav>
                </div>
            </div> 
            <!-- fin navbar -->

            <div class="row searchByProperty">

                <div class="col-md-10 col-md-offset-1">
                    <div class="tabbable" id="tabs-head">
                        <ul class="nav nav-tabs">
                            <li class="active">
                                <a href="#panel-property" data-toggle="tab">Buscar por Propiedades</a>
                            </li>
                            <li>
                                <a href="#panel-map" data-toggle="tab">Busqueda por Mapa</a>
                            </li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane active" id="panel-property">
                                <ul class="list-inline text-center">
                                    <li>
                                        <div>Tipo de propiedad <span>></span> </div>
                                    </li>
                                    <li>
                                        <div class="btn-group">	
                                            <button class="btn btn-default">
                                                Casa
                                            </button> 
                                            <button data-toggle="dropdown" class="btn btn-default dropdown-toggle">
                                                <span class="caret"></span>
                                            </button>
                                            <ul class="dropdown-menu">
                                                <li>
                                                    <a href="#">3 Dormitorios</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="btn-group">	
                                            <button class="btn btn-default">
                                                Departamento
                                            </button> 
                                            <button data-toggle="dropdown" class="btn btn-default dropdown-toggle">
                                                <span class="caret"></span>
                                            </button>
                                            <ul class="dropdown-menu">
                                                <li>
                                                    <a href="#">1 Dormitorios</a>
                                                </li>
                                                <li>
                                                    <a href="#">2 Dormitorios</a>
                                                </li>
                                                <li>
                                                    <a href="#">3 Dormitorios</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="btn-group">	
                                            <button class="btn btn-default">
                                                Local
                                            </button> 
                                            <button data-toggle="dropdown" class="btn btn-default dropdown-toggle">
                                                <span class="caret"></span>
                                            </button>
                                            <ul class="dropdown-menu">
                                                <li>
                                                    <a href="#">1 ambiente</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </li>
                                </ul>							
                            </div>
                            <div class="tab-pane" id="panel-map">
                                <p>
                                    Busqueda por mapa
                                </p>
                                <div class="col-md-3">
                                    <div class="list-group">
                                        <a href="#" class="list-group-item active">Ciudades</a>
                                        <div class="list-group-item">
                                            Lima
                                        </div>
                                        <div class="list-group-item">
                                            Carabayllo
                                        </div>
                                        <div class="list-group-item">
                                            Comas
                                        </div> 
                                        <div class="list-group-item">
                                            San Borja
                                        </div>
                                        <div class="list-group-item">
                                            Magdalena
                                        </div> 
                                        <div class="list-group-item">
                                            Jesus Maria
                                        </div>
                                        <div class="list-group-item">
                                            Independencia
                                        </div> 
                                    </div>
                                </div>
                                <div class="col-md-8">
                                    <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d176566.7342986298!2d-77.00423065965231!3d-12.070300078795956!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1ses-419!2s!4v1442671388890" width="100%" height="480" frameborder="0" style="border:0" allowfullscreen></iframe>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 ">

                </div>
            </div>

            <div class="row">
                <div class="col-md-2">

                    <h2>Búsqueda</h2>

                    <div class="panel-group" id="filters-1">
                        <div class="panel">
                            <div class="panel-section">Ubicación</div>
                            <div class="panel-heading">
                                <a class="panel-title" data-toggle="collapse" data-parent="#filters" href="#filter-location">Distrito</a>
                            </div>
                            <div id="filter-location" class="panel-collapse collapse in">	
                                <div class="radio">
                                    <label><input type="radio" name="opt-location">Lima</label>
                                </div>
                                <div class="radio">
                                    <label><input type="radio" name="opt-location">Los Olivos</label>
                                </div>
                                <div class="radio">
                                    <label><input type="radio" name="opt-location">Miraflores</label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- fin primer fil de ubicacion -->

                    <div class="panel-group" id="filters-2">
                        <div class="panel">

                            <div class="panel-section">Características</div>

                            <div class="panel-heading">
                                <a class="panel-title collapsed" data-toggle="collapse" data-parent="#filters" href="#filter-operation">Tipo de Operación</a>
                            </div>
                            <div id="filter-operation" class="panel-collapse collapse in">
                                <div class="checkbox">
                                    <label><input type="checkbox" name="opt-operation">Venta</label>
                                </div>
                                <div class="checkbox">
                                    <label><input type="checkbox" name="opt-operation">Alquiler</label>
                                </div>
                            </div>
                            <!-- fin opciones por tipo de operacion -->

                        </div>
                    </div>
                    <!-- fin segundo filtro de caracteristicas -->

                    <div class="panel-group" id="filters-3">
                        <div class="panel">

                            <div class="panel-section">Precio</div>

                            <div class="panel-heading">
                                <a class="panel-title collapsed" data-toggle="collapse" data-parent="#filters" href="#filter-initialprice">Desde</a>
                            </div>
                            <div id="filter-initialprice" class="panel-collapse collapse in">
                                <!-- Slider -->
                                <div id="slider"></div>
                                <label>S/.</label><input id="one" type="text" value="0"></input>
                                <label>S/.</label><input id="two" type="text" value="7000"></input>
                            </div>

                        </div>
                    </div>
                    <!-- fin tercer filtro de caracteristicas -->

                    <div class="panel-group" id="filters-4">
                        <div class="panel">

                            <div class="panel-section">Baños y Dormitorios</div>

                            <div class="panel-heading">
                                <a class="panel-title collapsed" data-toggle="collapse" data-parent="#filters" href="#filter-bathrooms">Cant. de Baños</a>
                            </div>
                            <div id="filter-bathrooms" class="panel-collapse collapse in">
                                <div class="radio">
                                    <label><input type="radio" name="opt-bathroom-1">1</label>
                                </div>
                                <div class="radio">
                                    <label><input type="radio" name="opt-bathroom-2">2</label>
                                </div>
                                <div class="radio">
                                    <label><input type="radio" name="opt-bathroom-3">3</label>
                                </div>
                            </div>

                            <div class="panel-heading">
                                <a class="panel-title collapsed" data-toggle="collapse" data-parent="#filters" href="#filter-bedrooms">Cant. de Dormitorios</a>
                            </div>
                            <div id="filter-bedrooms" class="panel-collapse collapse in">
                                <div class="radio">
                                    <label><input type="radio" name="opt-bedrooms-1">1</label>
                                </div>
                                <div class="radio">
                                    <label><input type="radio" name="opt-bedrooms-2">2</label>
                                </div>
                                <div class="radio">
                                    <label><input type="radio" name="opt-bedrooms-3">3</label>
                                </div>
                            </div>

                        </div>
                    </div>
                    <!-- fin tercer filtro de caracteristicas -->
                </div>
                <div class="col-md-10">
                    <h2>Inmuebles encontrados en Jachis</h2>
                    <ul class="breadcrumb">
                        <li>
                            <a href="#">Ubicacion: Lima</a> 
                        </li>
                        <li>
                            <a href="#">Tipo de inmueble: Dormitorio</a> 
                        </li>
                        <li class="active">
                            Cant. de Dormitorios: 3
                        </li>
                    </ul>
                    <div class="productos row">
                        <div class="col-md-4 ">
                            <div class="thumbnail">
                                <img alt="Carousel Bootstrap First" src="images/department-4.jpg" />
                                <div class="caption">
                                    <h4>
                                        Departamento en Miraflores
                                    </h4>
                                    <p>
                                        Precio: $80,000
                                    </p>
                                    <p>
                                        <a class="btn btn-primary" href="#">Comprar</a> <a class="btn" href="#">Seguir</a>
                                    </p>
                                </div>						
                            </div>						
                        </div>
                        <div class="col-md-4">
                            <div class="thumbnail">
                                <img alt="Carousel Bootstrap First" src="images/department-1.jpg" />
                                <div class="caption">
                                    <h4>
                                        Departamento en Miraflores
                                    </h4>
                                    <p>
                                        Precio: $80,000
                                    </p>
                                    <p>
                                        <a class="btn btn-primary" href="#">Comprar</a> <a class="btn" href="#">Seguir</a>
                                    </p>
                                </div>						
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="thumbnail">
                                <img alt="Carousel Bootstrap First" src="images/department-4.jpg" />
                                <div class="caption">
                                    <h4>
                                        Departamento en Miraflores
                                    </h4>
                                    <p>
                                        Precio: $80,000
                                    </p>
                                    <p>
                                        <a class="btn btn-primary" href="#">Comprar</a> <a class="btn" href="#">Seguir</a>
                                    </p>
                                </div>						
                            </div>
                        </div>
                    </div>
                    <div class="productos row">
                        <div class="col-md-4">
                            <div class="thumbnail">
                                <img alt="Carousel Bootstrap First" src="images/department-4.jpg" />
                                <div class="caption">
                                    <h4>
                                        Departamento en Miraflores
                                    </h4>
                                    <p>
                                        Precio: $80,000
                                    </p>
                                    <p>
                                        <a class="btn btn-primary" href="#">Comprar</a> <a class="btn" href="#">Seguir</a>
                                    </p>
                                </div>						
                            </div>						
                        </div>
                        <div class="col-md-4">
                            <div class="thumbnail">
                                <img alt="Carousel Bootstrap First" src="images/department-1.jpg" />
                                <div class="caption">
                                    <h4>
                                        Departamento en Miraflores
                                    </h4>
                                    <p>
                                        Precio: $80,000
                                    </p>
                                    <p>
                                        <a class="btn btn-primary" href="#">Comprar</a> <a class="btn" href="#">Seguir</a>
                                    </p>
                                </div>						
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="thumbnail">
                                <img alt="Carousel Bootstrap First" src="images/department-4.jpg" />
                                <div class="caption">
                                    <h4>
                                        Departamento en Miraflores
                                    </h4>
                                    <p>
                                        Precio: $80,000
                                    </p>
                                    <p>
                                        <a class="btn btn-primary" href="#">Comprar</a> <a class="btn" href="#">Seguir</a>
                                    </p>
                                </div>						
                            </div>
                        </div>
                    </div>
                    <div class="productos row">
                        <div class="col-md-4">
                            <div class="thumbnail">
                                <img alt="Carousel Bootstrap First" src="images/department-4.jpg" />
                                <div class="caption">
                                    <h4>
                                        Departamento en Miraflores
                                    </h4>
                                    <p>
                                        Precio: $80,000
                                    </p>
                                    <p>
                                        <a class="btn btn-primary" href="#">Comprar</a> <a class="btn" href="#">Seguir</a>
                                    </p>
                                </div>						
                            </div>						
                        </div>
                        <div class="col-md-4">
                            <div class="thumbnail">
                                <img alt="Carousel Bootstrap First" src="images/department-1.jpg" />
                                <div class="caption">
                                    <h4>
                                        Departamento en Miraflores
                                    </h4>
                                    <p>
                                        Precio: $80,000
                                    </p>
                                    <p>
                                        <a class="btn btn-primary" href="#">Comprar</a> <a class="btn" href="#">Seguir</a>
                                    </p>
                                </div>						
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="thumbnail">
                                <img alt="Carousel Bootstrap First" src="images/department-4.jpg" />
                                <div class="caption">
                                    <h4>
                                        Departamento en Miraflores
                                    </h4>
                                    <p>
                                        Precio: $80,000
                                    </p>
                                    <p>
                                        <a class="btn btn-primary" href="#">Comprar</a> <a class="btn" href="#">Seguir</a>
                                    </p>
                                </div>						
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <footer>
                <div class="row">
                    <div class="col-md-4">
                        <ul>
                            <li>
                                <a href="">Quienes Somos</a>
                            </li>
                        </ul>
                    </div>
                    <div class="col-md-4 text-center">
                        Copyright FISI UNMSM - ING. SOFTWARE
                    </div>
                    <div class="col-md-4">
                        <a href="#">Administrador</a>
                    </div>
                </div>
            </footer>
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
