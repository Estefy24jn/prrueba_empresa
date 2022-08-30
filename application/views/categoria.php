<?php
/* ------------------------------------------------
  ARCHIVO: categoria.php
  DESCRIPCION: Contiene la vista principal del módulo de categoria.
  FECHA DE CREACIÓN: 06/07/2017
 * 
  ------------------------------------------------ */
// Setear el título HTML de la página
$nombresistema = $this->session->userdata("nombresistema");
print "<script>document.title = '$nombresistema - Categoria'</script>";
date_default_timezone_set("America/Guayaquil");
/* PERFILES DE ACCESO */



?>

<style type="text/css">

</style>

<script type='text/javascript' language='javascript'>

    $(document).ready(function () {

          /* AGREGAR CLASIFICACION */
        $(document).on('click', '.add_cat', function(){
          $.fancybox.open({
            type: "ajax",
            width: 550,
            height: 550,
            ajax: {
               dataType: "html",
               type: "POST"
            },
            href: "<?php echo base_url('categoria/add_cat');?>" 
          });
        });
           
        function conf_guar() {
          return  confirm("¿Confirma que desea guardar este registro?");
        }

      var dt_usu =  $('#dataTableCat').dataTable({
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
          'ajax': "Categoria/listadoDataCat",
          'columns': [
            
              {"data": "nombre"},
              {"data": "ver"}
          ]
      });
      /* MODIFICAR LA CATEGORIA */
      $(document).on('click', '.cat_ver', function(){
          id = $(this).attr('id');
        //  alert(id);
          
          $.ajax({
           type: "POST",
           dataType: "json",
           url: "<?php echo base_url('categoria/tmp_cat');?>",
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
                href: "<?php echo base_url('categoria/upd_cat');?>" 
              });
           }

        });
         
      })

      /* ELIMINAR LA CATEGORIA*/
      $(document).on('click', '.cat_del', function(){
          id = $(this).attr('id');
          $.ajax({
           type: "POST",
           dataType: "json",
           url: "<?php echo base_url('categoria/tmp_cat');?>",
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
                href: "<?php echo base_url('categoria/del_cat');?>" 
              });
           }

        });
          
         
      })

    }); 

  //  $tabla = '{"id":".$row[cat_id].","nombres":".$row[cat_descripcion].","ver":".$row[ver]."},';

</script>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        <i class="fa fa-sort-amount-asc"></i> Categoría 
      </h1>
      <ol class="breadcrumb">
        <li><a href="<?php print $base_url ?>inicio"><i class="fa fa-dashboard"></i> Inicio</a></li>
        <li class="active"><a href="<?php print $base_url ?>categoria">Categoría</a></li>
        
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="row">
            
            <div class="col-md-12">
                <div class="box box-danger">
                    <div class="box-header with-border">
                      <h3 class="box-title"></i> Datos de la Categoría</h3>
                      <div class="pull-right"> 

                          <button type="button" class="btn btn-danger btn-grad add_cat" >
                            <i class="fa fa-plus-square"></i> Añadir
                          </button>   

                       
                    </div>
                    </div>
                    <div class="box-body">

                      <div class="row">
                        <div class="col-xs-2 ">
                        </div>

                        <div class="col-xs-8">
                            <div class="box-body">
                              <table id="dataTableCat" class="table table-bordered table-striped">
                                <thead>
                                  <tr >
                                      
                                      <th>Categoría</th>
                                      <th>Acción</th>
                                  </tr>
                                </thead>
                                <tbody>
                                </tbody>
                              </table>
                            </div>
                        </div>
                        <div class="col-xs-2 ">
                        </div>

                      </div>
                    </div>
                    <!-- /.box-body -->
                    <div  align="center" class="box-footer">
                        
                    </div>
                </div>
              <!-- /.box -->
            </div>




            
        </div>
    </section>
    <!-- /.content -->
</div>
  <!-- /.content-wrapper -->

