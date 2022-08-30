<style>
#contenido_alm{
/*margin:auto;*/
width: 600px;

}   
</style>
<script type="text/javascript">
    $( document ).ready(function() {
        $("#formID").validationEngine();
    });
</script>
<div id = "contenido_alm" class="col-md-6">
    <div class="box box-danger">
        <div class="box-header with-border">
          <h3 class="box-title"></i> Detalle de Tarjeta de Crédito</h3>
        </div>
        <form id="formID" name="formID" method='POST' >
        <div class="box-body">
            <div class="row">
                <div class="col-md-12">
                    <table id="" class="table table-bordered table-hover table-responsive">
                        <thead>
                          <tr>
                            <th class="text-left col-md-1">Código Banco</th> 
                            <td colspan="3" class="text-center col-md-1"><?php print @$forpagodetalle->id_banco; ?></td> 
                          </tr>   
                          <tr>
                            <th class="text-left col-md-1">Nombre</th> 
                            <td class="text-center col-md-1"><?php print @$forpagodetalle->nombre; ?></td> 
                            <th class="text-left col-md-1">Nuero Tarjeta</th> 
                            <td class="text-center col-md-1"><?php print @$forpagodetalle->numerotarjeta; ?></td>                             
                          </tr>  
                          <tr>
                            <th class="text-left col-md-1">Nro Documento</th> 
                            <td class="text-center col-md-1"><?php print @$forpagodetalle->numerodocumento; ?></td> 
                            <th class="text-left col-md-1">Fecha Emisión</th> 
                            <td class="text-center col-md-1"><?php print @$forpagodetalle->fechaemision; ?></td> 
                          </tr> 
                          <tr>
                            <th class="text-left col-md-1">Descripción</th> 
                            <td colspan="3" class="text-center col-md-1"><?php print @$forpagodetalle->descripciondocumento; ?></td> 
                          </tr>   

                        </thead>    

                    </table>
                </div>


            </div>
        </form>
        </div>
    </div>
</div>