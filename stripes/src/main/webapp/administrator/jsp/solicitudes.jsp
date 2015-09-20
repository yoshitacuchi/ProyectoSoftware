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
        <script type="text/javascript" src="../js/solicitudes.js"></script>
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

                            <h1>Manejo de Solicitudes</h1>

                            <div class="form-group">
                                <label class="col-sm-2 control-label">Ordenar por</label>
                                <div class="col-sm-3">
                                    <select class="form-control" id="ordenarTabla">
                                        <option value="ordenarPorFecha">Fecha</option>
                                        <option value="ordenarPorSolicitud">Solicitud</option>
                                        <option value="ordenarporInmueble">Inmueble</option>
                                    </select>
                                </div>
                                <div class="col-sm-2">
                                    <button class="btn btn-block btn-info"><span class="glyphicon glyphicon-sort-by-attributes"></span> Ordenar</button>
                                </div>
                            </div>

                            <table class="table" id="solicitudInmueble">
                                <thead>
                                    <tr>
                                        <th>Fecha</th>
                                        <th>Estado</th>
                                        <th>Solicitud</th>
                                        <th>Inmueble</th>
                                        <th>Detalle</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>19/09/15</td>
                                        <td>No procesado</td>
                                        <td>0675</td>
                                        <td>CA003</td>
                                        <td> <button class="btn btn-info btn-block" data-toggle="modal" href="#ver-detalle-1"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> Ver</button> </td>
                                    </tr>
                                    <tr>
                                        <td>19/09/15</td>
                                        <td>No procesado</td>
                                        <td>0675</td>
                                        <td>CA003</td>
                                        <td> <button class="btn btn-info btn-block"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> Ver</button> </td>
                                    </tr>
                                    <tr>
                                        <td>19/09/15</td>
                                        <td>No procesado</td>
                                        <td>0675</td>
                                        <td>CA003</td>
                                        <td> <button class="btn btn-info btn-block"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> Ver</button> </td>
                                    </tr>
                                    <tr>
                                        <td>19/09/15</td>
                                        <td>No procesado</td>
                                        <td>0675</td>
                                        <td>CA003</td>
                                        <td> <button class="btn btn-info btn-block"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> Ver</button> </td>
                                    </tr>
                                </tbody>
                            </table>

                            <!--Modal ausar para los detalles de Solicitud-->
                            <div class="modal fade" id="ver-detalle-1" role="dialog" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                                ×
                                            </button>
                                            <h4 class="modal-title">
                                                Detalle Solicitud del Solicitante
                                            </h4>
                                        </div>
                                        <div class="modal-body form-horizontal" id="contenidoSolicitud">
                                            <div class="form-group">
                                                <label class="col-sm-6">Código Solicitud</label>
                                                <div class="col-sm-6">
                                                    <div id="codigoSolicitud">0074</div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-6">Fecha</label>
                                                <div class="col-sm-6">
                                                    <div id="fechaSolicitud">19/09/2015 </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-6">Nombre</label>
                                                <div class="col-sm-6">
                                                    <div id="nombreSolicitud">Emerson</div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-6">Apellido </label>
                                                <div class="col-sm-6">
                                                    <div id="apellidoSolicitud">Emerson</div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-6">Dirección</label>
                                                <div class="col-sm-6">
                                                    <div id="direccionSolicitud">Emerson</div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-6">Teléfono</label>
                                                <div class="col-sm-6">
                                                    <div id="telefonoSolicitud">Emerson</div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-6">Correo Electrónico</label>
                                                <div class="col-sm-6">
                                                    <div id="correoSolicitud">emersontubb@hotmail.com</div>
                                                </div>
                                            </div>
                                            <hr>
                                            <div class="form-group">
                                                <label class="col-sm-6">Código Inmueble</label>
                                                <div class="col-sm-6">
                                                    <div id="codigoInmueble">DPO02</div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-6">Operación</label>
                                                <div class="col-sm-6">
                                                    <div id="operacionSolicitud">Alquiler</div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-6">Fecha propuesta</label>
                                                <div class="col-sm-6">
                                                    <div id="fechaPropuesta">20/09/2015</div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-6">Hora propuesta</label>
                                                <div class="col-sm-6">
                                                    <div id="horaPropuesta">13:00</div>
                                                </div>
                                            </div>                                                
                                        </div>
                                        <div class="modal-footer">                                                
                                            <input type="button" class="btn btn-primary" id="aceptarVisita" href="#modalAceptarVisita" data-toggle="modal"  value="Aceptar">
                                            <input type="button" class="btn btn-success" id="verificarSolicitud" href="#modalAceptarSolicitud" data-toggle="modal" value="Verificar">
                                            <input type="button" class="btn btn-danger" id="rechazarVisita" href="#modalRechazarVisita" data-toggle="modal" value="Rechazar">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--fin Modal detalle de Solicitud-->

                            <!--Modal Verificar Solicitud-->
                            <div class="modal fade" id="modalAceptarSolicitud" role="dialog" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                                ×
                                            </button>
                                            <h4 class="modal-title">
                                                Verificación de Solicitud
                                            </h4>
                                        </div>
                                        <div class="modal-body form-horizontal">
                                            <div class="form-group">
                                                <label class="col-sm-6">Estado Inmueble</label>
                                                <div class="col-sm-6">
                                                    <label>
                                                        <input type="checkbox" id="opcion1" value="opcion1">
                                                        Verificar
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-6">Disponibilidad Fecha</label>
                                                <div class="col-sm-6">
                                                    <label>
                                                        <input type="checkbox" id="opcion2" value="opcion1">
                                                        Verificar
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-6">Disponibilidad Vendedor</label>
                                                <div class="col-sm-6">
                                                    <label>
                                                        <input type="checkbox" id="opcion3" value="opcion1">
                                                        Verificar
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="modal-footer">                                                
                                            <input type="button" class="btn btn-primary" id="aceptarSolicitud" value="Aceptar">                                            
                                            <input type="button" class="btn btn-danger" data-dismiss="modal" value="Cancelar">
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!--Modal Aceptar Solicitud-->
                            <div class="modal fade" id="modalAceptarVisita" role="dialog" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                                ×
                                            </button>
                                            <h4 class="modal-title">
                                                Programación Visita
                                            </h4>
                                        </div>
                                        <div class="modal-body form-horizontal">
                                            
                                            <div class="form-group">
                                                <label class="col-sm-3">Para</label>
                                                <div class="col-sm-9">                                                    
                                                    <input type="email" value="emersontubb@hotmail.com"  class="form-control" disabled/>
                                                </div>
                                            </div>
                                            
                                            <div class="form-group">
                                                <label class="col-sm-3">DNI visitante</label>
                                                <div class="col-sm-9">                                                    
                                                    <input type="text" value="4332345"  class="form-control" disabled/>
                                                </div>
                                            </div>
                                            
                                            <div class="form-group">
                                                <label class="col-sm-3">Nombre visitante</label>
                                                <div class="col-sm-9">                                                    
                                                    <input type="text" value="Emerson Quecara"  class="form-control" disabled/>
                                                </div>
                                            </div>
                                            
                                            <div class="form-group">
                                                <label class="col-sm-3">Fecha Visita</label>
                                                <div class="col-sm-9">      
                                                    <input type="text" id="fechaVisita"  class="form-control" />
                                                </div>
                                            </div>
                                            
                                            <div class="form-group">
                                                <label class="col-sm-3">Vendedor</label>
                                                <div class="col-sm-9">      
                                                    <select class="form-control" id="vendedorVisita">
                                                        <option>Juanito</option>
                                                        <option>Pepito</option>
                                                        <option>Jorjito</option>
                                                    </select>
                                                </div>
                                            </div>
                                            
                                            <div class="form-group">
                                                <label class="col-sm-12">Comentario</label>
                                                <div class="col-sm-12">
                                                    <textarea class="form-control" rows="3"></textarea>
                                                </div>                                                
                                            </div>
                                            
                                        </div>
                                        <div class="modal-footer">                                                
                                            <input type="button" class="btn btn-primary" id="aceptarVisita" value="Enviar">                                           
                                            <input type="button" class="btn btn-danger" data-dismiss="modal" value="Cancelar">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            <!--Modal Rechaza Visita-->
                            <div class="modal fade" id="modalRechazarVisita" role="dialog" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                                ×
                                            </button>
                                            <h4 class="modal-title">
                                                Rechaza Visita
                                            </h4>
                                        </div>
                                        <div class="modal-body form-horizontal">
                                            
                                            <div class="form-group">
                                                <label class="col-sm-3">Para</label>
                                                <div class="col-sm-9">                                                    
                                                    <input type="email" value="emersontubb@hotmail.com"  class="form-control" disabled/>
                                                </div>
                                            </div>
                                            
                                            <div class="form-group">
                                                <label class="col-sm-3">DNI visitante</label>
                                                <div class="col-sm-9">                                                    
                                                    <input type="text" value="4332345"  class="form-control" disabled/>
                                                </div>
                                            </div>
                                            
                                            <div class="form-group">
                                                <label class="col-sm-3">Nombre visitante</label>
                                                <div class="col-sm-9">                                                    
                                                    <input type="text" value="Emerson Quecara"  class="form-control" disabled/>
                                                </div>
                                            </div>
                                            
                                            <div class="form-group">
                                                <label class="col-sm-12">Motivo</label>
                                                <div class="col-sm-12">
                                                    <textarea class="form-control" rows="3"></textarea>
                                                </div>                                                
                                            </div>
                                            
                                        </div>
                                        <div class="modal-footer">                                                
                                            <input type="button" class="btn btn-primary" id="rechazarVisita" value="Enviar">                                           
                                            <input type="button" class="btn btn-danger" data-dismiss="modal" value="Cancelar">
                                        </div>
                                    </div>
                                </div>
                            </div>

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
