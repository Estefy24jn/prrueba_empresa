<?php
  $usu_mod = &get_instance();
  $usu_mod->load->model("usuario_model");
  $usua = $this->session->userdata('usua');
  $id = $usua->id_usu;
  $fic_fot = $usu_mod->usuario_model->usu_get_fot($id);

  $sistema = &get_instance();
  $sistema->load->model("Sistema_model");
  $colorheader = $sistema->Sistema_model->sel_colorheader();
  $nombresistema = $sistema->Sistema_model->sel_nombresistema();  

?>

<script type="text/javascript">

    function updsesion(){
      $.ajax({
        type: "POST",
        dataType: "json",
        url: "<?php echo base_url('Usuarios/usu_upd_acceso');?>",
      });
      setTimeout('updsesion()',10000);
    }  
</script>

<body onload="javascript:updsesion()" class="hold-transition <?php print @$colorheader; ?> sidebar-mini ">
<div class="wrapper">

  <header class="main-header">
    <!-- Logo -->
    <!-- Imprimir logo y Nombre de empresa -->
    <a class="logo" href="<?php print $base_url; ?>inicio">
    <img src="<?php print base_url(); ?>public/img/factuleon_logo.png" width="45" height="30" class="d-inline-block align-top" alt="">
    <?php print strtoupper(@$nombresistema); ?>
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
        <span class="sr-only">Menú</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </a>

      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <!-- User Account: style can be found in dropdown.less -->
          <!-- <li class="nav-item">
            <a class="nav-link" href="#">Hola mundo</a>
            https://m.me/factuleon
          </li> -->
          <!-- <li class="nav-item">
            <a class="nav-link" target="_blank" href="https://factuleon.com/curso/facturacion-electronica/lecciones/bienvenida/">Cursos <i class="fa fa-comment-o" style="font-size: 18px; color: #ffffff;"></i></a>
          </li> -->
          <!-- <li class="nav-item">
            <a class="nav-link" target="_blank" href="https://m.me/factuleon?ref=w15486343">Soporte <i class="fa fa-comment-o" style="font-size: 18px; color: #ffffff;"></i></a>
          </li> -->
          <li class="dropdown user user-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="padding-top: 8%; padding-bottom: 7%;" >
            <img class="d-inline-block align-top" width="45" height="30" <?php
                if (@$fic_fot != NULL) {
                  if ($fic_fot->fot_usu) { print " src='data:image/jpeg;base64,$fic_fot->fot_usu'"; } 
                  else { ?> src="<?php print base_url(); ?>public/img/factuleon_logo.png" <?php } } 
                else { ?> src="<?php print base_url(); ?>public/img/factuleon_logo.png" <?php } ?> 
                alt="" onerror="this.src='<?php print base_url() . "public/img/factuleon_logo.png"; ?>';" />
           <!-- <img src="<?php //print base_url() . "inicio/mostrar_img"; ?>" class="user-image" alt="Foto de Usuario" width="160px" height="160px" onerror="this.src='<?php //print base_url() . "public/img/perfil.jpg"; ?>';"  > -->


              <span class="hidden-xs"><?php print $this->session->userdata("sess_log"); ?></span>
            </a>
            <ul class="dropdown-menu">
              <!-- User image -->
              <li class="user-header" style="background-color: #000000;">
                <img class="img-circle" <?php
                  if (@$fic_fot != NULL) {
                    if ($fic_fot->fot_usu) { print " src='data:image/jpeg;base64,$fic_fot->fot_usu'"; } 
                    else { ?> src="<?php print base_url(); ?>public/img/factuleon_logo.png" <?php } } 
                  else { ?> src="<?php print base_url(); ?>public/img/factuleon_logo.png" <?php } ?> 
                  alt="" onerror="this.src='<?php print base_url() . "public/img/factuleon_logo.png"; ?>';" />
                <p>
                  <?php print $this->session->userdata("sess_na"); ?>
                  <small>Business<?php //print $this->session->userdata("sess_tu"); ?></small>
                </p>
              </li>

              <!-- Menu Footer-->
              <li class="user-footer">
                <div>
                <a href="<?php print $base_url ?>inicio" class="btn btn-default" title="Inicio">Inicio</a>
                <a href="<?php print $base_url ?>infosri" class="btn btn-default" title="Sri">Sri</a>
                <a href="<?php print $base_url ?>auth/logout" class="btn btn-default icon-signout" title="Cerrar sesión"><i class="fa fa-power-off"></i>&nbsp;Salir</a>
                </div>
              </li>
            </ul>
          </li>
        </ul>
      </div>
    </nav>
  </header>