<?php
/* ------------------------------------------------
  ARCHIVO: producto.php
  DESCRIPCION: Contiene la vista principal del módulo de producto.
  FECHA DE CREACIÓN: 13/07/2017
 * 
  ------------------------------------------------ */
// Setear el título HTML de la página
$nombresistema = $this->session->userdata("nombresistema");
print "<script>document.title = '$nombresistema - Producto'</script>";
date_default_timezone_set("America/Guayaquil");

  $parametro = &get_instance();
  $parametro->load->model("Parametros_model");
  $tarifaiva = $parametro->Parametros_model->iva_get()->valor;


?>

<script type='text/javascript' language='javascript'>

    $(document).ready(function () {

/*
    $('#dataTablePro').dataTable();    
*/
    $('#dataTablePro').DataTable({
      'language': {
        'url': base_url + 'public/json/language.spanish.json'
      }
    }); 
      /* CARGA DE DATOS EN EL DATATABLE */
      /*
      var dt_alm =  $('#dataTablePro').dataTable({
                      
                      "language":{  "lengthMenu":"Mostrar _MENU_ registros por página.",
                                    "zeroRecords": "Lo sentimos. No se encontraron registros.",
                                    "info": "Mostrando página _PAGE_ de _PAGES_",
                                    "infoEmpty": "No hay registros aún.",
                                    "infoFiltered": "(filtrados de un total de _MAX_ registros)",
                                    "search" : "Búsqueda",
                                    "LoadingRecords": "Cargando ...",
                                    "Processing": "Procesando...",
                                    "SearchPlaceholder": "Comience a teclear...",
                                    "paginate": { "previous": "Anterior",
                                                  "next": "Siguiente", }
                                  },
                      'ajax': "Producto/listadoDataPro",
                      'columns': [
                          {"data": "id"},
                          {"data": "codbarra"},
                          {"data": "codauxiliar"},
                          {"data": "nombre"},
                          {"data": "existencia"},  
                          {"data": "preciocompra"},  
                          {"data": "precioventa"}, 
                          {"data": "ver"}
                      ]
      });
*/





      /* ABRIR VENTANA PARA EDITAR LOS DATOS DEL PRODUCTO */
      $(document).on('click', '.pro_ver', function(){
          id = $(this).attr('id');
          //alert(id);
          $.ajax({
             type: "POST",
             dataType: "json",
             url: "<?php print $base_url;?>producto/tmp_pro",
             data: {id: id},
             success: function(json) {
                if (parseInt(json.resu) == 1) {
                   location.replace("<?php print $base_url;?>producto/pro_edit");
                } else {
                   alert("Error de conexión");
                }
             }
          }); 
      })

      /* ELIMINAR PRODUCTO*/
      $(document).on('click', '.pro_del', function(){
          id = $(this).attr('id');
          $.ajax({
           type: "POST",
           dataType: "json",
           url: "<?php echo base_url('producto/tmp_pro');?>",
           data: {id: id},
           success: function(json) {
              $.fancybox.open({
                type: "ajax",
                width: 550,
                height: 550,
                ajax: {
                   dataType: "html",
                   type: "POST"
                },
                href: "<?php echo base_url('producto/del_pro');?>" 
              });
           }
        });
      })



});




 

    

</script>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        <i class="fa fa-shopping-bag"></i> Producto
      </h1>
      <ol class="breadcrumb">
        <li><a href="<?php print $base_url ?>inicio"><i class="fa fa-dashboard"></i> Inicio</a></li>
        <li class="active"><a href="<?php print $base_url ?>producto">Producto</a></li>
        
      </ol>
    </section>

    <!-- Main content -->
    <section class="content" id="app_producto">
        <div class="row" >
            <div class="col-md-12">
                <div class="box box-danger">
                    <div class="box-header with-border">
                      <h3 class="box-title"></i> Listado de Productos</h3>
                      <div class="pull-right"> 
                        <a class="btn btn-warning btn-grad"  title="Carga Masiva de Productos" v-on:click="abrir_ventana()"><i class="fa fa-list" aria-hidden="true"></i> Carga Masiva </a>
                        <a class="btn btn-primary btn-grad" target="_blank" href="<?php print $base_url;?>producto/reporte" data-original-title="" title=""><i class="fa fa-bars" aria-hidden="true"></i> Reporte </a>
                        <a class="btn btn-danger btn-grad" target="_blank" href="<?php print $base_url;?>producto/agotado" data-original-title="" title=""><i class="fa fa-sort-amount-desc" aria-hidden="true"></i> Agotados </a>
                        <a class="btn btn-success btn-grad" href="<?php print $base_url;?>producto/agregar" data-original-title="" title=""><i class="fa fa-plus-square"></i> Añadir </a>
                      </div>
                    </div>
                    <div class="box-body">

                      <div class="row" v-if="carga_masiva">
                        <div class="col-md-7">
                            <div class="col-md-2">
                              <a href="<?php echo base_url() ?>public/doc/FORMATO_PRODUCTO_INV.xls" class="btn btn-warning btn-sm">Plantilla</a>
                                </div>
                               <div class="col-md-10">
                              <label>Archivo Excel:
                                <input type="file" id="file" ref="file" v-on:change="handleFileUpload()"/>
                              </label>
                              <button v-on:click="submitFile()">Cargar Archivo</button>
                            </div>
                        </div>
                        <div class="col-md-4">
                          <div class="row">
                          <div class="col-md-4">
                            Almacen:
                            <select class="form-control" placeholder="Almacen cargar Inventario" title="Almacen cargar Inventario" id="select_almacen" v-on:change="cargado_todo()" v-model="almacen">
                              <option v-for="data in almacenes" v-bind:value="data.almacen_id">{{data.almacen_nombre}}</option>
                              <option selected="true" value="">Seleccione un almacen para continuar..</option>
                            </select>
                          </div>
                           <div class="col-md-4">
                            Acción:
                              <select class="form-control" placeholder="Acción a Realizar con los Datos" title="Acción a Realizar con los Datos" id="select_accion"  v-model="accion" disabled>
                                <option v-for="data in acciones">{{data}}</option>
                                <option selected="true" value="">Seleccione una acción para iniciar...</option>
                              </select>
                          </div>
                          <div class="col-md-4">
                            <a class="btn btn-success" v-on:click="guardar_datos()" id="btn_guardar">Guardar Datos</a>
                          </div>
                          </div>
                        </div>
                      </div>



                                  <style type="text/css">
                                    .precarga {
                                        background:transparent url(img/cargando_desoltech.gif) center no-repeat;
                                     }
                                  </style>
                                  <div v-if="cargando" style="width: 140px; height: 120px" class="precarga">
                                    <a href="#">
                                      <img src="<?php echo base_url() ?>public/img/cargando_desoltech.gif" alt="texto descriptivo" />
                                    </a>
                                  </div>




                      <div class="row" v-if="carga_index">
                        <div class="col-xs-12">
                          <div class="box">
                            <div class="box-body table-responsive">
                              <table id="dataTablePro" class="table table-bordered table-hover">
                                <thead>
                                  <tr >
                                    <!-- <th>Id</th>   -->
                                    <th>Acción</th>
                                    <th>Cod Barra</th>
                                    <th>Cod Auxiliar</th>
                                    <th>Nombre</th>
                                    <th>Existencia</th>
                                    <th>Pre Compra</th>
                                    <th>Pre Venta</th>
                                    <th>Pre Venta c/IVA</th>
                                  </tr>
                                </thead>
                                <tbody>
                                  <?php foreach ($pro as $p): ?>
                                    <tr>
                                      <td>
                                        <div class="text-center">
                                          <a href="#" title="Ver" id="<?php print $p->pro_id ?>" class="btn btn-success btn-xs btn-grad pro_ver"><i class="fa fa-pencil-square-o"></i></a> 
                                          <a href="#" title="Eliminar" id="<?php print $p->pro_id; ?>" class="btn btn-danger btn-xs btn-grad pro_del"><i class="fa fa-trash-o"></i></a>
                                        </div>
                                      </td>
                                      <!-- <td><?php print $p->pro_id ?></td> -->
                                      <td><?php print $p->pro_codigobarra ?></td>
                                      <td><?php print $p->pro_codigoauxiliar ?></td>
                                      <td><?php print $p->pro_nombre ?></td>
                                      <td class="text-right"><?php print $p->pro_existencia ?></td>
                                      <td class="text-right"><?php print $p->pro_preciocompra ?></td>
                                      <td class="text-right"><?php print $p->pro_precioventa?></td>
                                      <td class="text-right"><?php print number_format($p->pro_precioventa * (1 + $tarifaiva), 6) ?></td>
                                    </tr>
                                  <?php endforeach ?>
                                </tbody>
                              </table>
                            </div>
                            <!-- /.box-body -->
                          </div>
                        </div>
                      </div>
                    </div>
                    <!-- /.box-body -->
                    <div  align="center" class="box-footer" v-if="carga_masiva">
                      <div class="row">
                        <div class="col-md-6">
                          <h5>Errores por que No se Ha podido Guardar la Información</h5>
                        </div>
                        <div class="col-md-6" >
                        </div>
                      </div>
                      <br>
                      <ul class="list-group">
                        <li class="list-group-item list-group-item-danger" v-for="error in errores">{{error}}</li>
                      </ul>
                    </div>
                </div>
              <!-- /.box -->
            </div>
            
           
        </div>
    </section>
    <!-- /.content -->
</div>
  <!-- /.content-wrapper -->

<!-- LIBRERIA DE VUEJS - CARLOS ZAMBRANO 22 DE 11 - 2018 -->
     <script type="text/javascript" src="<?php echo base_url() ?>public/js/js_vue/vue.js"></script>
     <script type="text/javascript" src="<?php echo base_url() ?>public/js/js_vue/vue-resource.min.js"></script>
     <script type="text/javascript" src="<?php echo base_url() ?>public/js/js_vue/vue-router.js"></script> 
     <script type="text/javascript" src="<?php echo base_url() ?>public/js/js_vue/sweetalert.min.js"></script>
     <script type="text/javascript" src="<?php echo base_url() ?>public/js/js_vue/axios.min.js"></script>


 <script type="text/javascript" src="<?php echo base_url() ?>public/js/js_vue/component/producto/producto_component.js"></script>
              