<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>

ERROR - 2020-02-12 06:47:33 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 3 - Invalid query:  SELECT id_usu, nom_usu, ape_usu, ema_usu, log_usu, perfil
                                    FROM usu_sistemas
                                    WHERE id_usu = 
ERROR - 2020-02-12 06:47:33 --> Severity: Error --> Call to a member function result() on boolean /home/u341939348/domains/servigas-marin.com/public_html/server1/application/models/Usuario_model.php 126
ERROR - 2020-02-12 07:28:13 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 3 - Invalid query:  SELECT id_usu, nom_usu, ape_usu, ema_usu, log_usu, perfil
                                    FROM usu_sistemas
                                    WHERE id_usu = 
ERROR - 2020-02-12 07:28:13 --> Severity: Error --> Call to a member function result() on boolean /home/u341939348/domains/servigas-marin.com/public_html/server1/application/models/Usuario_model.php 126
ERROR - 2020-02-12 10:10:55 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 3 - Invalid query:  SELECT id_usu, nom_usu, ape_usu, ema_usu, log_usu, perfil
                                    FROM usu_sistemas
                                    WHERE id_usu = 
ERROR - 2020-02-12 10:10:55 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 1 - Invalid query: SELECT id_usu, CONCAT(nom_usu,' ',ape_usu) AS vendedor FROM usu_sistemas WHERE id_usu = 
ERROR - 2020-02-12 10:10:55 --> Severity: Error --> Call to a member function result() on boolean /home/u341939348/domains/servigas-marin.com/public_html/server1/application/models/Usuario_model.php 126
ERROR - 2020-02-12 10:10:55 --> Severity: Error --> Call to a member function result() on boolean /home/u341939348/domains/servigas-marin.com/public_html/server1/application/models/Facturar_model.php 2727
ERROR - 2020-02-12 10:32:59 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 5 - Invalid query:  SELECT (CASE WHEN ft.id_formapago = 4 THEN IFNULL(t.comision_debito,0) ELSE IFNULL(t.comision_credito,0) END) as comision, ft.idreg, ft.id_formapago, f.nombre_formapago AS nomfp, ft.monto, ft.id_tipcancelacion
            FROM formapago_tmp ft
            INNER JOIN formapago f ON f.id_formapago = ft.id_formapago
            LEFT JOIN tarjetas t ON ft.id_tarjeta = t.id_tarjeta
            WHERE id_venta = 
ERROR - 2020-02-12 10:32:59 --> Severity: Error --> Call to a member function result() on boolean /home/u341939348/domains/servigas-marin.com/public_html/server1/application/models/Facturar_model.php 2325
ERROR - 2020-02-12 10:35:00 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 5 - Invalid query:  SELECT (CASE WHEN ft.id_formapago = 4 THEN IFNULL(t.comision_debito,0) ELSE IFNULL(t.comision_credito,0) END) as comision, ft.idreg, ft.id_formapago, f.nombre_formapago AS nomfp, ft.monto, ft.id_tipcancelacion
            FROM formapago_tmp ft
            INNER JOIN formapago f ON f.id_formapago = ft.id_formapago
            LEFT JOIN tarjetas t ON ft.id_tarjeta = t.id_tarjeta
            WHERE id_venta = 
ERROR - 2020-02-12 10:35:00 --> Severity: Error --> Call to a member function result() on boolean /home/u341939348/domains/servigas-marin.com/public_html/server1/application/models/Facturar_model.php 2325
ERROR - 2020-02-12 10:35:11 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 5 - Invalid query:  SELECT (CASE WHEN ft.id_formapago = 4 THEN IFNULL(t.comision_debito,0) ELSE IFNULL(t.comision_credito,0) END) as comision, ft.idreg, ft.id_formapago, f.nombre_formapago AS nomfp, ft.monto, ft.id_tipcancelacion
            FROM formapago_tmp ft
            INNER JOIN formapago f ON f.id_formapago = ft.id_formapago
            LEFT JOIN tarjetas t ON ft.id_tarjeta = t.id_tarjeta
            WHERE id_venta = 
ERROR - 2020-02-12 10:35:11 --> Severity: Error --> Call to a member function result() on boolean /home/u341939348/domains/servigas-marin.com/public_html/server1/application/models/Facturar_model.php 2325
ERROR - 2020-02-12 13:37:34 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 5 - Invalid query:  SELECT (CASE WHEN ft.id_formapago = 4 THEN IFNULL(t.comision_debito,0) ELSE IFNULL(t.comision_credito,0) END) as comision, ft.idreg, ft.id_formapago, f.nombre_formapago AS nomfp, ft.monto, ft.id_tipcancelacion
            FROM formapago_tmp ft
            INNER JOIN formapago f ON f.id_formapago = ft.id_formapago
            LEFT JOIN tarjetas t ON ft.id_tarjeta = t.id_tarjeta
            WHERE id_venta = 
ERROR - 2020-02-12 13:37:34 --> Severity: Error --> Call to a member function result() on boolean /home/u341939348/domains/servigas-marin.com/public_html/server1/application/models/Facturar_model.php 2325
ERROR - 2020-02-12 16:12:08 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 1 - Invalid query: SELECT COUNT(*) AS val FROM venta_tmp WHERE idusu = 
ERROR - 2020-02-12 16:12:08 --> Severity: Error --> Call to a member function result() on boolean /home/u341939348/domains/servigas-marin.com/public_html/server1/application/models/Facturar_model.php 932
ERROR - 2020-02-12 16:12:37 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 1 - Invalid query: SELECT COUNT(*) AS val FROM venta_tmp WHERE idusu = 
ERROR - 2020-02-12 16:12:37 --> Severity: Error --> Call to a member function result() on boolean /home/u341939348/domains/servigas-marin.com/public_html/server1/application/models/Facturar_model.php 932
ERROR - 2020-02-12 16:12:43 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 1 - Invalid query: SELECT COUNT(*) AS val FROM venta_tmp WHERE idusu = 
ERROR - 2020-02-12 16:12:43 --> Severity: Error --> Call to a member function result() on boolean /home/u341939348/domains/servigas-marin.com/public_html/server1/application/models/Facturar_model.php 932
ERROR - 2020-02-12 16:12:50 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 1 - Invalid query: SELECT COUNT(*) AS val FROM venta_tmp WHERE idusu = 
ERROR - 2020-02-12 16:12:50 --> Severity: Error --> Call to a member function result() on boolean /home/u341939348/domains/servigas-marin.com/public_html/server1/application/models/Facturar_model.php 932
ERROR - 2020-02-12 16:12:55 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'and tipo_doc=2' at line 1 - Invalid query: select count(*) as cant from venta_tmp where idusu= and tipo_doc=2
ERROR - 2020-02-12 16:12:55 --> Severity: Error --> Call to a member function result() on boolean /home/u341939348/domains/servigas-marin.com/public_html/server1/application/models/Facturar_model.php 1153
ERROR - 2020-02-12 16:13:12 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'and tipo_doc=2' at line 1 - Invalid query: select count(*) as cant from venta_tmp where idusu= and tipo_doc=2
ERROR - 2020-02-12 16:13:12 --> Severity: Error --> Call to a member function result() on boolean /home/u341939348/domains/servigas-marin.com/public_html/server1/application/models/Facturar_model.php 1153
ERROR - 2020-02-12 16:13:23 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'and tipo_doc=2' at line 1 - Invalid query: select count(*) as cant from venta_tmp where idusu= and tipo_doc=2
ERROR - 2020-02-12 16:13:23 --> Severity: Error --> Call to a member function result() on boolean /home/u341939348/domains/servigas-marin.com/public_html/server1/application/models/Facturar_model.php 1153
ERROR - 2020-02-12 16:13:40 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'and tipo_doc=2' at line 1 - Invalid query: select count(*) as cant from venta_tmp where idusu= and tipo_doc=2
ERROR - 2020-02-12 16:13:40 --> Severity: Error --> Call to a member function result() on boolean /home/u341939348/domains/servigas-marin.com/public_html/server1/application/models/Facturar_model.php 1153
ERROR - 2020-02-12 16:14:41 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'and tipo_doc=2' at line 1 - Invalid query: select count(*) as cant from venta_tmp where idusu= and tipo_doc=2
ERROR - 2020-02-12 16:14:41 --> Severity: Error --> Call to a member function result() on boolean /home/u341939348/domains/servigas-marin.com/public_html/server1/application/models/Facturar_model.php 1153
ERROR - 2020-02-12 16:14:41 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ')' at line 2 - Invalid query: delete from venta_credito_tmp
                                 WHERE id_venta in (select id_venta from venta_tmp where idusu = )
ERROR - 2020-02-12 16:14:41 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ')' at line 2 - Invalid query: delete from venta_creditocuota_tmp
                                 WHERE id_venta in (select id_venta from venta_tmp where idusu = )
ERROR - 2020-02-12 16:14:41 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ')' at line 2 - Invalid query: delete from venta_detalle_tmp
                                 WHERE id_venta in (select id_venta from venta_tmp where idusu = )
ERROR - 2020-02-12 16:14:41 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 1 - Invalid query: delete from venta_tmp where idusu = 
ERROR - 2020-02-12 16:14:42 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ')' at line 2 - Invalid query: delete from venta_credito_tmp
                                 WHERE id_venta in (select id_venta from venta_tmp where idusu = )
ERROR - 2020-02-12 16:14:42 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ')' at line 2 - Invalid query: delete from venta_creditocuota_tmp
                                 WHERE id_venta in (select id_venta from venta_tmp where idusu = )
ERROR - 2020-02-12 16:14:42 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ')' at line 2 - Invalid query: delete from venta_detalle_tmp
                                 WHERE id_venta in (select id_venta from venta_tmp where idusu = )
ERROR - 2020-02-12 16:14:42 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 1 - Invalid query: delete from venta_tmp where idusu = 
ERROR - 2020-02-12 16:14:43 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ')' at line 2 - Invalid query: delete from venta_credito_tmp
                                 WHERE id_venta in (select id_venta from venta_tmp where idusu = )
ERROR - 2020-02-12 16:14:43 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ')' at line 2 - Invalid query: delete from venta_creditocuota_tmp
                                 WHERE id_venta in (select id_venta from venta_tmp where idusu = )
ERROR - 2020-02-12 16:14:43 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ')' at line 2 - Invalid query: delete from venta_detalle_tmp
                                 WHERE id_venta in (select id_venta from venta_tmp where idusu = )
ERROR - 2020-02-12 16:14:43 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 1 - Invalid query: delete from venta_tmp where idusu = 
ERROR - 2020-02-12 16:15:38 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ')' at line 2 - Invalid query: delete from venta_credito_tmp
                                 WHERE id_venta in (select id_venta from venta_tmp where idusu = )
ERROR - 2020-02-12 16:15:38 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ')' at line 2 - Invalid query: delete from venta_creditocuota_tmp
                                 WHERE id_venta in (select id_venta from venta_tmp where idusu = )
ERROR - 2020-02-12 16:15:38 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ')' at line 2 - Invalid query: delete from venta_detalle_tmp
                                 WHERE id_venta in (select id_venta from venta_tmp where idusu = )
ERROR - 2020-02-12 16:15:38 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 1 - Invalid query: delete from venta_tmp where idusu = 
ERROR - 2020-02-12 16:16:53 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 1 - Invalid query: SELECT COUNT(*) AS val FROM venta_tmp WHERE idusu = 
ERROR - 2020-02-12 16:16:53 --> Severity: Error --> Call to a member function result() on boolean /home/u341939348/domains/servigas-marin.com/public_html/server1/application/models/Facturar_model.php 932
ERROR - 2020-02-12 16:17:25 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 1 - Invalid query: SELECT COUNT(*) AS val FROM venta_tmp WHERE idusu = 
ERROR - 2020-02-12 16:17:25 --> Severity: Error --> Call to a member function result() on boolean /home/u341939348/domains/servigas-marin.com/public_html/server1/application/models/Facturar_model.php 932
ERROR - 2020-02-12 16:17:36 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 1 - Invalid query: SELECT COUNT(*) AS val FROM venta_tmp WHERE idusu = 
ERROR - 2020-02-12 16:17:36 --> Severity: Error --> Call to a member function result() on boolean /home/u341939348/domains/servigas-marin.com/public_html/server1/application/models/Facturar_model.php 932
ERROR - 2020-02-12 16:17:41 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 1 - Invalid query: SELECT COUNT(*) AS val FROM venta_tmp WHERE idusu = 
ERROR - 2020-02-12 16:17:41 --> Severity: Error --> Call to a member function result() on boolean /home/u341939348/domains/servigas-marin.com/public_html/server1/application/models/Facturar_model.php 932
ERROR - 2020-02-12 16:17:43 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'and tipo_doc=2' at line 1 - Invalid query: select count(*) as cant from venta_tmp where idusu= and tipo_doc=2
ERROR - 2020-02-12 16:17:43 --> Severity: Error --> Call to a member function result() on boolean /home/u341939348/domains/servigas-marin.com/public_html/server1/application/models/Facturar_model.php 1153
ERROR - 2020-02-12 18:19:22 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 18:19:27 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 18:19:30 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 18:19:34 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 18:19:36 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 18:19:39 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 18:19:42 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 18:19:45 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 18:19:48 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 18:19:55 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 18:19:58 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 18:20:01 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 18:20:04 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 18:20:07 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 18:20:10 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 18:20:12 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 18:20:15 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 18:20:17 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 18:20:20 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 18:20:23 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 18:20:26 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 18:20:28 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 18:20:31 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 18:20:33 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 18:20:36 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 18:20:39 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 18:20:44 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 18:20:47 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 18:20:50 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 18:20:53 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 18:20:56 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 18:20:58 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 18:21:01 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 18:21:04 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 18:21:06 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 18:21:09 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 18:21:12 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 18:22:43 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 3 - Invalid query:  SELECT id_usu, nom_usu, ape_usu, ema_usu, log_usu, perfil
                                    FROM usu_sistemas
                                    WHERE id_usu = 
ERROR - 2020-02-12 18:22:43 --> Severity: Error --> Call to a member function result() on boolean /home/u341939348/domains/servigas-marin.com/public_html/server1/application/models/Usuario_model.php 126
ERROR - 2020-02-12 22:36:55 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 22:37:01 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 22:37:05 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 22:37:09 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 22:37:13 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 22:37:59 --> Query error: MySQL server has gone away - Invalid query: SELECT count(*) as cant FROM facturainfoestadosri WHERE idfactura = 1751
ERROR - 2020-02-12 22:37:59 --> Severity: Error --> Call to a member function result() on boolean /home/u341939348/domains/servigas-marin.com/public_html/server1/application/models/InfoSRI_model.php 94
ERROR - 2020-02-12 22:37:59 --> Query error: MySQL server has gone away - Invalid query: SET time_zone = '-5:00';
ERROR - 2020-02-12 22:37:59 --> Query error: MySQL server has gone away - Invalid query: SELECT id_usu, perfil  
                                     FROM usu_sistemas WHERE UPPER(log_usu) = 'EQSOFT'
ERROR - 2020-02-12 22:37:59 --> Severity: Error --> Call to a member function result() on boolean /home/u341939348/domains/servigas-marin.com/public_html/server1/application/models/Usuario_model.php 279
ERROR - 2020-02-12 22:37:59 --> Query error: MySQL server has gone away - Invalid query: SET time_zone = '-5:00';
ERROR - 2020-02-12 22:37:59 --> Query error: MySQL server has gone away - Invalid query: SELECT id_usu, perfil  
                                     FROM usu_sistemas WHERE UPPER(log_usu) = 'EQSOFT'
ERROR - 2020-02-12 22:37:59 --> Severity: Error --> Call to a member function result() on boolean /home/u341939348/domains/servigas-marin.com/public_html/server1/application/models/Usuario_model.php 279
ERROR - 2020-02-12 22:37:59 --> Query error: MySQL server has gone away - Invalid query: SET time_zone = '-5:00';
ERROR - 2020-02-12 22:37:59 --> Query error: MySQL server has gone away - Invalid query: SELECT id_usu, perfil  
                                     FROM usu_sistemas WHERE UPPER(log_usu) = 'EQSOFT'
ERROR - 2020-02-12 22:37:59 --> Severity: Error --> Call to a member function result() on boolean /home/u341939348/domains/servigas-marin.com/public_html/server1/application/models/Usuario_model.php 279
ERROR - 2020-02-12 22:54:32 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 22:55:32 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 22:55:34 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 22:55:37 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 22:55:40 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 22:55:42 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 22:55:45 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 22:55:48 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 22:55:51 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 22:55:53 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 22:55:56 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 22:56:05 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 22:56:12 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 22:56:21 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 22:56:25 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 22:56:30 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 22:56:35 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 22:56:39 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 22:56:42 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 22:56:46 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 22:57:19 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 22:57:31 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 22:57:38 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 22:57:42 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 22:57:44 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 22:57:46 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 22:57:48 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 22:57:52 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 22:57:54 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 22:57:56 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 22:57:59 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 22:58:04 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 22:58:08 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 22:58:11 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 22:58:13 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 22:58:16 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 22:58:18 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 22:58:21 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 22:58:24 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 22:58:26 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 22:58:30 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 22:58:33 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 22:58:36 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 22:58:39 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 22:58:42 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 22:58:48 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 22:58:50 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 22:58:56 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 22:58:58 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 22:59:01 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 22:59:06 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 22:59:08 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 22:59:11 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 22:59:14 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 22:59:17 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 22:59:20 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 22:59:23 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 22:59:25 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 22:59:28 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 22:59:31 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-12 23:00:18 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
