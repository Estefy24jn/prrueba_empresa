<?php

/*------------------------------------------------
  ARCHIVO: InfoSRI.php
  DESCRIPCION: Contiene los métodos varios para la interaccion con el SRI.
  ------------------------------------------------ */

defined('BASEPATH') OR exit('No direct script access allowed');

require(APPPATH.'helpers/FacturaSRI.php');
require(APPPATH.'helpers/NotaCreditoSRI.php');

class InfoSRI2 extends CI_Controller {

    var $compSRI; //objeto comprobante SRI
    var $mensajerror;

    public function __construct() {
        parent::__construct();
        $this->load->helper('array');
        $this->auth_library->sess_validate(true);
        $this->auth_library->mssg_get();
        $this->load->Model("InfoSRI_model");
        $this->load->Model("Correo_model");
        $this->load->Model("Empresa_model");
        $this->load->Model("Parametros_model");
        $this->compSRI = new FacturaSRI();
    }

    public function index(){
      date_default_timezone_set("America/Guayaquil");

      $desde = $this->session->userdata("tmp_sri_desde");
      $hasta = $this->session->userdata("tmp_sri_hasta");

      if (($desde == NULL) || ($hasta == NULL)){
        $desde = date("Y-m-d"); 
        $hasta = date("Y-m-d"); 
        $this->session->set_userdata("tmp_sri_desde", NULL);
        if ($desde != NULL) { $this->session->set_userdata("tmp_sri_desde", $desde); } 
        else { $this->session->set_userdata("tmp_sri_desde", NULL); }
        $this->session->set_userdata("tmp_sri_hasta", NULL);
        if ($hasta != NULL) { $this->session->set_userdata("tmp_sri_hasta", $hasta); } 
        else { $this->session->set_userdata("tmp_sri_hasta", NULL); }
      }  

      $data["desde"] = $desde;
      $data["hasta"] = $hasta;
      $data["base_url"] = base_url();
      $data["content"] = "infosri2_lst";
      $this->load->view("layout", $data);
    }    

    public function tmp_fecha() {
      $this->session->unset_userdata("tmp_sri_desde"); 
      $this->session->unset_userdata("tmp_sri_hasta");
      $fecdesde = $this->input->post("fdesde");
      $desde = str_replace('/', '-', $fecdesde); 
      $desde = date("Y-m-d", strtotime($desde));
      $fechasta = $this->input->post("fhasta");
      $hasta = str_replace('/', '-', $fechasta); 
      $hasta = date("Y-m-d", strtotime($hasta));
      $vdesde = $desde;
      $vhasta = $hasta;        
      $this->session->set_userdata("tmp_sri_desde", NULL);
      if ($vdesde != NULL) { $this->session->set_userdata("tmp_sri_desde", $vdesde);} 
      else { $this->session->set_userdata("tmp_sri_desde", NULL); }
      $this->session->set_userdata("tmp_sri_hasta", NULL);
      if ($vhasta != NULL) { $this->session->set_userdata("tmp_sri_hasta", $vhasta);} 
      else { $this->session->set_userdata("tmp_sri_hasta", NULL);}
      $arr['resu'] = 1;
      print json_encode($arr);
    } 

    public function listadoVentas() {
      date_default_timezone_set("America/Guayaquil");
      $desde = $this->session->userdata("tmp_sri_desde");
      $hasta = $this->session->userdata("tmp_sri_hasta");
      $idusu = $this->session->userdata("sess_id");
      
      $registro = $this->InfoSRI_model->lst_venta_rango($desde, $hasta, $idusu); 
      $tabla = "";
      foreach ($registro as $row) {
        $fec = str_replace('-', '/', $row->fecha); $fec = date("d/m/Y", strtotime($fec));
        $chkenviado = "";
        if (!$row->enviadoemail) { $chkenviado = "checked"; }       
        $tabla.='{"fecha":"' . $fec . '",
                  "numero":"' . $row->nro_factura . '",
                  "estado":"' . $row->estado . '",
                  "claveacceso":"' . $row->claveacceso . '",
                  "cliente":"' . addslashes($row->nom_cliente) . '",
                  "baseiva":"' . $row->descsubconiva . '",
                  "basenoiva":"'.$row->descsubsiniva.'",
                  "montoiva":"'.$row->montoiva.'",
                  "descuento":"'.$row->desc_monto.'",
                  "montototal":"'.$row->montototal.'",
                  "correoenviado":"'.$row->enviadoemail.'",
                  "ver":"'.$ver.'"},';
      }
      $tabla = substr($tabla, 0, strlen($tabla) - 1);

      echo '{"data":[' . $tabla . ']}';
    }

    public function listadoNotasCredito() {
      date_default_timezone_set("America/Guayaquil");
      $desde = $this->session->userdata("tmp_sri_desde");
      $hasta = $this->session->userdata("tmp_sri_hasta");
      $idusu = $this->session->userdata("sess_id");
      
      $registro = $this->InfoSRI_model->lst_notacredito_rango($desde, $hasta, $idusu); 
      $tabla = "";
      foreach ($registro as $row) {
        $fec = str_replace('-', '/', $row->fecha); $fec = date("d/m/Y", strtotime($fec));
        $tabla.='{"fecha":"' . $fec . '",
                  "numero":"' . $row->nro_documento . '",
                  "estado":"' . $row->estado . '",
                  "claveacceso":"' . $row->claveacceso . '",
                  "cliente":"' . addslashes($row->nom_cliente) . '",
                  "baseiva":"' . $row->descsubtotaliva . '",
                  "basenoiva":"'.$row->descsubtotalnoiva.'",
                  "montoiva":"'.$row->montoiva.'",
                  "descuento":"'.$row->descuento.'",
                  "montototal":"'.$row->total.'",
                  "ver":"'.$ver.'"},';
      }
      $tabla = substr($tabla, 0, strlen($tabla) - 1);

      echo '{"data":[' . $tabla . ']}';
    }
  
    public function CargarComprobanteSRI(){
      $tipocomprobante = $this->session->userdata("tmp_tipocmpsri");
      $id = $this->session->userdata("tmp_cmpsri_id");
      if ($tipocomprobante == '') {$tipocomprobante = 1;}

      $this->compSRI = null;

      switch ($tipocomprobante) {
        case 4:
          $this->compSRI = new NotaCreditoSRI();
          break;
        default:
          $this->compSRI = new FacturaSRI();
          break;
      }
      if ($this->compSRI != null){
        $this->compSRI->objmodel = $this->InfoSRI_model;
        $this->compSRI->id = $id;
        $this->compSRI->tipo = $tipocomprobante;
      }  
    }  

}


?>