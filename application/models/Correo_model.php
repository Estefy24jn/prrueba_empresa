<?php

/* ------------------------------------------------
  ARCHIVO: Correo_model.php
  DESCRIPCION: Manejo de consultas y excepciones referentes a la Correo.
  FECHA DE CREACIÓN: 25/09/2017
 * 
  ------------------------------------------------ */

class Correo_model extends CI_Model
{

    function __construct()
    {
        parent::__construct();
    }

    public function sel_correo()
    {
        $query = $this->db->query("SELECT * FROM correo");
        $result = $query->result();
        return $result[0];
    }

    public function add_correo($smtp, $puerto, $user, $pwd)
    {
        $query = $this->db->query("call correo_upd('$user', '$pwd', $puerto, '$smtp')");
    }

    public function env_correo()
    {
        $query = $this->db->query("SELECT *, (SELECT ema_emp FROM empresa LIMIT 1) AS empresa FROM correo");
        $result = $query->result();
        return $result[0];
    }
    //Funcion por Andres Castro
    public function sel_correo_empresa($id_empresa)
    {
        $query = $this->db->query("SELECT * FROM correo WHERE id_empresa='$id_empresa'");
        $result = $query->result();
        return $result[0];
    }

    public function add_correo_empresa($smtp, $puerto, $user, $pwd, $id_empresa)
    {
        //$query = $this->db->query("call correo_upd('$user', '$pwd', $puerto, '$smtp')");
        $queryEmail = $this->db->query("SELECT count(usuario) as cuenta FROM correo WHERE id_empresa = '$id_empresa' ");
        $countEmail = $queryEmail->result();

        if ($countEmail[0]->cuenta > 0) {
            //Si existe un email solo actualizar
            $this->db->query("UPDATE correo SET 
                usuario = '$user',
                clave = '$pwd',
                puerto = '$puerto',
                smtp = '$smtp'
                WHERE id_empresa = '$id_empresa'");
        } else {
            //Agregar nuevo correo
            $this->db->query("INSERT INTO correo (usuario,clave,puerto,smtp,id_empresa) 
                        VALUES ('$user', '$pwd', '$puerto', '$smtp', '$id_empresa');");
        }
    }

    public function env_correo_empresa()
    {
        $query = $this->db->query("SELECT *, (SELECT ema_emp FROM empresa LIMIT 1) AS empresa FROM correo");
        $result = $query->result();
        return $result[0];
    }

    public function getemp_usuario($idusu)
    {
        $query = $this->db->query("SELECT c.id_caja, c.nom_caja, c.id_puntoemision, pe.id_sucursal, su.id_empresa
                                     FROM caja_efectivo c
                                     INNER JOIN punto_emision p on p.id_puntoemision = c.id_puntoemision
                                     INNER JOIN permiso_cajaefectivo pc on pc.id_caja = c.id_caja
                                     INNER JOIN punto_emision pe on pe.id_puntoemision = c.id_puntoemision
                                     INNER JOIN sucursal su on su.id_sucursal = pe.id_sucursal
                                     WHERE c.activo = 1 and p.activo = 1 and 
                                           pc.id_usuario = $idusu
                                     ORDER BY nom_caja");
                                     //$query = $this->db->query("SELECT *, (SELECT ema_emp FROM empresa LIMIT 1) AS empresa FROM correo");
        $result = $query->result();
        return $result[0];
    }
}
