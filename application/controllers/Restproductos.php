<?php
//Linea para usar restcontroller en lugar de ci_controller
//Tutorial https://www.youtube.com/watch?time_continue=498&v=ybh5CbYXLOw&feature=emb_logo
use chriskacerguis\RestServer\RestController;
defined('BASEPATH') OR exit('No direct script access allowed');

require APPPATH . 'libraries/RestController.php';
require APPPATH . 'libraries/Format.php';

class Restproductos extends RestController {

    public function __construct(){
        parent::__construct();
        $this->load->database();
    }
    public function index_get()
    {   
        echo "GET_productos";
    } 
    public function findall_get()
    {   /*Para hacer la peticion se hace así: 
        https://gestion-electronica.com/facturacion_pro/restclientes/findall
         */
        $sql = $this->db->query(" SELECT * FROM producto");
        $resultado = $sql->result();
        $this->response($resultado);
        //echo "GET_otro";
    } 
    public function findone_get($idmysql){
        /*Para hacer la peticion se hace así: 
        https://gestion-electronica.com/facturacion_pro/restclientes/findone/530
         */
        $sql = $this->db->query(" SELECT * FROM producto where pro_id = $idmysql");
        /* id_cliente != $idcliente
                                 and id_empresa = $id_empresa */
        $resultado = $sql->result();
        $this->response($resultado);
    }
}