<?php
//Linea para usar restcontroller en lugar de ci_controller
//Tutorial https://www.youtube.com/watch?time_continue=498&v=ybh5CbYXLOw&feature=emb_logo
use chriskacerguis\RestServer\RestController;
defined('BASEPATH') OR exit('No direct script access allowed');

require APPPATH . 'libraries/RestController.php';
require APPPATH . 'libraries/Format.php';

class Restlogin extends RestController {

    public function __construct(){
        parent::__construct();
        $this->load->database();
        $this->load->Model("Correo_model");
    }
    public function index_get()
    {   
        echo "GET_login";
    } 
    public function loginsis_post(){
        $response = array();
        try { 
            $logi = $this->post('logi');
            $pass = $this->post('pass');
            $sql = $this->db->query("SELECT * FROM usu_sistemas WHERE log_usu = '$logi' AND pwd_usu = MD5(sha1('$pass'))");
            $resu = $sql->result();
            if($resu){
                //Respuesta exitosa, se ingreso correctamente
                $response['error'] = false; 
                $response['message'] = 'Login successfully';
                $id_usu=$resu[0]->id_usu;
                $response['id_usu'] = $id_usu;
                //Pedir el correo del cliente al hacer login
                $id_empresa = $this->Correo_model->getemp_usuario($id_usu);
                $corr = $this->Correo_model->sel_correo_empresa($id_empresa->id_empresa);
                $response['corr_empresa'] = $corr->usuario;
            }else{
                //Si tuvimos una falla y no se ingreso
                $response['error'] = true; 
                $response['message'] = 'Please try later';
            }
        }catch (Exception $e) {
            $response['error'] = true; 
        	$response['message'] = "Invalid request " . $e->getMessage(); 
        }
        
        $this->response($response);
    }

}