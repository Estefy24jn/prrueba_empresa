<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>

ERROR - 2020-01-27 07:30:25 --> Severity: Warning --> mysqli::real_connect(): Headers and client library minor version mismatch. Headers:50562 Library:100138 /home/u878083006/domains/gestion-electronica.com/public_html/server1/system/database/drivers/mysqli/mysqli_driver.php 201
ERROR - 2020-01-27 07:30:25 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'ORDER BY nom_caja' at line 9 - Invalid query: SELECT c.id_caja, c.nom_caja, c.id_puntoemision, pe.id_sucursal, su.id_empresa
                                     FROM caja_efectivo c
                                     INNER JOIN punto_emision p on p.id_puntoemision = c.id_puntoemision
                                     INNER JOIN permiso_cajaefectivo pc on pc.id_caja = c.id_caja
                                     INNER JOIN punto_emision pe on pe.id_puntoemision = c.id_puntoemision
                                     INNER JOIN sucursal su on su.id_sucursal = pe.id_sucursal
                                     WHERE c.activo = 1 and p.activo = 1 and 
                                           pc.id_usuario = 
                                     ORDER BY nom_caja
ERROR - 2020-01-27 07:30:25 --> Severity: Error --> Call to a member function result() on boolean /home/u878083006/domains/gestion-electronica.com/public_html/server1/application/models/Correo_model.php 84
ERROR - 2020-01-27 07:30:25 --> Severity: Warning --> mysqli::real_connect(): Headers and client library minor version mismatch. Headers:50562 Library:100138 /home/u878083006/domains/gestion-electronica.com/public_html/server1/system/database/drivers/mysqli/mysqli_driver.php 201
ERROR - 2020-01-27 08:41:32 --> Severity: Warning --> mysqli::real_connect(): Headers and client library minor version mismatch. Headers:50562 Library:100138 /home/u878083006/domains/gestion-electronica.com/public_html/server1/system/database/drivers/mysqli/mysqli_driver.php 201
ERROR - 2020-01-27 19:21:25 --> Severity: Warning --> mysqli::real_connect(): Headers and client library minor version mismatch. Headers:50562 Library:100138 /home/u878083006/domains/gestion-electronica.com/public_html/server1/system/database/drivers/mysqli/mysqli_driver.php 201
