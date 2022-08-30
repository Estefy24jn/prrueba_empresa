<?php
/* ------------------------------------------------
  ARCHIVO: Inicio.php
  DESCRIPCION: Vista de la página de inicio de la aplicación.
  FECHA DE CREACIÓN: 30/06/2017
 * 
  ------------------------------------------------ */
// Setear el título HTML de la página

$sistema = &get_instance();
$sistema->load->model("Sistema_model");
$sistema->load->model("Facturar_model");
$imagenfondo = $sistema->Sistema_model->sel_imagenfondo();
$nombresistema = $sistema->Sistema_model->sel_nombresistema();
$dataanio = $sistema->Facturar_model->lst_ventasanio();
$datames = $sistema->Facturar_model->lst_ventasmesactual();
$datafp = $sistema->Facturar_model->lst_formapago();
//
print "<script>document.title = '$nombresistema - Inicio' </script>";

?>
<style type="text/css">
  .img_res {
    background: url("<?php print $imagenfondo; ?>");
    background-size: cover;
    /* For flexibility */
  }
</style>
<div class="content-wrapper">
  <section class="content-header">
    <h1>
      Inicio
      <small>Página Principal del Sistema</small>
    </h1>
    <ol class="breadcrumb">
      <li><a href="<?php print $base_url ?>inicio"><i class="fa fa-home"></i> Inicio</a></li>
      <!--        <li class="active">Página Principal del Sistema</li>-->
    </ol>
  </section>
  <!-- Main content -->
  <section class="content responsive img_res animated fadeIn caja-escritorio">

    <div class="row">

      <div class="col-md-3 col-sm-6 col-xs-12">
        <a class="facturar" style="color: black; text-decoration: none;" id="link" href="#">
          <div class="info-box bg-orange">

            <span class="info-box-icon"><i class="fa fa-newspaper-o"></i></span>
            <div class="info-box-content">
              <span class="info-box-number">FACTURA</span>
            </div>
          </div>
        </a>
      </div>
      <div class="col-md-3 col-sm-6 col-xs-12">
        <a style="color: black; text-decoration: none;" id="link" href="<?php print $base_url ?>infosri">
          <div class="info-box bg-aqua">
            <span class="info-box-icon"><i class="fa fa-send"></i></span>
            <div class="info-box-content">
              <span class="info-box-number">COMPROBANTES SRI</span>
            </div><!-- /.info-box-content -->
          </div><!-- /.info-box -->
        </a>
      </div>

      <div class="col-md-3 col-sm-6 col-xs-12">
        <a style="color: black; text-decoration: none;" id="link" href="<?php print $base_url ?>facturar/ventas">
          <div class="info-box bg-green">
            <span class="info-box-icon"><i class="fa fa-bank"></i></span>
            <div class="info-box-content">
              <span class="info-box-number">VENTAS</span>
            </div><!-- /.info-box-content -->
          </div><!-- /.info-box -->
        </a>
      </div>
      <div class="col-md-3 col-sm-6 col-xs-12">
        <a style="color: black; text-decoration: none;" id="link" href="<?php print $base_url ?>compra">
          <div class="info-box bg-blue">
            <span class="info-box-icon"><i class="ion ion-bag"></i><!-- <i class="fa fa-gavel"> --></i></span>
            <div class="info-box-content">
              <!-- <span class="info-box-text">Compras</span> -->
              <span class="info-box-number">COMPRAS</span>
              <!-- The progress section is optional -->
              <!-- <div class="progress">
              <div class="progress-bar" style="width: 70%"></div>
            </div>
            <span class="progress-description">
              70% Increase in 30 Days
            </span> -->
            </div><!-- /.info-box-content -->
          </div><!-- /.info-box -->
        </a>
      </div>
    </div>
    <div class="row">
      <!--Segunda Fila-->
      <div class="col-md-3 col-sm-6 col-xs-6">
        <a style="color: black; text-decoration: none;" id="link" href="<?php print $base_url ?>cajaapertura">
          <div class="info-box">

            <span class="info-box-icon bg-grey"><i class="fa fa-unlock"></i></span>
            <div class="info-box-content">
              <span class="info-box-number">Abrir Caja</span>
            </div>
          </div>
        </a>
      </div>
      <div class="col-md-3 col-sm-6 col-xs-6">
        <a style="color: black; text-decoration: none;" id="link" href="<?php print $base_url ?>cajacierre">
          <div class="info-box ">
            <span class="info-box-icon bg-grey"><i class="fa fa-lock"></i></span>
            <div class="info-box-content">
              <span class="info-box-number">Cerrar Caja</span>
            </div><!-- /.info-box-content -->
          </div><!-- /.info-box -->
        </a>
      </div>

      <div class="col-md-3 col-sm-6 col-xs-6">
        <a style="color: black; text-decoration: none;" id="link" href="<?php print $base_url ?>inventario/ajuste">
          <div class="info-box">
            <span class="info-box-icon bg-grey"><i class="fa fa-cube"></i></span>
            <div class="info-box-content">
              <span class="info-box-number">Stock Inventario</span>
            </div><!-- /.info-box-content -->
          </div><!-- /.info-box -->
        </a>
      </div>
      <div class="col-md-3 col-sm-6 col-xs-6">
        <a style="color: black; text-decoration: none;" id="link" href="<?php print $base_url ?>reporte/reporte_ats">
          <div class="info-box">
            <span class="info-box-icon bg-grey"><i class="fa fa-legal"></i><!-- <i class="fa fa-gavel"> --></i></span>
            <div class="info-box-content">
              <!-- <span class="info-box-text">Compras</span> -->
              <span class="info-box-number">Reporte de ATS</span>
            </div><!-- /.info-box-content -->
          </div><!-- /.info-box -->
        </a>
      </div>
    </div>


    <!--nueva por Andres-->
    <div class="row">
      <div class="col-md-6">
        <!-- LINE CHART -->
        <div class="box box-info">
          <div class="box-header with-border">
            <h3 class="box-title">Ventas del Año</h3>

            <div class="box-tools pull-right">
              <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
              </button>
              <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
            </div>
          </div>
          <div class="box-body">
            <div class="chart">
              <canvas id="lineChart" style="height: 233px; width: 555px;" height="291" width="693"></canvas>
            </div>
          </div>
          <!-- /.box-body -->
        </div>
        <!-- /.box -->

        <!-- BAR CHART -->
        <div class="box box-success">
          <div class="box-header with-border">
            <h3 class="box-title">Producto Más Vendido</h3>

            <div class="box-tools pull-right">
              <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
              </button>
              <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
            </div>
          </div>
          <div class="box-body table-responsive no-padding">
            <table id="dataTableArea" class="table table-hover">
              <thead>
                <tr class="success">
                  <th>Valor</th>
                  <th>Ventas</th>
                  <th>Producto</th>
                </tr>
              </thead>
              <tbody>

                <tr>
                  <th>Ventas</th>
                  <th>Valor</th>
                  <th>Producto</th>
                </tr>
                <tr>
                  <td>183</td>
                  <td><span class="label label-success">$590</span></td>
                  <td>Bacon ipsum dolor sit amet salami venison chicken flank fatback doner.</td>
                </tr>
                <tr>
                  <td>219</td>
                  <td><span class="label label-success">$320</span></td>
                  <td>Bacon ipsum dolor sit amet salami venison chicken flank fatback doner.</td>
                </tr>
                <tr>
                  <td>657</td>
                  <td><span class="label label-success">$820</span></td>
                  <td>Bacon ipsum dolor sit amet salami venison chicken flank fatback doner.</td>
                </tr>
                <tr>
                  <td>175</td>
                  <td><span class="label label-success">$275</span></td>
                  <td>Bacon ipsum dolor sit amet salami venison chicken flank fatback doner.</td>
                </tr>
                <tr>
                  <td>15</td>
                  <td><span class="label label-success">$775</span></td>
                  <td>Bacon ipsum dolor sit amet salami venison chicken flank fatback doner.</td>
                </tr>
              </tbody>
            </table>
          </div>
          <!-- <div class="box-body">
              <div class="chart">
                <canvas id="barChart" style="height: 214px; width: 555px;" height="267" width="693"></canvas>
              </div>
            </div> -->
          <!-- /.box-body -->
        </div>
        <!-- /.box -->

      </div>
      <!-- /.col (RIGHT) -->
      <div class="col-md-6">
        <!-- AREA CHART -->
        <div class="box box-primary">
          <div class="box-header with-border">
            <h3 class="box-title">Ventas del Mes</h3>

            <div class="box-tools pull-right">
              <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
              </button>
              <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
            </div>
          </div>
          <div class="box-body">
            <div class="chart">
              <canvas id="areaChart" style="height: 233px; width: 555px;" height="291" width="693"></canvas>
            </div>
          </div>
          <!-- /.box-body -->
        </div>
        <!-- /.box -->

        <!-- DONUT CHART -->
        <div class="box box-danger">
          <div class="box-header with-border">
            <h3 class="box-title">Formas de Pago Usados</h3>

            <div class="box-tools pull-right">
              <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
              </button>
              <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
            </div>
          </div>
          <div class="box-body">
            <!-- Nueva Row para tener a vista los datos -->
            <div class="row">
              <div class="col-md-8">
                <div class="chart-responsive">
                  <canvas id="pieChart" style="height: 277px; width: 555px;" height="346" width="693"></canvas>
                </div>
                <!-- ./chart-responsive -->
              </div>
              <!-- /.col -->
              <div class="col-md-4">
                <ul class="chart-legend clearfix">
                  <li><i class="fa fa-circle-o text-aqua"></i> Efectivo</li>
                  <li><i class="fa fa-circle-o text-blue"></i> Cheque</li>
                  <li><i class="fa fa-circle-o text-red"></i> Tarjeta de Crédito</li>
                  <li><i class="fa fa-circle-o text-orange"></i> Tarjeta de Débito</li>
                  <li><i class="fa fa-circle-o text-green"></i> Transferencia</li>
                  <li><i class="fa fa-circle-o text-gray"></i> Otros</li>
                </ul>
              </div>
              <!-- /.col -->
            </div>
          </div>
          <!-- /.box-body -->
        </div>
        <!-- /.box -->

      </div>
      <!-- /.col (LEFT) -->

    </div>
  </section>
</div>

<!-- ChartJS 1.0.1 -->
<script src="<?php print $base_url; ?>assets/plugins/chartjs/Chart.min.js"></script>
<!-- charts -->
<!-- <script src="<?php print $base_url; ?>assets/plugins/chart.js-2.7.3/package/dist/Chart.js"></script>  -->
<!-- <script src="../../dist/js/demo.js"></script> -->

<script>
  $(function() {
    /*Funcion cargar productos mejores vendidos*/
    $('#dataTableArea').dataTable({
      'language': {
        'url': base_url + 'public/json/language.spanish.json'
      },
      'ajax': "Facturar/sel_bestproductos",
      'ordering': false,
      'paging': false,
      'info': false,
      'searching': false,
      'columns': [{
          "data": "valor",
          "className": "label-success",
          "width": "20%"
        },
        {
          "data": "ventas",
          "className": "label-warning",
          "width": "20%"
        },
        {
          "data": "producto",
          "className": "info",
          "width": "60%"
        }
      ]
    });
    //--------------
    //- AREA CHART ChartJS-
    //--------------

    // Get context with jQuery - using jQuery's .get() method.
    var areaChartCanvas = $("#areaChart").get(0).getContext("2d");
    // This will get the first returned node in the jQuery collection.
    var areaChart = new Chart(areaChartCanvas);

    //var dataanios= [100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100];
    var dataanios = <?php echo json_encode($dataanio[0]); ?>;
    //alert(dataanios.toString());
    var yearChartData = {
      labels: ["Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"],
      datasets: [{
          label: "Ventas",
          fillColor: "rgba(210, 214, 222, 1)",
          strokeColor: "rgba(210, 214, 222, 1)",
          pointColor: "rgba(210, 214, 222, 1)",
          pointStrokeColor: "#c1c7d1",
          pointHighlightFill: "#fff",
          color: "#00a65a",
          pointHighlightStroke: "rgba(220,220,220,1)",
          data: dataanios
        }
        /* ,
                {
                  label: "Digital Goods",
                  fillColor: "rgba(60,141,188,0.9)",
                  strokeColor: "rgba(60,141,188,0.8)",
                  pointColor: "#3b8bba",
                  pointStrokeColor: "rgba(60,141,188,1)",
                  pointHighlightFill: "#fff",
                  pointHighlightStroke: "rgba(60,141,188,1)",
                  data: [28, 48, 40, 19, 86, 27, 90]
                } */
      ]
    };

    var datameses = <?php echo json_encode($datames[0]); ?>;

    var mesChartData = {
      labels: ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31"],
      datasets: [{
        label: "Ventas Mes",
        fillColor: "#4f98c3",
        strokeColor: "#4f98c3",
        pointColor: "#4f98c3",
        pointStrokeColor: "#c1c7d1",
        pointHighlightFill: "#fff",
        color: "#00a65a",
        pointHighlightStroke: "rgba(220,220,220,1)",
        data: datameses
      }]
    };

    var areaChartOptions = {
      //Boolean - If we should show the scale at all
      showScale: true,
      //Boolean - Whether grid lines are shown across the chart
      scaleShowGridLines: false,
      //String - Colour of the grid lines
      scaleGridLineColor: "rgba(0,0,0,.05)",
      //Number - Width of the grid lines
      scaleGridLineWidth: 1,
      //Boolean - Whether to show horizontal lines (except X axis)
      scaleShowHorizontalLines: true,
      //Boolean - Whether to show vertical lines (except Y axis)
      scaleShowVerticalLines: true,
      //Boolean - Whether the line is curved between points
      bezierCurve: true,
      //Number - Tension of the bezier curve between points
      bezierCurveTension: 0.3,
      //Boolean - Whether to show a dot for each point
      pointDot: false,
      //Number - Radius of each point dot in pixels
      pointDotRadius: 4,
      //Number - Pixel width of point dot stroke
      pointDotStrokeWidth: 1,
      //Number - amount extra to add to the radius to cater for hit detection outside the drawn point
      pointHitDetectionRadius: 20,
      //Boolean - Whether to show a stroke for datasets
      datasetStroke: true,
      //Number - Pixel width of dataset stroke
      datasetStrokeWidth: 2,
      //Boolean - Whether to fill the dataset with a color
      datasetFill: true,
      //String - A legend template
      legendTemplate: "<ul class=\"<%=name.toLowerCase()%>-legend\"><% for (var i=0; i<datasets.length; i++){%><li><span style=\"background-color:<%=datasets[i].lineColor%>\"></span><%if(datasets[i].label){%><%=datasets[i].label%><%}%></li><%}%></ul>",
      //Boolean - whether to maintain the starting aspect ratio or not when responsive, if set to false, will take up entire container
      maintainAspectRatio: true,
      //Boolean - whether to make the chart responsive to window resizing
      responsive: true
    };

    //Create the line chart
    areaChart.Line(mesChartData, areaChartOptions);

    //-------------
    //- LINE CHART -
    //--------------
    var lineChartCanvas = $("#lineChart").get(0).getContext("2d");
    var lineChart = new Chart(lineChartCanvas);
    var lineChartOptions = areaChartOptions;
    lineChartOptions.datasetFill = false;
    /* Poner Data en Verde */
    var barChartData = yearChartData;
    barChartData.datasets[0].fillColor = "#00a65a";
    barChartData.datasets[0].strokeColor = "#00a65a";
    barChartData.datasets[0].pointColor = "#00a65a";
    lineChart.Bar(barChartData, lineChartOptions);

    //-------------
    //- PIE CHART -
    //-------------
    // Get context with jQuery - using jQuery's .get() method.
    var pieChartCanvas = $("#pieChart").get(0).getContext("2d");
    var pieChart = new Chart(pieChartCanvas);

    //alert(<?php echo $datafp[0]->efectivo ?>);
    //$datafp->efectivo;
    var PieData = [{
        value: <?php echo $datafp[0]->efectivo ?>,
        color: "#00c0ef",//celeste 
        highlight: "#00c0ef",
        label: "Efectivo"
      },
      {
        value: <?php echo $datafp[0]->cheque ?>,
        color: "#3c8dbc",//azul
        highlight: "#3c8dbc",
        label: "Cheque"
      },
      {
        value: <?php echo $datafp[0]->tarjetac ?>,
        color: "#f56954",
        highlight: "#f56954",//rojo
        label: "Tarjeta Crédito"
      },
      {
        value: <?php echo $datafp[0]->tarjetad ?>,
        color: "#f39c12",//naranja
        highlight: "#f39c12",
        label: "Tarjeta Débido"
      },
      {
        value: <?php echo $datafp[0]->transferencia ?>,
        color: "#00a65a",//verde 
        highlight: "#00a65a",
        label: "Transferencia"
      },
      {
        value: <?php echo $datafp[0]->otros ?>,
        color: "#d2d6de",//gris
        highlight: "#d2d6de",
        label: "Otros"
      }
    ];
    var pieOptions = {
      //Boolean - Whether we should show a stroke on each segment
      segmentShowStroke: true,
      //String - The colour of each segment stroke
      segmentStrokeColor: "#fff",
      //Number - The width of each segment stroke
      segmentStrokeWidth: 2,
      //Number - The percentage of the chart that we cut out of the middle
      percentageInnerCutout: 50, // This is 0 for Pie charts
      //Number - Amount of animation steps
      animationSteps: 100,
      //String - Animation easing effect
      animationEasing: "easeOutBounce",
      //Boolean - Whether we animate the rotation of the Doughnut
      animateRotate: true,
      //Boolean - Whether we animate scaling the Doughnut from the centre
      animateScale: false,
      //Boolean - whether to make the chart responsive to window resizing
      responsive: true,
      // Boolean - whether to maintain the starting aspect ratio or not when responsive, if set to false, will take up entire container
      maintainAspectRatio: true,
      //String - A legend template
      legendTemplate: "<ul class=\"<%=name.toLowerCase()%>-legend\"><% for (var i=0; i<segments.length; i++){%><li><span style=\"background-color:<%=segments[i].fillColor%>\"></span><%if(segments[i].label){%><%=segments[i].label%><%}%></li><%}%></ul>"
    };
    //Create pie or douhnut chart
    // You can switch between pie and douhnut using the method below.
    pieChart.Doughnut(PieData, pieOptions);

  });
</script>