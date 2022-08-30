<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>

ERROR - 2020-02-17 06:43:50 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 3 - Invalid query:  SELECT id_usu, nom_usu, ape_usu, ema_usu, log_usu, perfil
                                    FROM usu_sistemas
                                    WHERE id_usu = 
ERROR - 2020-02-17 06:43:50 --> Severity: Error --> Call to a member function result() on boolean /home/u341939348/domains/servigas-marin.com/public_html/server1/application/models/Usuario_model.php 126
ERROR - 2020-02-17 10:15:59 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 3 - Invalid query:  SELECT id_usu, nom_usu, ape_usu, ema_usu, log_usu, perfil
                                    FROM usu_sistemas
                                    WHERE id_usu = 
ERROR - 2020-02-17 10:15:59 --> Severity: Error --> Call to a member function result() on boolean /home/u341939348/domains/servigas-marin.com/public_html/server1/application/models/Usuario_model.php 126
ERROR - 2020-02-17 10:15:59 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 1 - Invalid query:  SELECT fot_usu from usu_sistemas where id_usu = ;
ERROR - 2020-02-17 10:15:59 --> Severity: Error --> Call to a member function result() on boolean /home/u341939348/domains/servigas-marin.com/public_html/server1/application/models/Usuario_model.php 41
ERROR - 2020-02-17 10:35:08 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 5 - Invalid query:  SELECT (CASE WHEN ft.id_formapago = 4 THEN IFNULL(t.comision_debito,0) ELSE IFNULL(t.comision_credito,0) END) as comision, ft.idreg, ft.id_formapago, f.nombre_formapago AS nomfp, ft.monto, ft.id_tipcancelacion
            FROM formapago_tmp ft
            INNER JOIN formapago f ON f.id_formapago = ft.id_formapago
            LEFT JOIN tarjetas t ON ft.id_tarjeta = t.id_tarjeta
            WHERE id_venta = 
ERROR - 2020-02-17 10:35:08 --> Severity: Error --> Call to a member function result() on boolean /home/u341939348/domains/servigas-marin.com/public_html/server1/application/models/Facturar_model.php 2325
ERROR - 2020-02-17 10:50:23 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 5 - Invalid query:  SELECT (CASE WHEN ft.id_formapago = 4 THEN IFNULL(t.comision_debito,0) ELSE IFNULL(t.comision_credito,0) END) as comision, ft.idreg, ft.id_formapago, f.nombre_formapago AS nomfp, ft.monto, ft.id_tipcancelacion
            FROM formapago_tmp ft
            INNER JOIN formapago f ON f.id_formapago = ft.id_formapago
            LEFT JOIN tarjetas t ON ft.id_tarjeta = t.id_tarjeta
            WHERE id_venta = 
ERROR - 2020-02-17 10:50:23 --> Severity: Error --> Call to a member function result() on boolean /home/u341939348/domains/servigas-marin.com/public_html/server1/application/models/Facturar_model.php 2325
ERROR - 2020-02-17 13:11:38 --> Query error: Unknown column 'C' in 'field list' - Invalid query: UPDATE venta_detalle_tmp set
                            cantidad = C, precio = 1.90, montoiva = 0,
                            subtotal = NaN, descsubtotal = NaN, tipprecio = 0,
                            precio_base = 1.90,
                            porcdesc = 0.00
                           where id_detalle=917
ERROR - 2020-02-17 13:53:49 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 3 - Invalid query:  SELECT id_usu, nom_usu, ape_usu, ema_usu, log_usu, perfil
                                    FROM usu_sistemas
                                    WHERE id_usu = 
ERROR - 2020-02-17 13:53:49 --> Severity: Error --> Call to a member function result() on boolean /home/u341939348/domains/servigas-marin.com/public_html/server1/application/models/Usuario_model.php 126
ERROR - 2020-02-17 13:53:49 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 3 - Invalid query:  SELECT id_usu, nom_usu, ape_usu, ema_usu, log_usu, perfil
                                    FROM usu_sistemas
                                    WHERE id_usu = 
ERROR - 2020-02-17 13:53:50 --> Severity: Error --> Call to a member function result() on boolean /home/u341939348/domains/servigas-marin.com/public_html/server1/application/models/Usuario_model.php 126
