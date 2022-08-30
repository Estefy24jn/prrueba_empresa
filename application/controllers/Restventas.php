<?php
//Linea para usar restcontroller en lugar de ci_controller
//Tutorial https://www.youtube.com/watch?time_continue=498&v=ybh5CbYXLOw&feature=emb_logo
use chriskacerguis\RestServer\RestController;
defined('BASEPATH') OR exit('No direct script access allowed');

require APPPATH . 'libraries/RestController.php';
require APPPATH . 'libraries/Format.php';

class Restventas extends RestController {

    public function __construct(){
        parent::__construct();
        $this->load->database();
        $this->load->Model("facturar_model");
        $this->load->Model("Inventario_model");
    }
    public function index_get()
    {   
        echo "GET_ventas";
    } 
    public function findall_get()
    {   /*Para hacer la peticion se hace así: 
        https://gestion-electronica.com/facturacion_pro/restventas/findall
         */
        $sql = $this->db->query(" SELECT * FROM venta");
        $resultado = $sql->result();
        $this->response($resultado);
        //echo "GET_otro";
    } 
    public function findone_get($idmysql){
        /*Para hacer la peticion se hace así: 
        https://gestion-electronica.com/facturacion_pro/restventas/findone/530
         */
        $sql = $this->db->query(" SELECT * FROM venta where id_venta = $idmysql");
        /* id_cliente != $idcliente
                                 and id_empresa = $id_empresa */
        $resultado = $sql->result();
        $this->response($resultado);
    }
     public function findonebynrofactura_get($nro_factura){
        //Para hacer la peticion se hace así: 
        //https://gestion-electronica.com/facturacion_pro/restventas/findonebyci/1720242187
        $sql = $this->db->query(" SELECT * FROM venta where nro_factura = '$nro_factura'");
        $resultado = $sql->result();
        $this->response($resultado);
    } 

    //Post Insertar nueva venta en la BD
    public function insertventa_post(){
        //La peticion se hace asi
        //https://gestion-electronica.com/facturacion_pro/restventas/insertcliente
        //Ingresando los campos id, nombre, tipo_ident_cliente,...
        //Ingresando campos de venta
        try { 
            //Tomar Datos mediante post Cliente
            //$this->db->trans_begin();
            $response = array();
            //$id = $this->post('id');
            $nombre = $this->post('nombre');
            $tipo_crp = $this->post('tipo_ident_cliente');//C o R o P ::C:Cedula, R:RUC, P:Pasaporte
            $ci = $this->post('ci');
            $email = $this->post('email');
            $direccion = $this->post('direccion');
            $telefono = $this->post('telefono');
            //Tomar mas datos Venta
            $date = date('Y-m-d H:i:s');
            $tipo_doc= '2';
            //$nro_factura = '001-010-000000104';
            $valiva = $this->post('valiva');//IVA 0.12
            $subconiva = $this->post('subconiva');//Subtotal con iva 1.43
            $subsiniva = $this->post('subsiniva');//Subtotal con 0 iva 
            $descsubconiva = $this->post('descsubconiva');//Subtotal con descuento 0.71
            $descsubsiniva = $this->post('descsubsiniva');//Subtotal con descuento IVA 0% 
            $montoiva = $this->post('montoiva');//IVA que sale de la venta
            $montototal = $this->post('montototal');// monto total que es round(descsubconiva + descsubsiniva + montoiva,2) as montototal
            //$fecharegistro = $this->post('fecharegistro');//Fecha de registro now()
            $idusu = $this->post('idusu');
            $estatus = '1';
            $observaciones = $this->post('observaciones');
            $detalle = $this->post('detalle');

            //Mas registros de login
            //Obtengo el id de usuario por post y los demas campos por consulta SQL
            //Sentencia para Obtener los campos necesarios para una venta
            $sqlventa = $this->db->query(" SELECT c.id_caja, c.nom_caja, c.id_puntoemision, p.consecutivo_notaventa,
            concat(p.cod_establecimiento,'-',p.cod_puntoemision,'-',lpad(p.consecutivo_factura,9,'0')) as nrofactura, 
            p.id_sucursal, id_empresa, p.consecutivo_comprobpago, p.consecutivo_factura, al.almacen_id 
            FROM caja_efectivo c
            INNER JOIN punto_emision p on p.id_puntoemision = c.id_puntoemision
            INNER JOIN permiso_cajaefectivo pc on pc.id_caja = c.id_caja
            INNER JOIN sucursal su on su.id_sucursal = p.id_sucursal
            INNER JOIN almacen al on al.sucursal_id = p.id_sucursal
            WHERE c.activo = 1 and p.activo = 1 and 
                    pc.id_usuario = $idusu
            ORDER BY nom_caja");

            $resultado = $sqlventa->result();
            $id_caja = $resultado[0]->id_caja;
            $id_puntoemision = $resultado[0]->id_puntoemision;
            $id_sucursal = $resultado[0]->id_sucursal;
            $id_empresa = $resultado[0]->id_empresa;
            $nro_factura = $resultado[0]->nrofactura;
            $consecutivo_comprobpago  = $resultado[0]->consecutivo_comprobpago;
            $consecutivo_factura = $resultado[0]->consecutivo_factura;
            $id_almacen = $resultado[0]->almacen_id;
            //id_tipcancelacion = 1
            //idusu = 30 --Id usuario 
            //id_vendedor = 30
            //id_empresa = 3
            //id_sucursal = 6
            //id_puntoemision = 10
            //id_caja 13
            //id_almacen 3
            //PARA HACER FACTURA cod_establecimiento=001 - cod_puntoemision=010 - consecutivo_factura=104
            //select * FROM punto_emision WHERE id_puntoemision = 10 (Punto de sucursal)
            
            //Primero veo si existe el cliente
            /* se verifica que exista en la tabla de clientes */
            $sqlcli = $this->db->query("SELECT COUNT(*) AS nrocli FROM clientes WHERE ident_cliente = '$ci' ");
            $resucli = $sqlcli->result();
            $valcli = $resucli[0]->nrocli;

            if ($valcli > 0) {//Si existe el cliente
                /* actualiza los datos del cliente */
                $this->db->update('clientes', array(
                    'nom_cliente'=> $nombre,
                    'tipo_ident_cliente'=> $tipo_crp,
                    'ident_cliente'=> $ci,
                    'correo_cliente'=> $email,
                    'direccion_cliente'=> $direccion,
                    'telefonos_cliente'=> $telefono
                ), array('ident_cliente' => $ci));
                $sqlcli = $this->db->query(" SELECT * FROM clientes where ident_cliente = $ci");
                $resultado = $sqlcli->result();
                $id_cliente = $resultado[0]->id_cliente;

            } else {//Si no existe el cliente 
                //Insertar nuevo cliente
                if ($email != NULL || $email = "") {
                } else {
                  $email = " ";
                }
                if ($telefono != NULL || $telefono = "") {
                } else {
                  $telefono = " ";
                }
                if ($direccion != NULL || $direccion = "") {
                } else {
                  $direccion = " ";
                }

                $ok = $this->db->insert('clientes', array(
                    'nom_cliente'=> $nombre,
                    'tipo_ident_cliente'=> $tipo_crp,
                    'ident_cliente'=> $ci,
                    'correo_cliente'=> $email,
                    'direccion_cliente'=> $direccion,
                    'telefonos_cliente'=> $telefono
                ));
                $newidcli = $this->db->insert_id();

                /* $sql_addc = $this->db->query("INSERT INTO clientes (tipo_ident_cliente, nom_cliente, ident_cliente, correo_cliente, telefonos_cliente, direccion_cliente) 
                                                              VALUES ('$tipo_crp', '$nombre', '$ci', '$email',' $telefono', '$direccion')");
                $id_cliente = $this->db->insert_id();  */
                $this->db->query("INSERT into cliente_tipoprecio (id_cliente, id_precio, estatus)
                              select $newidcli, id_precios, 1 from precios");
                $this->db->query("UPDATE clientes SET idcategoriacontable = (SELECT id FROM con_categoria 
                                                                         WHERE idtipocategoria = 1 LIMIT 1)
                              WHERE id_cliente = $newidcli");  
                //Para clientes nuevos
                $id_cliente = $newidcli;
                                                                           
            }
            
            //INSERTAR VENTA
            $ok = $this->db->insert('venta', array(
                'fecha'=> $date,
                'tipo_doc'=> $tipo_doc,
                'nro_factura'=> $nro_factura,
                'tipo_ident'=> $tipo_crp,
                'nro_ident'=> $ci,
                'nom_cliente'=> $nombre,
                'telf_cliente'=> $telefono,
                'dir_cliente'=> $direccion,
                'correo_cliente'=> $email,
                'fecharegistro'=> $date,
                'subconiva'=> $subconiva,
                'subsiniva'=> $subsiniva,
                'valiva'=> $valiva,
                'descsubconiva'=> $descsubconiva,
                'descsubsiniva'=> $descsubsiniva,
                'montoiva'=> $montoiva,
                'montototal'=> $montototal,
                'idusu'=> $idusu,
                'estatus'=> $estatus,
                'id_cliente'=> $id_cliente,
                'id_tipcancelacion'=> '1',
                'montoimpuestoadicional'=> '0.00',
                'id_empresa'=> $id_empresa,
                'id_sucursal'=> $id_sucursal,
                'id_puntoemision'=> $id_puntoemision,
                'id_caja'=> $id_caja,
                'cambio'=> '0.00',
                'id_vendedor'=> $idusu,
                'observaciones'=> $observaciones
            ));
            $newidventa = $this->db->insert_id();
            

            /*INSERTAR DETALLE 
            (id_venta, id_producto, cantidad, precio, subtotal, iva, montoiva, descmonto, 
                                             descsubtotal, id_almacen, tipprecio, porcdesc, descripcion, subsidio,
                                             costo_unitario, costo_total)
            */

            /*JSON PARA UNA VENTA
            //A esta direccion
            //https://gestion-electronica.com/facturacion_pro/restventas/insertventa
            {
            "nombre": "Magiber",
            "tipo_ident_cliente": "C",
            "ci": "1212121214",
            "email": "email@email.com",
            "direccion": "Quito",
            "telefono": "252525",
            "idusu": "30",
            "detalle": [
                {
                "id_producto": 648,
                "cantidad": 1,
                "precio": 1.43
                },
                {
                "id_producto": 648,
                "cantidad": 3,
                "precio": 1
                }
            ]
            }
             */
            /*IMPORTANTE PARA ANDROID HACER ESTO */
            $detalle = urldecode($detalle);
            $detalle = json_decode($detalle,true);

            foreach ($detalle as $row) {
                //$row->id_producto;
                $okdet = $this->db->insert('venta_detalle', array(
                    'id_venta'=> $newidventa,
                    'id_producto'=> $row['id_producto'],//Buscar producto en la base para poner el id
                    'cantidad'=> $row['cantidad'],
                    'precio'=> $row['precio'],
                    'subtotal'=> $row['subtotal'],
                    'iva'=> $row['iva'],
                    'montoiva'=> $row['montoiva'],
                    'descmonto'=> $row['descmonto'],
                    'descsubtotal'=> $row['descsubtotal'],
                    'id_almacen'=> $id_almacen,
                    'tipprecio'=> $row['tipprecio'],//0
                    'porcdesc'=> $row['porcdesc'],
                    'descripcion'=> $row['descripcion'],
                    'subsidio'=> $row['subsidio'],//ROUND(IFNULL(p.subsidio,0) * d.cantidad,2)
                    'costo_unitario'=> $row['costo_unitario'],//Precio Compra
                    'costo_total'=> $row['costo_total']//round(p.pro_preciocompra * d.cantidad, 2) 
                ));
                $resss=$detalle;
                $cantt=$row['cantidad'];
                $errordetalle = $this->db->error(); 
            }
            $errordetalle = $this->db->error(); 

            /*venta_formapago*/
            //------------------
            $okformapago = $this->db->insert('venta_formapago', array(
                'id_venta'=> $newidventa,
                'id_formapago'=> 1,
                'monto'=> $montototal,
                'fecha'=> $date,
                'nro_comprobante'=> $consecutivo_comprobpago,
                'id_cajapago'=> $id_caja
            ));
            /* UPDATE PUNTO DE EMISION*/
            $this->db->update('punto_emision', array(
                'consecutivo_comprobpago'=> ($consecutivo_comprobpago+1),
                'consecutivo_factura'=> ($consecutivo_factura+1)
            ), array('id_puntoemision' => $id_puntoemision));

            if ($newidventa != 0){
                $this->facturar_model->inventario($newidventa);

                $varventa = $this->facturar_model->lst_detventaparakardex($newidventa);    
                foreach ($varventa as $obj) {
                    $this->Inventario_model->ins_kardexegreso_rest($obj->id_producto, $obj->nro_factura, 'FACTURA DE VENTA', 
                                                              $obj->cantidad, $obj->precio, $obj->descsubtotal, 
                                                              $obj->pro_idunidadmedida, $obj->id_almacen, $idusu);
                }  
      
                $varserie = $this->facturar_model->lst_detventaparakardexserie($newidventa);          
                foreach ($varserie as $det) {
                    $this->Inventario_model->ins_seriekardexingreso($det->id_serie, $det->id_almacen, $det->tipomovimiento, 
                                                                    $newidventa, $det->nro_factura, $det->fecha, $det->descripcion);                
                }   
                
            }
            if($ok && $okdet){
                //Respuesta exitosa, se ingreso correctamente
                $response['error'] = false; 
                $response['message'] = 'Venta saved successfully';
                $response['nro_factura'] = $nro_factura;
                $response['detalles'] = $resss;
                //$this->db->trans_commit();
            }else{
                //Si tuvimos una falla y no se ingreso
                $response['error'] = true; 
                $response['message'] = 'Please try later';
                $response['detalles'] = $detalle;
                $response['errordetalle'] = $errordetalle;
                //$this->db->trans_rollback();
            }
            
        } catch (Exception $e) {
            $response['error'] = true; 
            $response['message'] = "Invalid request " . $e->getMessage(); 
            //$this->db->rollback();
        }
        $this->response($response);
    }

    public function updatecliente_post(){
        //La peticion se hace asi
        //https://gestion-electronica.com/facturacion_pro/restventas/updatecliente
        try { 
            //Tomar Datos mediante post
            $response = array();
            //$id = $this->post('id');
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
        //https://gestion-electronica.com/facturacion_pro/restventas/delcliente
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

    public function insertarventaandroid_post(){
        //La peticion se hace asi
        //https://gestion-electronica.com/facturacion_pro/restventas/delcliente
        //Ingresando ci
        try { 
            //Tomar Datos mediante post
            $response = array();
            $response = array();
            //$id = $this->post('id');
            $nombre = $this->post('nombre');
            $tipo_crp = $this->post('tipo_ident_cliente');//C o R o P ::C:Cedula, R:RUC, P:Pasaporte
            $ci = $this->post('ci');
            $email = $this->post('email');
            $direccion = $this->post('direccion');
            $telefono = $this->post('telefono');
            //Tomar mas datos Venta
            $date = date('Y-m-d H:i:s');
            $tipo_doc= '2';
            //$nro_factura = '001-010-000000104';
            $valiva = $this->post('valiva');//IVA 0.12
            $subconiva = $this->post('subconiva');//Subtotal con iva 1.43
            $subsiniva = $this->post('subsiniva');//Subtotal con 0 iva 
            $descsubconiva = $this->post('descsubconiva');//Subtotal con descuento 0.71
            $descsubsiniva = $this->post('descsubsiniva');//Subtotal con descuento IVA 0% 
            $montoiva = $this->post('montoiva');//IVA que sale de la venta
            $montototal = $this->post('montototal');// monto total que es round(descsubconiva + descsubsiniva + montoiva,2) as montototal
            //$fecharegistro = $this->post('fecharegistro');//Fecha de registro now()
            $idusu = $this->post('idusu');
            $estatus = '1';
            $observaciones = $this->post('observaciones');
            $detalle = $this->post('detalle');

            //$this->db->delete('cliente_categoriaventa', array('id' => $id));
            //$ok = $this->db->delete('clientes', array('ident_cliente' => $ci));
            $query = $this->db->query("call insertarventa_android($estatus);");
            $ok = $query->result();
            //$result = $result[0];
            if($ok){
                //Respuesta exitosa, se ingreso correctamente
                $response['error'] = false; 
                $response['message'] = 'Venta successfully';
                $response['ok'] = $ok;
            }else{
                //Si tuvimos una falla y no se ingreso
                $response['error'] = true; 
                $response['message'] = 'Please try later';
                $response['ok'] = $ok;
            }
        } catch (Exception $e) {
            $response['error'] = true; 
        	$response['message'] = "Invalid request " . $e->getMessage(); 
        }
        $this->response($response);
    }
}