<?php
//Linea para usar restcontroller en lugar de ci_controller
//Tutorial https://www.youtube.com/watch?time_continue=498&v=ybh5CbYXLOw&feature=emb_logo
use chriskacerguis\RestServer\RestController;
defined('BASEPATH') OR exit('No direct script access allowed');

require APPPATH . 'libraries/RestController.php';
require APPPATH . 'libraries/Format.php';

class Restclientes extends RestController {

    public function __construct(){
        parent::__construct();
        $this->load->database();
    }
    public function index_get()
    {   
        echo "GET_clientes";
    } 
    public function findall_get()
    {   /*Para hacer la peticion se hace así: 
        https://gestion-electronica.com/facturacion_pro/restclientes/findall
         */
        $sql = $this->db->query(" SELECT * FROM clientes");
        $resultado = $sql->result();
        $this->response($resultado);
        //echo "GET_otro";
    } 
    public function findone_get($idmysql){
        /*Para hacer la peticion se hace así: 
        https://gestion-electronica.com/facturacion_pro/restclientes/findone/530
         */
        $sql = $this->db->query(" SELECT * FROM clientes where id_cliente = $idmysql");
        /* id_cliente != $idcliente
                                 and id_empresa = $id_empresa */
        $resultado = $sql->result();
        $this->response($resultado);
    }
    public function findonebyci_get($ci){
        /*Para hacer la peticion se hace así: 
        https://gestion-electronica.com/facturacion_pro/restclientes/findonebyci/1720242187
         */
        $sql = $this->db->query(" SELECT * FROM clientes where ident_cliente = $ci");
        /* id_cliente != $idcliente
                                 and id_empresa = $id_empresa */
        $resultado = $sql->result();
        $this->response($resultado);
    }
    //Post Insertar nuevo cliente en la BD
    public function insertcliente_post(){
        //La peticion se hace asi
        //https://gestion-electronica.com/facturacion_pro/restclientes/insertcliente
        //Ingresando los campos id, nombre, tipo_ident_cliente,...
        //INSERT INTO `clientes` (`id_cliente`, `nom_cliente`, `tipo_ident_cliente`, `ident_cliente`, `nivel_est_cliente`, `ref_cliente`, `correo_cliente`, `ciudad_cliente`, `relacionado`, `direccion_cliente`, `telefonos_cliente`, `mayorista`, `tipo_precio`, `id_vendedor`, `codigo`, `credito`, `placa_matricula`, `idcategoriacontable`, `id_categoriaventa`, `fecha_nac`, `foto_cliente`, `id_empresa`) VALUES ('5', 'ingresado', 'c', '3434343434', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
        
        /* //Para iniciar con seguridad de un token 
        $var = $this->post('token');
        $res = $this->_init($this->post('token'));
        if(!$res){
            return null;
        } */
        try { 
            //Tomar Datos mediante post
            $response = array();
            $id = $this->post('id');
            $nombre = $this->post('nombre');
            $tipo_crp = $this->post('tipo_ident_cliente');//C o R o P ::C:Cedula, R:RUC, P:Pasaporte
            $ci = $this->post('ci');
            $email = $this->post('email');
            $direccion = $this->post('direccion');
            $telefono = $this->post('telefono');

            //INSERT INTO `clientes` (`id_cliente`, `nom_cliente`, `tipo_ident_cliente`, `ident_cliente`, `nivel_est_cliente`, `ref_cliente`, `correo_cliente`, `ciudad_cliente`, `relacionado`, `direccion_cliente`, `telefonos_cliente`, `mayorista`, `tipo_precio`, `id_vendedor`, `codigo`, `credito`, `placa_matricula`, `idcategoriacontable`, `id_categoriaventa`, `fecha_nac`, `foto_cliente`, `id_empresa`) VALUES ('5', 'ingresado', 'c', '3434343434', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
            $ok = $this->db->insert('clientes', array(
                'nom_cliente'=> $nombre,
                'tipo_ident_cliente'=> $tipo_crp,
                'ident_cliente'=> $ci,
                'correo_cliente'=> $email,
                'direccion_cliente'=> $direccion,
                'telefonos_cliente'=> $telefono
            ));
            $newidcli = $this->db->insert_id();
            $this->db->query("INSERT into cliente_tipoprecio (id_cliente, id_precio, estatus)
                              select $newidcli, id_precios, 1 from precios");
            $this->db->query("UPDATE clientes SET idcategoriacontable = (SELECT id FROM con_categoria 
                                                                         WHERE idtipocategoria = 1 LIMIT 1)
                              WHERE id_cliente = $newidcli");
            //$this->response($this->db->insert_id());
            if($ok){
                //Respuesta exitosa, se ingreso correctamente
                $response['error'] = false; 
                $response['message'] = 'Cliente saved successfully';
            }else{
                //Si tuvimos una falla y no se ingreso
                $response['error'] = true; 
                $response['message'] = 'Please try later';
            }
            
        } catch (Exception $e) {
            //alert the user.
            //var_dump($e->getMessage());
            $response['error'] = true; 
        	$response['message'] = "Invalid request " . $e->getMessage(); 
        }
        
         /*  $placa= ' ';
          $ci = substr($ci, 9);
          $this->db->query("INSERT INTO clientes (tipo_ident_cliente, nom_cliente, ident_cliente, placa_matricula) 
          VALUES ('$tipo_crp', '$nombre', '$ci', '$placa')");   */

        //$this->response($nombre,$ci,$email,$direccion,$telefono);
        //$array = array($nombre,$ci,$email,$direccion,$telefono);
        //$this->response($resultado);
        //$this->response($this->db->insert_id());
        $this->response($response);
    }

    public function updatecliente_post(){
        //La peticion se hace asi
        //https://gestion-electronica.com/facturacion_pro/restclientes/updatecliente
        try { 
            //Tomar Datos mediante post
            $response = array();
            $id = $this->post('id');
            $nombre = $this->post('nombre');
            $tipo_crp = $this->post('tipo_ident_cliente');//C o R o P ::C:Cedula, R:RUC, P:Pasaporte
            $ci = $this->post('ci');
            $email = $this->post('email');
            $direccion = $this->post('direccion');
            $telefono = $this->post('telefono');
            //$this->db->update('con_tipocomprobante', array('prefijo' => $prefijo), array('id' => $id));
            $ok = $this->db->update('clientes', array(
                'nom_cliente'=> $nombre,
                'tipo_ident_cliente'=> $tipo_crp,
                'ident_cliente'=> $ci,
                'correo_cliente'=> $email,
                'direccion_cliente'=> $direccion,
                'telefonos_cliente'=> $telefono
            ), array('ident_cliente' => $ci));

            if($ok){
                //Respuesta exitosa, se ingreso correctamente
                $response['error'] = false; 
                $response['message'] = 'Cliente update successfully';
            }else{
                //Si tuvimos una falla y no se ingreso
                $response['error'] = true; 
                $response['message'] = 'Please try later';
            }
        } catch (Exception $e) {
            $response['error'] = true; 
        	$response['message'] = "Invalid request " . $e->getMessage(); 
        }
        $this->response($response);
    }

    public function delcliente_post(){
        //La peticion se hace asi
        //https://gestion-electronica.com/facturacion_pro/restclientes/delcliente
        //Ingresando ci
        try { 
            //Tomar Datos mediante post
            $response = array();
            $ci = $this->post('ci');
            //$this->db->delete('cliente_categoriaventa', array('id' => $id));
            $ok = $this->db->delete('clientes', array('ident_cliente' => $ci));
            if($ok){
                //Respuesta exitosa, se ingreso correctamente
                $response['error'] = false; 
                $response['message'] = 'Cliente deleted successfully';
            }else{
                //Si tuvimos una falla y no se ingreso
                $response['error'] = true; 
                $response['message'] = 'Please try later';
            }
        } catch (Exception $e) {
            $response['error'] = true; 
        	$response['message'] = "Invalid request " . $e->getMessage(); 
        }
        $this->response($response);
    }

    public function insertorupdatecliente_post(){
        $response = array();
        try { 
            $ci = $this->post('ci');
            //$postci = findonebyci($ci);
            //$postci = findonebyci_get($ci);
            $sql = $this->db->query(" SELECT * FROM clientes where ident_cliente = $ci");
            $resultado = $sql->result();
            //$this->response($resultado);
            if($resultado){
                //Respuesta exitosa, Existe el cliente
                $response['error'] = false; 
                $response['message'] = 'Cliente existe';
                $respuesta = $this->updatecliente_post();
                //$respuesta = $this->inupdatecliente();
                //$response['msg'] = $respuesta;
            }else{
                //No existe el cliente
                $response['error'] = true; 
                $response['message'] = 'No existe cliente';
                //$respuesta = $this->insertcliente_post();
                $respuesta = $this->insertcliente_post();
            }
        } catch (Exception $e) {
            $response['error'] = true; 
        	$response['message'] = "Invalid request " . $e->getMessage(); 
        }
        $this->response($response);
    }

    public function inupdatecliente(){
        return "function buena";
    }
    

}