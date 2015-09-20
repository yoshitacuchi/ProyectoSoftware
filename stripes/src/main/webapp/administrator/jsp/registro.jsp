<%-- 
    Document   : index
    Created on : 19/09/2015, 12:08:49 PM
    Author     : Marco
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Administrador</title>
        <meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1">

        <link href="../css/bootstrap.min.css" rel="stylesheet">
        <link href="../css/jquery-ui.min.css" rel="stylesheet">
        <link href="../css/style.css" rel="stylesheet">

        <script type="text/javascript" src="../js/jquery.min.js"></script>
        <script type="text/javascript" src="../js/jquery-ui.min.js"></script>
        <script type="text/javascript" src="../js/bootstrap.min.js"></script>
        <script type="text/javascript" src="../js/inmueble.js"></script>
    </head>
    <body>
        <div class="row">
            <div class="col-md-12">
                <jsp:include page="../includes/navbar.jsp" /> 
            </div>
        </div>

        <div id="wrapper">

            <!-- Menu -->
            <div id="sidebar-wrapper">
                <jsp:include page="../includes/menu.jsp" />                
            </div>
            <!-- /#menu -->

            <!-- Page Content -->
            <div id="page-content-wrapper">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <h1>Registro Inmueble</h1>

                            <form class="form-horizontal">

                                <div class="form-group">
                                    <label class="col-sm-2 control-label">Tipo</label>
                                    <div class="col-sm-10">
                                        <select class="form-control" id="tipoInmueble">
                                            <option value="departamento">Departamento</option>
                                            <option value="casa">Casa</option>
                                            <option value="local">Local</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-2 control-label">Código</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" placeholder="Ejm: DPO21" id="codigoInmueble">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-2 control-label">Dirección</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" placeholder="Ejm: Calle Los Pericos" id="direccionInmueble">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-2 control-label">Distrito</label>
                                    <div class="col-sm-10">
                                        <select class="form-control" id="distritoInmueble">
                                            <option>Lima</option>
                                            <option>San Miguel</option>
                                            <option>Magdalena</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-2 control-label">Operación</label>
                                    <div class="col-sm-10">
                                        <select class="form-control" id="operacionInmueble">
                                            <option>Compra</option>
                                            <option>Venta</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-2 control-label">Precio</label>
                                    <div class="col-sm-10">
                                        <input type="number" class="form-control" placeholder="Ejm: S/.1000.00" id="precioInmueble">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-2 control-label">Número de Pisos</label>
                                    <div class="col-sm-10">
                                        <select class="form-control" id="banosInmueble">
                                            <option>1 piso</option>
                                            <option>2 pisos</option>
                                            <option>3 pisos</option>
                                            <option>4 pisos</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-2 control-label">Número de Baños</label>
                                    <div class="col-sm-10">
                                        <select class="form-control" id="banosInmueble">
                                            <option>1</option>
                                            <option>2</option>
                                            <option>3</option>
                                            <option>4</option>
                                            <option>5</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-2 control-label">Número de Dormitorios</label>
                                    <div class="col-sm-10">
                                        <select class="form-control" id="dormitoriosInmueble">
                                            <option>1</option>
                                            <option>2</option>
                                            <option>3</option>
                                            <option>4</option>
                                            <option>5</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-2 control-label">Estado</label>
                                    <div class="col-sm-10">
                                        <select class="form-control" id="estadoInmueble">
                                            <option>Vendido</option>
                                            <option>Vendido</option>
                                            <option>Vendido</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-2 control-label">
                                        Imágenes
                                    </label>
                                    <input type="file" id="imagenesInmueble" multiple/>                                    
                                </div>

                                <div class="form-group">
                                    <div class="col-sm-3 col-sm-offset-9 text-right">
                                        <button type="submit" class="btn btn-primary">
                                            Registrar
                                        </button>
                                        <button type="submit" class="btn btn-warning">
                                            Cancelar
                                        </button>
                                    </div>
                                </div>
                            </form>
                            <a href="#menu-toggle" class="btn btn-default" id="menu-toggle">Esconder Menú</a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /#page-content-wrapper -->

        </div>
        <!-- /#wrapper -->
    </body>
</html>
