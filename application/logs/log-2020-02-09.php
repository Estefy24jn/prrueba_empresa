<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>

ERROR - 2020-02-09 01:35:08 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 3 - Invalid query:  SELECT id_usu, nom_usu, ape_usu, ema_usu, log_usu, perfil
                                    FROM usu_sistemas
                                    WHERE id_usu = 
ERROR - 2020-02-09 01:35:08 --> Severity: Error --> Call to a member function result() on boolean /home/u341939348/domains/servigas-marin.com/public_html/server1/application/models/Usuario_model.php 126
ERROR - 2020-02-09 01:36:09 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 3 - Invalid query:  SELECT id_usu, nom_usu, ape_usu, ema_usu, log_usu, perfil
                                    FROM usu_sistemas
                                    WHERE id_usu = 
ERROR - 2020-02-09 01:36:09 --> Severity: Error --> Call to a member function result() on boolean /home/u341939348/domains/servigas-marin.com/public_html/server1/application/models/Usuario_model.php 126
ERROR - 2020-02-09 01:37:14 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 3 - Invalid query:  SELECT id_usu, nom_usu, ape_usu, ema_usu, log_usu, perfil
                                    FROM usu_sistemas
                                    WHERE id_usu = 
ERROR - 2020-02-09 01:37:14 --> Severity: Error --> Call to a member function result() on boolean /home/u341939348/domains/servigas-marin.com/public_html/server1/application/models/Usuario_model.php 126
ERROR - 2020-02-09 07:26:48 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 3 - Invalid query:  SELECT id_usu, nom_usu, ape_usu, ema_usu, log_usu, perfil
                                    FROM usu_sistemas
                                    WHERE id_usu = 
ERROR - 2020-02-09 07:26:48 --> Severity: Error --> Call to a member function result() on boolean /home/u341939348/domains/servigas-marin.com/public_html/server1/application/models/Usuario_model.php 126
ERROR - 2020-02-09 07:31:57 --> Query error: Incorrect number of arguments for PROCEDURE u341939348_fac_electro.usuario_upd_acceso; expected 1, got 0 - Invalid query: CALL usuario_upd_acceso();
ERROR - 2020-02-09 07:31:57 --> Query error: Incorrect number of arguments for PROCEDURE u341939348_fac_electro.usuario_upd_acceso; expected 1, got 0 - Invalid query: CALL usuario_upd_acceso();
ERROR - 2020-02-09 07:31:57 --> Query error: Incorrect number of arguments for PROCEDURE u341939348_fac_electro.usuario_upd_acceso; expected 1, got 0 - Invalid query: CALL usuario_upd_acceso();
ERROR - 2020-02-09 07:31:57 --> Query error: Incorrect number of arguments for PROCEDURE u341939348_fac_electro.usuario_upd_acceso; expected 1, got 0 - Invalid query: CALL usuario_upd_acceso();
ERROR - 2020-02-09 07:31:57 --> Query error: Incorrect number of arguments for PROCEDURE u341939348_fac_electro.usuario_upd_acceso; expected 1, got 0 - Invalid query: CALL usuario_upd_acceso();
ERROR - 2020-02-09 07:31:57 --> Query error: Incorrect number of arguments for PROCEDURE u341939348_fac_electro.usuario_upd_acceso; expected 1, got 0 - Invalid query: CALL usuario_upd_acceso();
ERROR - 2020-02-09 07:54:15 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 5 - Invalid query: SELECT pro_id, pro_codigobarra, pro_codigoauxiliar, 
        pro_nombre, pro_descripcion, pro_preciocompra, pro_precioventa,
      (select sum(existencia) from almapro a where a.id_pro=producto.pro_id) as pro_existencia FROM producto  INNER JOIN almapro ap ON ap.id_pro = producto.pro_id
        INNER JOIN permiso_almacen pa ON pa.id_almacen = ap.id_alm
        WHERE pa.id_usuario =  
ERROR - 2020-02-09 07:54:15 --> Severity: Error --> Call to a member function result() on boolean /home/u341939348/domains/servigas-marin.com/public_html/server1/application/models/Producto_model.php 288
