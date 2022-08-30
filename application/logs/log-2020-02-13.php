<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>

ERROR - 2020-02-13 06:32:14 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 3 - Invalid query:  SELECT id_usu, nom_usu, ape_usu, ema_usu, log_usu, perfil
                                    FROM usu_sistemas
                                    WHERE id_usu = 
ERROR - 2020-02-13 06:32:14 --> Severity: Error --> Call to a member function result() on boolean /home/u341939348/domains/servigas-marin.com/public_html/server1/application/models/Usuario_model.php 126
ERROR - 2020-02-13 06:57:06 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 3 - Invalid query:  SELECT id_usu, nom_usu, ape_usu, ema_usu, log_usu, perfil
                                    FROM usu_sistemas
                                    WHERE id_usu = 
ERROR - 2020-02-13 06:57:06 --> Severity: Error --> Call to a member function result() on boolean /home/u341939348/domains/servigas-marin.com/public_html/server1/application/models/Usuario_model.php 126
ERROR - 2020-02-13 07:06:12 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 3 - Invalid query:  SELECT id_usu, nom_usu, ape_usu, ema_usu, log_usu, perfil
                                    FROM usu_sistemas
                                    WHERE id_usu = 
ERROR - 2020-02-13 07:06:12 --> Severity: Error --> Call to a member function result() on boolean /home/u341939348/domains/servigas-marin.com/public_html/server1/application/models/Usuario_model.php 126
ERROR - 2020-02-13 07:40:26 --> Query error: Unknown column 'NaN' in 'field list' - Invalid query: UPDATE producto SET  pro_codigobarra = 'c', 
                                                      pro_codigoauxiliar = 'c', 
                                                      pro_nombre = 'TRANSPORTE', 
                                                      pro_descripcion = '', 
                                                      pro_preciocompra = NaN,
                                                      pro_precioventa = 1.90, 
                                                      pro_maximo = 500.00, 
                                                      pro_minimo = 1.00, 
                                                      pro_idcategoria = 1, 
                                                      pro_iddeducible = 0, 
                                                      pro_grabaiva = 0,
                                                      pro_esservicio = 0, 
                                                      pro_estatus = 'A', 
                                                       
                                                      pro_idunidadmedida = 1,
                                                      habilitavariante = 0, 
                                                      maxitemvariante = 0, 
                                                      productodescontarventa = 0,
                                                      pro_aplicompra = 1, 
                                                      pro_apliventa = 1,
                                                      comanda = 0,
                                                      cantidad = 0,
                                                      idcla = 2,
                                                      ingrediente = 0, 
                                                      preparado = case 0 when 0 then 0 else
                                                                    case when (Select count(*) from producto_ingrediente where id_pro=662) > 0 then 1 else 0 end
                                                                  end,
                                                      id_cto_retencion = 0,
                                                      pro_garantia = 0,
                                                      ubicacion = '',
                                                      subsidio = 0,
                                                      idcategoriacontable = NULL,
                                                      imagen_path = ''
                                                WHERE pro_id = 662
ERROR - 2020-02-13 07:40:26 --> Query error: Unknown column 'NaN' in 'field list' - Invalid query: call kardexingreso_ins(662, '', 'INGRESO POR CAMBIO DE PRECIO', 
                                                        954.00, NaN, 0, 
                                                        1, 33, 5);
ERROR - 2020-02-13 07:40:26 --> Severity: Error --> Call to a member function result() on boolean /home/u341939348/domains/servigas-marin.com/public_html/server1/application/models/Inventario_model.php 41
ERROR - 2020-02-13 07:41:22 --> Query error: Unknown column 'NaN' in 'field list' - Invalid query: UPDATE producto SET  pro_codigobarra = 'c', 
                                                      pro_codigoauxiliar = 'c', 
                                                      pro_nombre = 'TRANSPORTE', 
                                                      pro_descripcion = '', 
                                                      pro_preciocompra = NaN,
                                                      pro_precioventa = 1.90, 
                                                      pro_maximo = 500.00, 
                                                      pro_minimo = 1.00, 
                                                      pro_idcategoria = 1, 
                                                      pro_iddeducible = 0, 
                                                      pro_grabaiva = 0,
                                                      pro_esservicio = 0, 
                                                      pro_estatus = 'A', 
                                                       
                                                      pro_idunidadmedida = 1,
                                                      habilitavariante = 0, 
                                                      maxitemvariante = 0, 
                                                      productodescontarventa = 0,
                                                      pro_aplicompra = 1, 
                                                      pro_apliventa = 1,
                                                      comanda = 0,
                                                      cantidad = 0,
                                                      idcla = 2,
                                                      ingrediente = 0, 
                                                      preparado = case 0 when 0 then 0 else
                                                                    case when (Select count(*) from producto_ingrediente where id_pro=662) > 0 then 1 else 0 end
                                                                  end,
                                                      id_cto_retencion = 0,
                                                      pro_garantia = 0,
                                                      ubicacion = '',
                                                      subsidio = 0,
                                                      idcategoriacontable = NULL,
                                                      imagen_path = ''
                                                WHERE pro_id = 662
ERROR - 2020-02-13 07:41:22 --> Query error: Unknown column 'NaN' in 'field list' - Invalid query: call kardexingreso_ins(662, '', 'INGRESO POR CAMBIO DE PRECIO', 
                                                        954.00, NaN, 0, 
                                                        1, 33, 5);
ERROR - 2020-02-13 07:41:22 --> Severity: Error --> Call to a member function result() on boolean /home/u341939348/domains/servigas-marin.com/public_html/server1/application/models/Inventario_model.php 41
ERROR - 2020-02-13 07:59:30 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-13 07:59:38 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-13 08:00:29 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-13 09:25:57 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 3 - Invalid query:  SELECT id_usu, nom_usu, ape_usu, ema_usu, log_usu, perfil
                                    FROM usu_sistemas
                                    WHERE id_usu = 
ERROR - 2020-02-13 09:25:57 --> Severity: Error --> Call to a member function result() on boolean /home/u341939348/domains/servigas-marin.com/public_html/server1/application/models/Usuario_model.php 126
ERROR - 2020-02-13 10:16:53 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 5 - Invalid query:  SELECT (CASE WHEN ft.id_formapago = 4 THEN IFNULL(t.comision_debito,0) ELSE IFNULL(t.comision_credito,0) END) as comision, ft.idreg, ft.id_formapago, f.nombre_formapago AS nomfp, ft.monto, ft.id_tipcancelacion
            FROM formapago_tmp ft
            INNER JOIN formapago f ON f.id_formapago = ft.id_formapago
            LEFT JOIN tarjetas t ON ft.id_tarjeta = t.id_tarjeta
            WHERE id_venta = 
ERROR - 2020-02-13 10:16:53 --> Severity: Error --> Call to a member function result() on boolean /home/u341939348/domains/servigas-marin.com/public_html/server1/application/models/Facturar_model.php 2325
ERROR - 2020-02-13 10:20:03 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 5 - Invalid query:  SELECT (CASE WHEN ft.id_formapago = 4 THEN IFNULL(t.comision_debito,0) ELSE IFNULL(t.comision_credito,0) END) as comision, ft.idreg, ft.id_formapago, f.nombre_formapago AS nomfp, ft.monto, ft.id_tipcancelacion
            FROM formapago_tmp ft
            INNER JOIN formapago f ON f.id_formapago = ft.id_formapago
            LEFT JOIN tarjetas t ON ft.id_tarjeta = t.id_tarjeta
            WHERE id_venta = 
ERROR - 2020-02-13 10:20:03 --> Severity: Error --> Call to a member function result() on boolean /home/u341939348/domains/servigas-marin.com/public_html/server1/application/models/Facturar_model.php 2325
ERROR - 2020-02-13 10:20:04 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 5 - Invalid query:  SELECT (CASE WHEN ft.id_formapago = 4 THEN IFNULL(t.comision_debito,0) ELSE IFNULL(t.comision_credito,0) END) as comision, ft.idreg, ft.id_formapago, f.nombre_formapago AS nomfp, ft.monto, ft.id_tipcancelacion
            FROM formapago_tmp ft
            INNER JOIN formapago f ON f.id_formapago = ft.id_formapago
            LEFT JOIN tarjetas t ON ft.id_tarjeta = t.id_tarjeta
            WHERE id_venta = 
ERROR - 2020-02-13 10:20:04 --> Severity: Error --> Call to a member function result() on boolean /home/u341939348/domains/servigas-marin.com/public_html/server1/application/models/Facturar_model.php 2325
ERROR - 2020-02-13 10:20:07 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 5 - Invalid query:  SELECT (CASE WHEN ft.id_formapago = 4 THEN IFNULL(t.comision_debito,0) ELSE IFNULL(t.comision_credito,0) END) as comision, ft.idreg, ft.id_formapago, f.nombre_formapago AS nomfp, ft.monto, ft.id_tipcancelacion
            FROM formapago_tmp ft
            INNER JOIN formapago f ON f.id_formapago = ft.id_formapago
            LEFT JOIN tarjetas t ON ft.id_tarjeta = t.id_tarjeta
            WHERE id_venta = 
ERROR - 2020-02-13 10:20:07 --> Severity: Error --> Call to a member function result() on boolean /home/u341939348/domains/servigas-marin.com/public_html/server1/application/models/Facturar_model.php 2325
ERROR - 2020-02-13 10:20:16 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 5 - Invalid query:  SELECT (CASE WHEN ft.id_formapago = 4 THEN IFNULL(t.comision_debito,0) ELSE IFNULL(t.comision_credito,0) END) as comision, ft.idreg, ft.id_formapago, f.nombre_formapago AS nomfp, ft.monto, ft.id_tipcancelacion
            FROM formapago_tmp ft
            INNER JOIN formapago f ON f.id_formapago = ft.id_formapago
            LEFT JOIN tarjetas t ON ft.id_tarjeta = t.id_tarjeta
            WHERE id_venta = 
ERROR - 2020-02-13 10:20:16 --> Severity: Error --> Call to a member function result() on boolean /home/u341939348/domains/servigas-marin.com/public_html/server1/application/models/Facturar_model.php 2325
ERROR - 2020-02-13 12:31:24 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 5 - Invalid query:  SELECT (CASE WHEN ft.id_formapago = 4 THEN IFNULL(t.comision_debito,0) ELSE IFNULL(t.comision_credito,0) END) as comision, ft.idreg, ft.id_formapago, f.nombre_formapago AS nomfp, ft.monto, ft.id_tipcancelacion
            FROM formapago_tmp ft
            INNER JOIN formapago f ON f.id_formapago = ft.id_formapago
            LEFT JOIN tarjetas t ON ft.id_tarjeta = t.id_tarjeta
            WHERE id_venta = 
ERROR - 2020-02-13 12:31:24 --> Severity: Error --> Call to a member function result() on boolean /home/u341939348/domains/servigas-marin.com/public_html/server1/application/models/Facturar_model.php 2325
ERROR - 2020-02-13 14:33:11 --> Query error: Incorrect number of arguments for PROCEDURE u341939348_fac_electro.usuario_upd_acceso; expected 1, got 0 - Invalid query: CALL usuario_upd_acceso();
ERROR - 2020-02-13 15:55:27 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'ORDER BY nom_caja' at line 9 - Invalid query: SELECT c.id_caja, c.nom_caja, c.id_puntoemision, pe.id_sucursal, su.id_empresa
                                     FROM caja_efectivo c
                                     INNER JOIN punto_emision p on p.id_puntoemision = c.id_puntoemision
                                     INNER JOIN permiso_cajaefectivo pc on pc.id_caja = c.id_caja
                                     INNER JOIN punto_emision pe on pe.id_puntoemision = c.id_puntoemision
                                     INNER JOIN sucursal su on su.id_sucursal = pe.id_sucursal
                                     WHERE c.activo = 1 and p.activo = 1 and 
                                           pc.id_usuario = 
                                     ORDER BY nom_caja
ERROR - 2020-02-13 15:55:27 --> Severity: Error --> Call to a member function result() on boolean /home/u341939348/domains/servigas-marin.com/public_html/server1/application/models/Correo_model.php 84
ERROR - 2020-02-13 15:55:57 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 1 - Invalid query: SELECT COUNT(*) AS val FROM venta_tmp WHERE idusu = 
ERROR - 2020-02-13 15:55:57 --> Severity: Error --> Call to a member function result() on boolean /home/u341939348/domains/servigas-marin.com/public_html/server1/application/models/Facturar_model.php 932
ERROR - 2020-02-13 15:56:15 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 1 - Invalid query: SELECT COUNT(*) AS val FROM venta_tmp WHERE idusu = 
ERROR - 2020-02-13 15:56:15 --> Severity: Error --> Call to a member function result() on boolean /home/u341939348/domains/servigas-marin.com/public_html/server1/application/models/Facturar_model.php 932
ERROR - 2020-02-13 15:57:13 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 1 - Invalid query: SELECT COUNT(*) AS val FROM venta_tmp WHERE idusu = 
ERROR - 2020-02-13 15:57:13 --> Severity: Error --> Call to a member function result() on boolean /home/u341939348/domains/servigas-marin.com/public_html/server1/application/models/Facturar_model.php 932
ERROR - 2020-02-13 15:57:17 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 1 - Invalid query: SELECT COUNT(*) AS val FROM venta_tmp WHERE idusu = 
ERROR - 2020-02-13 15:57:17 --> Severity: Error --> Call to a member function result() on boolean /home/u341939348/domains/servigas-marin.com/public_html/server1/application/models/Facturar_model.php 932
ERROR - 2020-02-13 15:57:19 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 1 - Invalid query: SELECT COUNT(*) AS val FROM venta_tmp WHERE idusu = 
ERROR - 2020-02-13 15:57:19 --> Severity: Error --> Call to a member function result() on boolean /home/u341939348/domains/servigas-marin.com/public_html/server1/application/models/Facturar_model.php 932
ERROR - 2020-02-13 15:57:21 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 1 - Invalid query: SELECT COUNT(*) AS val FROM venta_tmp WHERE idusu = 
ERROR - 2020-02-13 15:57:21 --> Severity: Error --> Call to a member function result() on boolean /home/u341939348/domains/servigas-marin.com/public_html/server1/application/models/Facturar_model.php 932
ERROR - 2020-02-13 15:57:22 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'and tipo_doc=2' at line 1 - Invalid query: select count(*) as cant from venta_tmp where idusu= and tipo_doc=2
ERROR - 2020-02-13 15:57:22 --> Severity: Error --> Call to a member function result() on boolean /home/u341939348/domains/servigas-marin.com/public_html/server1/application/models/Facturar_model.php 1153
ERROR - 2020-02-13 15:57:27 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'and tipo_doc=2' at line 1 - Invalid query: select count(*) as cant from venta_tmp where idusu= and tipo_doc=2
ERROR - 2020-02-13 15:57:27 --> Severity: Error --> Call to a member function result() on boolean /home/u341939348/domains/servigas-marin.com/public_html/server1/application/models/Facturar_model.php 1153
ERROR - 2020-02-13 15:57:28 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'and tipo_doc=2' at line 1 - Invalid query: select count(*) as cant from venta_tmp where idusu= and tipo_doc=2
ERROR - 2020-02-13 15:57:28 --> Severity: Error --> Call to a member function result() on boolean /home/u341939348/domains/servigas-marin.com/public_html/server1/application/models/Facturar_model.php 1153
ERROR - 2020-02-13 15:57:29 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'and tipo_doc=2' at line 1 - Invalid query: select count(*) as cant from venta_tmp where idusu= and tipo_doc=2
ERROR - 2020-02-13 15:57:29 --> Severity: Error --> Call to a member function result() on boolean /home/u341939348/domains/servigas-marin.com/public_html/server1/application/models/Facturar_model.php 1153
ERROR - 2020-02-13 15:57:30 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'and tipo_doc=2' at line 1 - Invalid query: select count(*) as cant from venta_tmp where idusu= and tipo_doc=2
ERROR - 2020-02-13 15:57:30 --> Severity: Error --> Call to a member function result() on boolean /home/u341939348/domains/servigas-marin.com/public_html/server1/application/models/Facturar_model.php 1153
ERROR - 2020-02-13 15:57:47 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'and tipo_doc=2' at line 1 - Invalid query: select count(*) as cant from venta_tmp where idusu= and tipo_doc=2
ERROR - 2020-02-13 15:57:47 --> Severity: Error --> Call to a member function result() on boolean /home/u341939348/domains/servigas-marin.com/public_html/server1/application/models/Facturar_model.php 1153
ERROR - 2020-02-13 15:57:54 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'and tipo_doc=2' at line 1 - Invalid query: select count(*) as cant from venta_tmp where idusu= and tipo_doc=2
ERROR - 2020-02-13 15:57:54 --> Severity: Error --> Call to a member function result() on boolean /home/u341939348/domains/servigas-marin.com/public_html/server1/application/models/Facturar_model.php 1153
ERROR - 2020-02-13 15:58:03 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ')' at line 2 - Invalid query: delete from venta_credito_tmp
                                 WHERE id_venta in (select id_venta from venta_tmp where idusu = )
ERROR - 2020-02-13 15:58:03 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ')' at line 2 - Invalid query: delete from venta_creditocuota_tmp
                                 WHERE id_venta in (select id_venta from venta_tmp where idusu = )
ERROR - 2020-02-13 15:58:03 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ')' at line 2 - Invalid query: delete from venta_detalle_tmp
                                 WHERE id_venta in (select id_venta from venta_tmp where idusu = )
ERROR - 2020-02-13 15:58:03 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 1 - Invalid query: delete from venta_tmp where idusu = 
ERROR - 2020-02-13 15:58:07 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ')' at line 2 - Invalid query: delete from venta_credito_tmp
                                 WHERE id_venta in (select id_venta from venta_tmp where idusu = )
ERROR - 2020-02-13 15:58:07 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ')' at line 2 - Invalid query: delete from venta_creditocuota_tmp
                                 WHERE id_venta in (select id_venta from venta_tmp where idusu = )
ERROR - 2020-02-13 15:58:07 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ')' at line 2 - Invalid query: delete from venta_detalle_tmp
                                 WHERE id_venta in (select id_venta from venta_tmp where idusu = )
ERROR - 2020-02-13 15:58:07 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 1 - Invalid query: delete from venta_tmp where idusu = 
ERROR - 2020-02-13 15:58:34 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ')' at line 2 - Invalid query: delete from venta_credito_tmp
                                 WHERE id_venta in (select id_venta from venta_tmp where idusu = )
ERROR - 2020-02-13 15:58:34 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ')' at line 2 - Invalid query: delete from venta_creditocuota_tmp
                                 WHERE id_venta in (select id_venta from venta_tmp where idusu = )
ERROR - 2020-02-13 15:58:34 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ')' at line 2 - Invalid query: delete from venta_detalle_tmp
                                 WHERE id_venta in (select id_venta from venta_tmp where idusu = )
ERROR - 2020-02-13 15:58:34 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 1 - Invalid query: delete from venta_tmp where idusu = 
ERROR - 2020-02-13 15:58:52 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 1 - Invalid query: SELECT COUNT(*) AS val FROM venta_tmp WHERE idusu = 
ERROR - 2020-02-13 15:58:52 --> Severity: Error --> Call to a member function result() on boolean /home/u341939348/domains/servigas-marin.com/public_html/server1/application/models/Facturar_model.php 932
ERROR - 2020-02-13 15:58:52 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ')' at line 2 - Invalid query: delete from venta_credito_tmp
                                 WHERE id_venta in (select id_venta from venta_tmp where idusu = )
ERROR - 2020-02-13 15:58:52 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ')' at line 2 - Invalid query: delete from venta_creditocuota_tmp
                                 WHERE id_venta in (select id_venta from venta_tmp where idusu = )
ERROR - 2020-02-13 15:58:52 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ')' at line 2 - Invalid query: delete from venta_detalle_tmp
                                 WHERE id_venta in (select id_venta from venta_tmp where idusu = )
ERROR - 2020-02-13 15:58:52 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 1 - Invalid query: delete from venta_tmp where idusu = 
ERROR - 2020-02-13 15:58:58 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ')' at line 2 - Invalid query: delete from venta_credito_tmp
                                 WHERE id_venta in (select id_venta from venta_tmp where idusu = )
ERROR - 2020-02-13 15:58:58 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ')' at line 2 - Invalid query: delete from venta_creditocuota_tmp
                                 WHERE id_venta in (select id_venta from venta_tmp where idusu = )
ERROR - 2020-02-13 15:58:58 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ')' at line 2 - Invalid query: delete from venta_detalle_tmp
                                 WHERE id_venta in (select id_venta from venta_tmp where idusu = )
ERROR - 2020-02-13 15:58:58 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 1 - Invalid query: delete from venta_tmp where idusu = 
ERROR - 2020-02-13 15:59:20 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 1 - Invalid query: SELECT id_usu, CONCAT(nom_usu,' ',ape_usu) AS vendedor FROM usu_sistemas WHERE id_usu = 
ERROR - 2020-02-13 15:59:20 --> Severity: Error --> Call to a member function result() on boolean /home/u341939348/domains/servigas-marin.com/public_html/server1/application/models/Facturar_model.php 2727
ERROR - 2020-02-13 16:20:07 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-13 16:20:11 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-13 16:20:13 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-13 16:20:16 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-13 16:20:19 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-13 16:20:23 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-13 16:20:26 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-13 16:20:29 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-13 16:20:33 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-13 16:20:36 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-13 16:20:40 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-13 16:22:16 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-13 16:22:19 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-13 16:22:21 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-13 16:22:24 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-13 16:22:27 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-13 16:22:29 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-13 16:22:32 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-13 16:22:35 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-13 16:22:38 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-13 16:22:40 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-13 16:22:43 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-13 16:22:45 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-13 16:22:49 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-13 16:22:52 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-13 16:22:55 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-13 16:22:59 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-13 16:23:03 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-13 16:23:07 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-13 16:23:11 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-13 16:23:15 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-13 16:23:19 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-13 16:23:22 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-13 16:23:25 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-13 16:23:28 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-13 16:23:31 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-13 16:23:34 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-13 16:23:37 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-13 16:23:39 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-13 16:23:42 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-13 16:23:45 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-13 16:23:48 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-13 16:23:52 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-13 16:23:54 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-13 16:23:57 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-13 16:24:01 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-13 16:24:07 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-13 16:24:11 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-13 16:24:14 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-13 16:29:33 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-13 16:29:38 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-13 16:31:27 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-13 16:31:46 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-13 16:32:06 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-13 16:33:09 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 3 - Invalid query:  SELECT id_usu, nom_usu, ape_usu, ema_usu, log_usu, perfil
                                    FROM usu_sistemas
                                    WHERE id_usu = 
ERROR - 2020-02-13 16:33:09 --> Severity: Error --> Call to a member function result() on boolean /home/u341939348/domains/servigas-marin.com/public_html/server1/application/models/Usuario_model.php 126
ERROR - 2020-02-13 16:36:39 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-13 16:42:40 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-13 16:42:47 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-13 18:42:51 --> Query error: Incorrect number of arguments for PROCEDURE u341939348_fac_electro.usuario_upd_acceso; expected 1, got 0 - Invalid query: CALL usuario_upd_acceso();
ERROR - 2020-02-13 18:42:51 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 3 - Invalid query:  SELECT id_usu, nom_usu, ape_usu, ema_usu, log_usu, perfil
                                    FROM usu_sistemas
                                    WHERE id_usu = 
ERROR - 2020-02-13 18:42:51 --> Severity: Error --> Call to a member function result() on boolean /home/u341939348/domains/servigas-marin.com/public_html/server1/application/models/Usuario_model.php 126
ERROR - 2020-02-13 18:42:51 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ')
                                       AND id_caja in (SELECT m.id_caja FROM c' at line 4 - Invalid query: SELECT count(*) as cantidad
                                     FROM caja_efectivo e 
                                     WHERE (0 = 0 OR e.id_caja = 0)
                                       AND id_caja IN (SELECT id_caja FROM permiso_cajaefectivo WHERE id_usuario = )
                                       AND id_caja in (SELECT m.id_caja FROM caja_movimiento m WHERE m.estado=0)
ERROR - 2020-02-13 18:42:51 --> Severity: Error --> Call to a member function result() on boolean /home/u341939348/domains/servigas-marin.com/public_html/server1/application/models/Cajacierre_model.php 315
ERROR - 2020-02-13 18:42:56 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 3 - Invalid query:  SELECT id_usu, nom_usu, ape_usu, ema_usu, log_usu, perfil
                                    FROM usu_sistemas
                                    WHERE id_usu = 
ERROR - 2020-02-13 18:42:56 --> Severity: Error --> Call to a member function result() on boolean /home/u341939348/domains/servigas-marin.com/public_html/server1/application/models/Usuario_model.php 126
ERROR - 2020-02-13 18:43:02 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 3 - Invalid query:  SELECT id_usu, nom_usu, ape_usu, ema_usu, log_usu, perfil
                                    FROM usu_sistemas
                                    WHERE id_usu = 
ERROR - 2020-02-13 18:43:02 --> Severity: Error --> Call to a member function result() on boolean /home/u341939348/domains/servigas-marin.com/public_html/server1/application/models/Usuario_model.php 126
ERROR - 2020-02-13 18:43:22 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-13 18:46:11 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-13 18:49:22 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-13 18:49:56 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-13 18:50:34 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-13 18:56:57 --> Query error: Unknown column 'A' in 'field list' - Invalid query: UPDATE venta_detalle_tmp set
                            cantidad = 0, precio = A, montoiva = 0,
                            subtotal = NaN, descsubtotal = NaN, tipprecio = 0,
                            precio_base = A,
                            porcdesc = 0.00
                           where id_detalle=659
ERROR - 2020-02-13 19:44:17 --> Severity: Warning --> implode(): Argument must be an array /home/u341939348/domains/servigas-marin.com/public_html/server1/application/controllers/Infosri.php 442
ERROR - 2020-02-13 20:45:24 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 1 - Invalid query: SELECT id_usu, CONCAT(nom_usu,' ',ape_usu) AS vendedor FROM usu_sistemas WHERE id_usu = 
ERROR - 2020-02-13 20:45:24 --> Severity: Error --> Call to a member function result() on boolean /home/u341939348/domains/servigas-marin.com/public_html/server1/application/models/Facturar_model.php 2727
