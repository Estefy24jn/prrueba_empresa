/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : contabsoltec

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2019-03-07 08:41:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for acceso
-- ----------------------------
DROP TABLE IF EXISTS `acceso`;
CREATE TABLE `acceso` (
  `id_acceso` int(11) NOT NULL AUTO_INCREMENT,
  `id_mod_det` int(11) DEFAULT NULL,
  `id_usu` int(11) DEFAULT NULL,
  `evento` varchar(255) DEFAULT NULL,
  `accion` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id_acceso`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acceso
-- ----------------------------

-- ----------------------------
-- Table structure for almacen
-- ----------------------------
DROP TABLE IF EXISTS `almacen`;
CREATE TABLE `almacen` (
  `almacen_id` int(11) NOT NULL AUTO_INCREMENT,
  `almacen_nombre` varchar(255) NOT NULL,
  `almacen_direccion` varchar(255) DEFAULT NULL,
  `almacen_responsable` varchar(255) DEFAULT NULL,
  `almacen_descripcion` varchar(255) DEFAULT NULL,
  `sucursal_id` int(11) DEFAULT NULL,
  `almacen_deposito` int(11) DEFAULT NULL,
  `almacen_idproducto` int(11) DEFAULT NULL,
  `almacen_tipo` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`almacen_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of almacen
-- ----------------------------
INSERT INTO `almacen` VALUES ('1', 'Principal', null, null, null, '1', '0', null, '1');

-- ----------------------------
-- Table structure for almapro
-- ----------------------------
DROP TABLE IF EXISTS `almapro`;
CREATE TABLE `almapro` (
  `id_pro` int(11) NOT NULL,
  `id_alm` int(11) NOT NULL,
  `existencia` decimal(11,2) DEFAULT NULL,
  `id_unimed` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_pro`,`id_alm`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of almapro
-- ----------------------------

-- ----------------------------
-- Table structure for area
-- ----------------------------
DROP TABLE IF EXISTS `area`;
CREATE TABLE `area` (
  `id_area` int(11) NOT NULL AUTO_INCREMENT,
  `nom_area` varchar(255) NOT NULL,
  PRIMARY KEY (`id_area`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of area
-- ----------------------------
INSERT INTO `area` VALUES ('1', 'Principal');

-- ----------------------------
-- Table structure for bancos
-- ----------------------------
DROP TABLE IF EXISTS `bancos`;
CREATE TABLE `bancos` (
  `id_banco` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `id_tipo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_banco`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bancos
-- ----------------------------
INSERT INTO `bancos` VALUES ('1', 'Banco', 'Amazonas', '1');
INSERT INTO `bancos` VALUES ('2', 'Banco', 'Austro ', '1');
INSERT INTO `bancos` VALUES ('3', 'Banco', 'Bolivariano ', '1');
INSERT INTO `bancos` VALUES ('4', 'Banco', 'Capital ', '1');
INSERT INTO `bancos` VALUES ('5', 'Banco', 'Citybank ', '1');
INSERT INTO `bancos` VALUES ('6', 'Banco', 'COFIEC ', '1');
INSERT INTO `bancos` VALUES ('7', 'Banco', 'Comercial de Manabí ', '1');
INSERT INTO `bancos` VALUES ('8', 'Banco', 'Del Bank ', '1');
INSERT INTO `bancos` VALUES ('9', 'Banco', 'Finca ', '1');
INSERT INTO `bancos` VALUES ('10', 'Banco', 'General Rumiñahui ', '1');
INSERT INTO `bancos` VALUES ('11', 'Banco', 'Guayaquil ', '1');
INSERT INTO `bancos` VALUES ('12', 'Banco', 'Internacional ', '1');
INSERT INTO `bancos` VALUES ('13', 'Banco', 'Litoral ', '1');
INSERT INTO `bancos` VALUES ('14', 'Banco', 'Lloyds Bank ', '1');
INSERT INTO `bancos` VALUES ('15', 'Banco', 'Loja ', '1');
INSERT INTO `bancos` VALUES ('16', 'Banco', 'Machala ', '1');
INSERT INTO `bancos` VALUES ('17', 'Banco', 'MM Jaramillo Arteaga ', '1');
INSERT INTO `bancos` VALUES ('18', 'Banco', 'Pacifico ', '1');
INSERT INTO `bancos` VALUES ('19', 'Banco', 'Pichincha ', '1');
INSERT INTO `bancos` VALUES ('20', 'Banco', 'Procredit ', '1');
INSERT INTO `bancos` VALUES ('21', 'Banco', 'Produbanco ', '1');
INSERT INTO `bancos` VALUES ('22', 'Banco', 'Solidario ', '1');
INSERT INTO `bancos` VALUES ('23', 'Banco', 'Sudamericano ', '1');
INSERT INTO `bancos` VALUES ('24', 'Banco', 'Territorial ', '1');
INSERT INTO `bancos` VALUES ('25', 'Banco', 'Unibanco', '1');
INSERT INTO `bancos` VALUES ('26', 'Cooperativas  de Ahorro y Crédito', '11 de Junio ', '2');
INSERT INTO `bancos` VALUES ('27', 'Cooperativas  de Ahorro y Crédito', '15 de Abril ', '2');
INSERT INTO `bancos` VALUES ('28', 'Cooperativas  de Ahorro y Crédito', '23 de Julio ', '2');
INSERT INTO `bancos` VALUES ('29', 'Cooperativas  de Ahorro y Crédito', '29 de Octubre ', '2');
INSERT INTO `bancos` VALUES ('30', 'Cooperativas  de Ahorro y Crédito', '9 de Octubre ', '2');
INSERT INTO `bancos` VALUES ('31', 'Cooperativas  de Ahorro y Crédito', 'Alianza del Valle ', '2');
INSERT INTO `bancos` VALUES ('32', 'Cooperativas  de Ahorro y Crédito', 'Andalucía ', '2');
INSERT INTO `bancos` VALUES ('33', 'Cooperativas  de Ahorro y Crédito', 'Atuntaqui ', '2');
INSERT INTO `bancos` VALUES ('34', 'Cooperativas  de Ahorro y Crédito', 'CACPE BIBLIAN ', '2');
INSERT INTO `bancos` VALUES ('35', 'Cooperativas  de Ahorro y Crédito', 'CACPE PASTAZA ', '2');
INSERT INTO `bancos` VALUES ('36', 'Cooperativas  de Ahorro y Crédito', 'CACPECO ', '2');
INSERT INTO `bancos` VALUES ('37', 'Cooperativas  de Ahorro y Crédito', 'Calceta ', '2');
INSERT INTO `bancos` VALUES ('38', 'Cooperativas  de Ahorro y Crédito', 'Cámara de Comercio de Quito ', '2');
INSERT INTO `bancos` VALUES ('39', 'Cooperativas  de Ahorro y Crédito', 'Chone Ltda. ', '2');
INSERT INTO `bancos` VALUES ('40', 'Cooperativas  de Ahorro y Crédito', 'CODESARROLLO ', '2');
INSERT INTO `bancos` VALUES ('41', 'Cooperativas  de Ahorro y Crédito', 'Comercio ', '2');
INSERT INTO `bancos` VALUES ('42', 'Cooperativas  de Ahorro y Crédito', 'COOPAD ', '2');
INSERT INTO `bancos` VALUES ('43', 'Cooperativas  de Ahorro y Crédito', 'Cotocollao ', '2');
INSERT INTO `bancos` VALUES ('44', 'Cooperativas  de Ahorro y Crédito', 'El Sagrario ', '2');
INSERT INTO `bancos` VALUES ('45', 'Cooperativas  de Ahorro y Crédito', 'Financoop ', '2');
INSERT INTO `bancos` VALUES ('46', 'Cooperativas  de Ahorro y Crédito', 'Guaranda ', '2');
INSERT INTO `bancos` VALUES ('47', 'Cooperativas  de Ahorro y Crédito', 'Jardín Azuayo ', '2');
INSERT INTO `bancos` VALUES ('48', 'Cooperativas  de Ahorro y Crédito', 'Jesús del Gran Poder ', '2');
INSERT INTO `bancos` VALUES ('49', 'Cooperativas  de Ahorro y Crédito', 'Juventud Ecuatoriana Progresista ', '2');
INSERT INTO `bancos` VALUES ('50', 'Cooperativas  de Ahorro y Crédito', 'La Dolorosa ', '2');
INSERT INTO `bancos` VALUES ('51', 'Cooperativas  de Ahorro y Crédito', 'Manuel Esteban Godoy Ortega ', '2');
INSERT INTO `bancos` VALUES ('52', 'Cooperativas  de Ahorro y Crédito', 'Metropolitana ', '2');
INSERT INTO `bancos` VALUES ('53', 'Cooperativas  de Ahorro y Crédito', 'Nacional ', '2');
INSERT INTO `bancos` VALUES ('54', 'Cooperativas  de Ahorro y Crédito', 'Oscus ', '2');
INSERT INTO `bancos` VALUES ('55', 'Cooperativas  de Ahorro y Crédito', 'Pablo Muñoz Vega ', '2');
INSERT INTO `bancos` VALUES ('56', 'Cooperativas  de Ahorro y Crédito', 'Padre Julián Lorenta ', '2');
INSERT INTO `bancos` VALUES ('57', 'Cooperativas  de Ahorro y Crédito', 'Progreso ', '2');
INSERT INTO `bancos` VALUES ('58', 'Cooperativas  de Ahorro y Crédito', 'Riobamba ', '2');
INSERT INTO `bancos` VALUES ('59', 'Cooperativas  de Ahorro y Crédito', 'San Francisco ', '2');
INSERT INTO `bancos` VALUES ('60', 'Cooperativas  de Ahorro y Crédito', 'San Francisco de Asís ', '2');
INSERT INTO `bancos` VALUES ('61', 'Cooperativas  de Ahorro y Crédito', 'San José ', '2');
INSERT INTO `bancos` VALUES ('62', 'Cooperativas  de Ahorro y Crédito', 'Santa Ana ', '2');
INSERT INTO `bancos` VALUES ('63', 'Cooperativas  de Ahorro y Crédito', 'Santa Rosa', '2');
INSERT INTO `bancos` VALUES ('64', 'Cooperativas  de Ahorro y Crédito', 'Tulcán', '2');

-- ----------------------------
-- Table structure for caja_chica
-- ----------------------------
DROP TABLE IF EXISTS `caja_chica`;
CREATE TABLE `caja_chica` (
  `id_caja` int(11) NOT NULL,
  `nom_caja` varchar(25) DEFAULT NULL,
  `activo` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_caja`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of caja_chica
-- ----------------------------
INSERT INTO `caja_chica` VALUES ('1', 'Principal', '1');

-- ----------------------------
-- Table structure for caja_chicaingreso
-- ----------------------------
DROP TABLE IF EXISTS `caja_chicaingreso`;
CREATE TABLE `caja_chicaingreso` (
  `id_ingreso` int(11) NOT NULL AUTO_INCREMENT,
  `fechaingreso` date DEFAULT NULL,
  `fecharegistro` datetime DEFAULT CURRENT_TIMESTAMP,
  `monto` decimal(11,2) DEFAULT NULL,
  `numeroingreso` varchar(45) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `idusuario` int(11) DEFAULT NULL,
  `id_caja` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_ingreso`),
  KEY `FK_caja_chicaingreso_caja` (`id_caja`),
  CONSTRAINT `FK_caja_chicaingreso_caja` FOREIGN KEY (`id_caja`) REFERENCES `caja_chica` (`id_caja`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of caja_chicaingreso
-- ----------------------------

-- ----------------------------
-- Table structure for caja_chica_movimiento
-- ----------------------------
DROP TABLE IF EXISTS `caja_chica_movimiento`;
CREATE TABLE `caja_chica_movimiento` (
  `id_mov` int(11) NOT NULL AUTO_INCREMENT,
  `id_caja` int(11) NOT NULL,
  `fechaapertura` date DEFAULT NULL,
  `fecharegistroapertura` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `usuarioapertura` int(11) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `montoapertura` decimal(11,2) DEFAULT NULL,
  `estatus` int(11) DEFAULT NULL,
  `fechacierre` date DEFAULT NULL,
  `fecharegistrocierre` datetime DEFAULT NULL,
  `usuariocierre` int(11) DEFAULT NULL,
  `montocierre` decimal(11,2) DEFAULT NULL,
  `obs` text,
  PRIMARY KEY (`id_mov`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of caja_chica_movimiento
-- ----------------------------

-- ----------------------------
-- Table structure for caja_efectivo
-- ----------------------------
DROP TABLE IF EXISTS `caja_efectivo`;
CREATE TABLE `caja_efectivo` (
  `id_caja` int(11) NOT NULL,
  `id_puntoemision` int(11) DEFAULT NULL,
  `nom_caja` varchar(100) DEFAULT NULL,
  `activo` int(11) DEFAULT NULL,
  `nro_orden` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_caja`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of caja_efectivo
-- ----------------------------
INSERT INTO `caja_efectivo` VALUES (2, 1, 'Caja 1', 1, 1);

-- ----------------------------
-- Table structure for caja_egreso
-- ----------------------------
DROP TABLE IF EXISTS `caja_egreso`;
CREATE TABLE `caja_egreso` (
  `idreg` int(11) NOT NULL AUTO_INCREMENT,
  `id_mov` int(11) DEFAULT NULL,
  `id_usu` int(11) DEFAULT NULL,
  `descripcion` text,
  `monto` decimal(11,2) DEFAULT NULL,
  `emisor` varchar(255) DEFAULT NULL,
  `receptor` varchar(255) DEFAULT NULL,
  `nroegreso` int(11) DEFAULT NULL,
  `fecharegistro` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idreg`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of caja_egreso
-- ----------------------------

-- ----------------------------
-- Table structure for caja_movimiento
-- ----------------------------
DROP TABLE IF EXISTS `caja_movimiento`;
CREATE TABLE `caja_movimiento` (
  `id_mov` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) NOT NULL,
  `fecha_apertura` datetime NOT NULL,
  `monto_apertura` double DEFAULT NULL,
  `pagos` double DEFAULT NULL,
  `ingresoefectivo` double DEFAULT NULL,
  `ingresocheque` double DEFAULT NULL,
  `ingresotarjeta` double DEFAULT NULL,
  `ingresotransferencia` double DEFAULT NULL,
  `ingresodineroelec` double DEFAULT NULL,
  `fecha_cierre` datetime DEFAULT NULL,
  `existente` double DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  `compras` double DEFAULT NULL,
  `observaciones` text,
  `salida` decimal(11,2) DEFAULT NULL,
  `justificacion` text,
  `id_caja` int(11) DEFAULT NULL,
  `idusu_cierre` int(11) DEFAULT NULL,
  `ventastotales` decimal(11,2) DEFAULT NULL,
  `montonoefectivo` decimal(11,2) DEFAULT NULL,
  `montoegreso` decimal(11,2) DEFAULT NULL,
  `saldo` decimal(11,2) DEFAULT NULL,
  `totalcaja` decimal(11,2) DEFAULT NULL,
  `sobrante` decimal(11,2) DEFAULT NULL,
  `faltante` decimal(11,2) DEFAULT NULL,
  `desefectivo` decimal(11,2) DEFAULT NULL,
  `descheque` decimal(11,2) DEFAULT NULL,
  `destarcre` decimal(11,2) DEFAULT NULL,
  `destardeb` decimal(11,2) DEFAULT NULL,
  `destarpre` decimal(11,2) DEFAULT NULL,
  `destransf` decimal(11,2) DEFAULT NULL,
  `desdinele` decimal(11,2) DEFAULT NULL,
  `desotros` decimal(11,2) DEFAULT NULL,
  `desvencre` decimal(11,2) DEFAULT NULL,
  `abonoservicio` decimal(11,2) DEFAULT NULL,
  PRIMARY KEY (`id_mov`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of caja_movimiento
-- ----------------------------

-- ----------------------------
-- Table structure for categorias
-- ----------------------------
DROP TABLE IF EXISTS `categorias`;
CREATE TABLE `categorias` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_descripcion` varchar(255) DEFAULT NULL,
  `menu` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of categorias
-- ----------------------------
INSERT INTO `categorias` VALUES ('1', 'GENERAL', '1');

-- ----------------------------
-- Table structure for clasificacion
-- ----------------------------
DROP TABLE IF EXISTS `clasificacion`;
CREATE TABLE `clasificacion` (
  `id_cla` int(11) NOT NULL AUTO_INCREMENT,
  `nom_cla` varchar(255) NOT NULL,
  PRIMARY KEY (`id_cla`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of clasificacion
-- ----------------------------
INSERT INTO `clasificacion` VALUES ('1', 'SERVICIO');
INSERT INTO `clasificacion` VALUES ('2', 'SUMINISTRO');

-- ----------------------------
-- Table structure for clausula
-- ----------------------------
DROP TABLE IF EXISTS `clausula`;
CREATE TABLE `clausula` (
  `id_clausula` int(11) NOT NULL AUTO_INCREMENT,
  `desc_clausula` longtext,
  PRIMARY KEY (`id_clausula`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of clausula
-- ----------------------------
INSERT INTO `clausula` VALUES ('1', 'Clausulas');

-- ----------------------------
-- Table structure for clientes
-- ----------------------------
DROP TABLE IF EXISTS `clientes`;
CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `nom_cliente` varchar(255) NOT NULL,
  `tipo_ident_cliente` varchar(100) NOT NULL,
  `ident_cliente` varchar(100) NOT NULL,
  `nivel_est_cliente` varchar(255) DEFAULT NULL,
  `ref_cliente` varchar(255) DEFAULT NULL,
  `correo_cliente` varchar(255) DEFAULT NULL,
  `ciudad_cliente` varchar(255) DEFAULT NULL,
  `relacionado` tinyint(1) DEFAULT NULL,
  `direccion_cliente` longtext,
  `telefonos_cliente` varchar(255) DEFAULT NULL,
  `mayorista` tinyint(1) DEFAULT NULL,
  `tipo_precio` int(3) DEFAULT NULL,
  `id_vendedor` int(11) DEFAULT NULL,
  `codigo` varchar(255) DEFAULT NULL,
  `credito` decimal(11,2) DEFAULT NULL,
  `placa_matricula` varchar(25) DEFAULT NULL,
  `idcategoriacontable` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=494 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of clientes
-- ----------------------------
INSERT INTO `clientes` VALUES ('1', 'CONSUMIDOR FINAL', 'R', '9999999999999', null, null, '', '', '0', '', '', '0', '0', null, null, null, null, '1');

-- ----------------------------
-- Table structure for cliente_tipoprecio
-- ----------------------------
DROP TABLE IF EXISTS `cliente_tipoprecio`;
CREATE TABLE `cliente_tipoprecio` (
  `id_cliente_tipoprecio` int(11) NOT NULL AUTO_INCREMENT,
  `id_cliente` int(11) NOT NULL,
  `id_precio` int(11) NOT NULL,
  `estatus` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_cliente_tipoprecio`),
  KEY `index_cliente_tipoprecio` (`id_cliente`,`id_precio`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cliente_tipoprecio
-- ----------------------------
INSERT INTO `cliente_tipoprecio` VALUES ('85', '1', '0', '1');

-- ----------------------------
-- Table structure for comanda
-- ----------------------------
DROP TABLE IF EXISTS `comanda`;
CREATE TABLE `comanda` (
  `id_comanda` int(11) NOT NULL AUTO_INCREMENT,
  `nom_comanda` varchar(255) DEFAULT NULL,
  `impresora` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_comanda`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comanda
-- ----------------------------
INSERT INTO `comanda` VALUES ('1', 'Caja', 'EPSON');

-- ----------------------------
-- Table structure for composicion
-- ----------------------------
DROP TABLE IF EXISTS `composicion`;
CREATE TABLE `composicion` (
  `id_pro` int(11) NOT NULL,
  `id_pro_ing` int(11) NOT NULL,
  `cantidad` decimal(11,2) DEFAULT NULL,
  `unidad_medida` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of composicion
-- ----------------------------

-- ----------------------------
-- Table structure for compra
-- ----------------------------
DROP TABLE IF EXISTS `compra`;
CREATE TABLE `compra` (
  `id_comp` int(11) NOT NULL AUTO_INCREMENT,
  `id_usu` int(11) DEFAULT NULL,
  `id_proveedor` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `nro_factura` varchar(255) DEFAULT NULL,
  `nro_autorizacion` varchar(255) DEFAULT NULL,
  `formapago` varchar(255) DEFAULT NULL,
  `valiva` decimal(11,2) DEFAULT NULL,
  `subconiva` decimal(11,2) DEFAULT NULL,
  `subsiniva` decimal(11,2) DEFAULT NULL,
  `desc_monto` decimal(11,2) DEFAULT NULL,
  `descsubconiva` decimal(11,2) DEFAULT NULL,
  `descsubsiniva` decimal(11,2) DEFAULT NULL,
  `montoiva` decimal(11,2) DEFAULT NULL,
  `montototal` decimal(11,2) DEFAULT NULL,
  `estatus` varchar(255) DEFAULT NULL,
  `dias` int(11) DEFAULT NULL,
  `fecha_pago` date DEFAULT NULL,
  `fecharegistro` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cajachica` tinyint(1) DEFAULT NULL,
  `categoria` int(11) DEFAULT NULL,
  `id_almacen` int(11) DEFAULT NULL,
  `cod_sri_tipo_doc` varchar(255) DEFAULT NULL,
  `cod_sri_sust_comprobante` varchar(255) DEFAULT NULL,
  `montoice` decimal(11,2) DEFAULT NULL,
  `id_sucursal` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_comp`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of compra
-- ----------------------------

-- ----------------------------
-- Table structure for compra_abonos
-- ----------------------------
DROP TABLE IF EXISTS `compra_abonos`;
CREATE TABLE `compra_abonos` (
  `id_abono` int(11) NOT NULL AUTO_INCREMENT,
  `id_compra` int(11) DEFAULT NULL,
  `id_formapago` int(11) DEFAULT NULL,
  `monto` decimal(11,2) DEFAULT NULL,
  `fecha` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `numerodocumento` varchar(100) DEFAULT NULL,
  `descripciondocumento` varchar(100) DEFAULT NULL,
  `iddocpago` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_abono`)
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of compra_abonos
-- ----------------------------

-- ----------------------------
-- Table structure for compra_anulada
-- ----------------------------
DROP TABLE IF EXISTS `compra_anulada`;
CREATE TABLE `compra_anulada` (
  `idcompra` int(11) NOT NULL,
  `idusuario` int(11) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `causa_anulacion` text,
  PRIMARY KEY (`idcompra`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of compra_anulada
-- ----------------------------

-- ----------------------------
-- Table structure for compra_det
-- ----------------------------
DROP TABLE IF EXISTS `compra_det`;
CREATE TABLE `compra_det` (
  `id_detalle` int(11) NOT NULL AUTO_INCREMENT,
  `id_comp` int(11) DEFAULT NULL,
  `id_pro` int(11) DEFAULT NULL,
  `precio_compra` decimal(15,6) DEFAULT NULL,
  `cantidad` decimal(11,2) DEFAULT NULL,
  `id_unimed` int(11) DEFAULT NULL,
  `iva` tinyint(1) DEFAULT NULL,
  `montoiva` decimal(11,2) DEFAULT NULL,
  `subtotal` decimal(11,2) DEFAULT NULL,
  `descmonto` decimal(11,2) DEFAULT NULL,
  `descsubtotal` decimal(11,2) DEFAULT NULL,
  `nota` text,
  PRIMARY KEY (`id_detalle`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of compra_det
-- ----------------------------

-- ----------------------------
-- Table structure for compra_retencion
-- ----------------------------
DROP TABLE IF EXISTS `compra_retencion`;
CREATE TABLE `compra_retencion` (
  `id_comp_ret` int(11) NOT NULL AUTO_INCREMENT,
  `id_compra` int(11) DEFAULT NULL,
  `nro_retencion` varchar(255) DEFAULT NULL,
  `nro_autorizacion` varchar(255) DEFAULT NULL,
  `fecha_retencion` date DEFAULT NULL,
  `id_puntoemision` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_comp_ret`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of compra_retencion
-- ----------------------------

-- ----------------------------
-- Table structure for compra_retencion_detiva
-- ----------------------------
DROP TABLE IF EXISTS `compra_retencion_detiva`;
CREATE TABLE `compra_retencion_detiva` (
  `id_detalleiva` int(11) NOT NULL AUTO_INCREMENT,
  `id_comp_ret` int(11) DEFAULT NULL,
  `id_porcentaje_retencion_iva` int(11) DEFAULT NULL,
  `porciento_retencion_iva` decimal(11,2) DEFAULT NULL,
  `valor_retencion_iva` decimal(11,2) DEFAULT NULL,
  `base_retencion_iva` decimal(11,2) DEFAULT NULL,
  PRIMARY KEY (`id_detalleiva`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of compra_retencion_detiva
-- ----------------------------

-- ----------------------------
-- Table structure for compra_retencion_detrenta
-- ----------------------------
DROP TABLE IF EXISTS `compra_retencion_detrenta`;
CREATE TABLE `compra_retencion_detrenta` (
  `id_detallerenta` int(11) NOT NULL AUTO_INCREMENT,
  `id_comp_ret` int(11) DEFAULT NULL,
  `id_concepto_retencion` int(11) DEFAULT NULL,
  `base_noiva` decimal(11,2) DEFAULT NULL,
  `base_iva` decimal(11,2) DEFAULT NULL,
  `porciento_retencion_renta` decimal(11,2) DEFAULT NULL,
  `valor_retencion_renta` decimal(11,2) DEFAULT NULL,
  PRIMARY KEY (`id_detallerenta`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of compra_retencion_detrenta
-- ----------------------------

-- ----------------------------
-- Table structure for compra_retencion_detrenta_tmp
-- ----------------------------
DROP TABLE IF EXISTS `compra_retencion_detrenta_tmp`;
CREATE TABLE `compra_retencion_detrenta_tmp` (
  `id_detallerenta` int(11) NOT NULL AUTO_INCREMENT,
  `id_concepto_retencion` int(11) DEFAULT NULL,
  `base_noiva` decimal(11,2) DEFAULT NULL,
  `base_iva` decimal(11,2) DEFAULT NULL,
  `porciento_retencion_renta` decimal(11,2) DEFAULT NULL,
  `valor_retencion_renta` decimal(11,2) DEFAULT NULL,
  `id_usu` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_detallerenta`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of compra_retencion_detrenta_tmp
-- ----------------------------

-- ----------------------------
-- Table structure for concepto_retencion
-- ----------------------------
DROP TABLE IF EXISTS `concepto_retencion`;
CREATE TABLE `concepto_retencion` (
  `id_cto_retencion` int(11) NOT NULL AUTO_INCREMENT,
  `cod_cto_retencion` varchar(255) NOT NULL,
  `descripcion_retencion` varchar(255) DEFAULT NULL,
  `porciento_cto_retencion` decimal(11,2) DEFAULT NULL,
  `editablecompra` tinyint(1) DEFAULT NULL,
  `idcategoriacompra` int(11) DEFAULT NULL,
  `idcategoriaventa` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_cto_retencion`,`cod_cto_retencion`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of concepto_retencion
-- ----------------------------
INSERT INTO `concepto_retencion` VALUES ('1', '303', 'Honorarios profesionales y demás pagos por servicios relacionados con el título profesional', '10.00', '0', '16', '8');
INSERT INTO `concepto_retencion` VALUES ('2', '304', 'Servicios predomina el intelecto no relacionados con el título profesional', '8.00', '0', '15', '7');
INSERT INTO `concepto_retencion` VALUES ('3', '304A', 'Comisiones y demás pagos por servicios predomina intelecto no relacionados con el título profesional', '8.00', '0', '15', '7');
INSERT INTO `concepto_retencion` VALUES ('4', '304B', 'Pagos a notarios y registradores de la propiedad y mercantil por sus actividades ejercidas como tales', '8.00', '0', '15', '7');
INSERT INTO `concepto_retencion` VALUES ('5', '304C', 'Pagos a deportistas, entrenadores, árbitros, miembros del cuerpo técnico por sus actividades ejercidas como tales', '8.00', '0', '15', '7');
INSERT INTO `concepto_retencion` VALUES ('6', '304D', 'Pagos a artistas por sus actividades ejercidas como tales', '8.00', '0', '15', '7');
INSERT INTO `concepto_retencion` VALUES ('7', '304E', 'Honorarios y demás pagos por servicios de docencia', '8.00', '0', '15', '7');
INSERT INTO `concepto_retencion` VALUES ('8', '307', 'Servicios predomina la mano de obra', '2.00', '0', '13', '5');
INSERT INTO `concepto_retencion` VALUES ('9', '308', 'Utilización o aprovechamiento de la imagen o renombre', '10.00', '0', '16', '8');
INSERT INTO `concepto_retencion` VALUES ('10', '309', 'Servicios prestados por medios de comunicación y agencias de publicidad', '1.00', '0', '12', '4');
INSERT INTO `concepto_retencion` VALUES ('11', '310', 'Servicio de transporte privado de pasajeros o transporte público o privado de carga', '1.00', '0', '12', '4');
INSERT INTO `concepto_retencion` VALUES ('12', '311', 'Por pagos a través de liquidación de compra (nivel cultural o rusticidad) **', '2.00', '0', '13', '5');
INSERT INTO `concepto_retencion` VALUES ('13', '312', 'Transferencia de bienes muebles de naturaleza corporal', '1.00', '0', '12', '4');
INSERT INTO `concepto_retencion` VALUES ('14', '312A', 'Compra de bienes de origen agrícola, avícola, pecuario, apícola, cunícula, bioacuático, y forestal', '1.00', '0', '12', '4');
INSERT INTO `concepto_retencion` VALUES ('15', '314A', 'Regalías por concepto de franquicias de acuerdo a Ley de Propiedad Intelectual - pago a personas naturales', '8.00', '0', '15', '7');
INSERT INTO `concepto_retencion` VALUES ('16', '314B', 'Cánones, derechos de autor,  marcas, patentes y similares de acuerdo a Ley de Propiedad Intelectual – pago a personas naturales', '8.00', '0', '15', '7');
INSERT INTO `concepto_retencion` VALUES ('17', '314C', 'Regalías por concepto de franquicias de acuerdo a Ley de Propiedad Intelectual  - pago a sociedades', '8.00', '0', '15', '7');
INSERT INTO `concepto_retencion` VALUES ('18', '314D', 'Cánones, derechos de autor,  marcas, patentes y similares de acuerdo a Ley de Propiedad Intelectual – pago a sociedades', '8.00', '0', '15', '7');
INSERT INTO `concepto_retencion` VALUES ('19', '319', 'Cuotas de arrendamiento mercantil, inclusive la de opción de compra', '1.00', '0', '12', '4');
INSERT INTO `concepto_retencion` VALUES ('20', '320', 'Por arrendamiento bienes inmuebles', '8.00', '0', '15', '7');
INSERT INTO `concepto_retencion` VALUES ('21', '322', 'Seguros y reaseguros (primas y cesiones)', '1.00', '0', '12', '4');
INSERT INTO `concepto_retencion` VALUES ('22', '323', 'Por rendimientos financieros pagados a naturales y sociedades  (No a IFIs)', '2.00', '0', '13', '5');
INSERT INTO `concepto_retencion` VALUES ('23', '323A', 'Por RF: depósitos Cta. Corriente', '2.00', '0', '13', '5');
INSERT INTO `concepto_retencion` VALUES ('24', '323B1', 'Por RF:  depósitos Cta. Ahorros Sociedades', '2.00', '0', '13', '5');
INSERT INTO `concepto_retencion` VALUES ('25', '323E', 'Por RF: depósito a plazo fijo  gravados', '2.00', '0', '13', '5');
INSERT INTO `concepto_retencion` VALUES ('26', '323E2', 'Por RF: depósito a plazo fijo exentos ***', '0.00', '0', '19', '11');
INSERT INTO `concepto_retencion` VALUES ('27', '323F', 'Por rendimientos financieros: operaciones de reporto - repos', '2.00', '0', '13', '5');
INSERT INTO `concepto_retencion` VALUES ('28', '323G', 'Por RF: inversiones (captaciones) rendimientos distintos de aquellos pagados a IFIs', '2.00', '0', '13', '5');
INSERT INTO `concepto_retencion` VALUES ('29', '323H', 'Por RF: obligaciones', '2.00', '0', '13', '5');
INSERT INTO `concepto_retencion` VALUES ('30', '323I', 'Por RF: bonos convertible en acciones', '2.00', '0', '13', '5');
INSERT INTO `concepto_retencion` VALUES ('31', '323 M', 'Por RF: Inversiones en títulos valores en renta fija gravados ', '2.00', '0', '13', '5');
INSERT INTO `concepto_retencion` VALUES ('32', '323 N', 'Por RF: Inversiones en títulos valores en renta fija exentos', '0.00', '0', '19', '11');
INSERT INTO `concepto_retencion` VALUES ('33', '323 O', 'Por RF: Intereses pagados a bancos y otras entidades sometidas al control de la Superintendencia de Bancos y de la Economía Popular y Solidaria', '0.00', '0', '19', '11');
INSERT INTO `concepto_retencion` VALUES ('34', '323 P', 'Por RF: Intereses pagados por entidades del sector público a favor de sujetos pasivos', '2.00', '0', '13', '5');
INSERT INTO `concepto_retencion` VALUES ('35', '323Q', 'Por RF: Otros intereses y rendimientos financieros gravados ', '2.00', '0', '13', '5');
INSERT INTO `concepto_retencion` VALUES ('36', '323R', 'Por RF: Otros intereses y rendimientos financieros exentos', '0.00', '0', '19', '11');
INSERT INTO `concepto_retencion` VALUES ('37', '324A', 'Por RF: Intereses y comisiones en operaciones de crédito entre instituciones del sistema financiero y entidades economía popular y solidaria.', '1.00', '0', '12', '4');
INSERT INTO `concepto_retencion` VALUES ('38', '324B', 'Por RF: Por inversiones entre instituciones del sistema financiero y entidades economía popular y solidaria, incluso cuando el BCE actúe como intermediario.', '1.00', '0', '12', '4');
INSERT INTO `concepto_retencion` VALUES ('39', '325', 'Anticipo dividendos a residentes o establecidos en el Ecuador', '22.00', '0', '18', '10');
INSERT INTO `concepto_retencion` VALUES ('40', '325A', 'Dividendos anticipados préstamos accionistas, beneficiarios o partìcipes a residentes o establecidos en el Ecuador', '22.00', '0', '18', '10');
INSERT INTO `concepto_retencion` VALUES ('41', '326', 'Dividendos distribuidos que correspondan al impuesto a la renta único establecido en el art. 27 de la LRTI (Tabla art. 36 menos crédito tributario pro dividendos: julio 2015)', '0.00', '1', '19', '11');
INSERT INTO `concepto_retencion` VALUES ('42', '327', 'Dividendos distribuidos a personas naturales residentes', '0.00', '1', '19', '11');
INSERT INTO `concepto_retencion` VALUES ('43', '328', 'Dividendos distribuidos a sociedades residentes', '0.00', '0', '19', '11');
INSERT INTO `concepto_retencion` VALUES ('44', '329', 'Dividendos distribuidos a fideicomisos residentes', '0.00', '0', '19', '11');
INSERT INTO `concepto_retencion` VALUES ('45', '330', 'Dividendos gravados distribuidos en acciones (reinversión de utilidades sin derecho a reducción tarifa IR)', '0.00', '1', '19', '11');
INSERT INTO `concepto_retencion` VALUES ('46', '331', 'Dividendos exentos distribuidos en acciones (reinversión de utilidades con derecho a reducción tarifa IR) ', '0.00', '0', '19', '11');
INSERT INTO `concepto_retencion` VALUES ('47', '332', 'Otras compras de bienes y servicios no sujetas a retención', '0.00', '0', '19', '11');
INSERT INTO `concepto_retencion` VALUES ('48', '332A', 'Enajenación de derechos representativos de capital y otros derechos exentos (mayo 2016)', '0.00', '0', '19', '11');
INSERT INTO `concepto_retencion` VALUES ('49', '332B', 'Compra de bienes inmuebles', '0.00', '0', '19', '11');
INSERT INTO `concepto_retencion` VALUES ('50', '332C', 'Transporte público de pasajeros', '0.00', '0', '19', '11');
INSERT INTO `concepto_retencion` VALUES ('51', '332D', 'Pagos en el país por transporte de pasajeros o transporte internacional de carga, a compañías nacionales o extranjeras de aviación o marítimas', '0.00', '0', '19', '11');
INSERT INTO `concepto_retencion` VALUES ('52', '332E', 'Valores entregados por las cooperativas de transporte a sus socios', '0.00', '0', '19', '11');
INSERT INTO `concepto_retencion` VALUES ('53', '332F', 'Compraventa de divisas distintas al dólar de los Estados Unidos de América', '0.00', '0', '19', '11');
INSERT INTO `concepto_retencion` VALUES ('54', '332G', 'Pagos con tarjeta de crédito ', '0.00', '1', '19', '11');
INSERT INTO `concepto_retencion` VALUES ('55', '332H', 'Pago al exterior tarjeta de crédito reportada por la Emisora de tarjeta de crédito, solo RECAP', '0.00', '0', '19', '11');
INSERT INTO `concepto_retencion` VALUES ('56', '333', 'Enajenación de derechos representativos de capital y otros derechos cotizados en bolsa ecuatoriana', '0.00', '1', '19', '11');
INSERT INTO `concepto_retencion` VALUES ('57', '334', 'Enajenación de derechos representativos de capital y otros derechos no cotizados en bolsa ecuatoriana', '1.00', '0', '12', '4');
INSERT INTO `concepto_retencion` VALUES ('58', '335', 'Por loterías, rifas, apuestas y similares', '0.00', '1', '19', '11');
INSERT INTO `concepto_retencion` VALUES ('59', '336', 'Por venta de combustibles a comercializadoras', '0.00', '1', '19', '11');
INSERT INTO `concepto_retencion` VALUES ('60', '337', 'Por venta de combustibles a distribuidores', '0.00', '1', '19', '11');
INSERT INTO `concepto_retencion` VALUES ('61', '338', 'Compra local de banano a productor', '0.00', '1', '19', '11');
INSERT INTO `concepto_retencion` VALUES ('62', '339', 'Liquidación impuesto único a la venta local de banano de producción propia', '0.00', '1', '19', '11');
INSERT INTO `concepto_retencion` VALUES ('63', '340', 'Impuesto único a la exportación de banano de producción propia - componente 1', '0.00', '1', '19', '11');
INSERT INTO `concepto_retencion` VALUES ('64', '341', 'Impuesto único a la exportación de banano de producción propia - componente 2', '0.00', '1', '19', '11');
INSERT INTO `concepto_retencion` VALUES ('65', '342', 'Impuesto único a la exportación de banano producido por terceros', '0.00', '1', '19', '11');
INSERT INTO `concepto_retencion` VALUES ('66', '343A', 'Por energía eléctrica', '1.00', '0', '12', '4');
INSERT INTO `concepto_retencion` VALUES ('67', '343B', 'Por actividades de construcción de obra material inmueble, urbanización, lotización o actividades similares', '1.00', '0', '12', '4');
INSERT INTO `concepto_retencion` VALUES ('68', '344', 'Otras retenciones aplicables el 2%', '2.00', '0', '13', '5');
INSERT INTO `concepto_retencion` VALUES ('69', '344A', 'Pago local tarjeta de crédito reportada por la Emisora de tarjeta de crédito, solo RECAP', '2.00', '0', '13', '5');
INSERT INTO `concepto_retencion` VALUES ('70', '346A', 'Ganancias de capital', '0.00', '1', '19', '11');
INSERT INTO `concepto_retencion` VALUES ('71', '347', 'Donaciones en dinero -Impuesto a la donaciones ', '2.00', '0', '13', '5');
INSERT INTO `concepto_retencion` VALUES ('72', '348', 'Retención a cargo del propio sujeto pasivo por la exportación de concentrados y/o elementos metálicos', '0.00', '1', '19', '11');
INSERT INTO `concepto_retencion` VALUES ('73', '349', 'Retención a cargo del propio sujeto pasivo por la comercialización de productos forestales', '0.00', '0', '19', '11');
INSERT INTO `concepto_retencion` VALUES ('74', '500', 'Pago al exterior - Rentas Inmobiliarias', '22.00', '0', '18', '10');
INSERT INTO `concepto_retencion` VALUES ('75', '501', 'Pago al exterior - Beneficios Empresariales', '22.00', '0', '18', '10');
INSERT INTO `concepto_retencion` VALUES ('76', '502', 'Pago al exterior - Servicios Empresariales', '22.00', '0', '18', '10');
INSERT INTO `concepto_retencion` VALUES ('77', '503', 'Pago al exterior - Navegación Marítima y/o aérea', '22.00', '0', '18', '10');
INSERT INTO `concepto_retencion` VALUES ('78', '504', 'Pago al exterior- Dividendos distribuidos a personas naturales', '0.00', '0', '19', '11');
INSERT INTO `concepto_retencion` VALUES ('79', '504A', 'Pago al exterior - Dividendos a sociedades', '0.00', '1', '19', '11');
INSERT INTO `concepto_retencion` VALUES ('80', '504B', 'Pago al exterior - Anticipo dividendos (excepto paraísos fiscales o de régimen de menor imposición)', '22.00', '0', '18', '10');
INSERT INTO `concepto_retencion` VALUES ('81', '504C', 'Pago al exterior - Dividendos anticipados préstamos accionistas, beneficiarios o partìcipes (paraisos fiscales o regímenes de menor imposición)', '22.00', '0', '18', '10');
INSERT INTO `concepto_retencion` VALUES ('82', '504D', 'Pago al exterior - Dividendos a fideicomisos', '0.00', '1', '19', '11');
INSERT INTO `concepto_retencion` VALUES ('83', '504F', 'Pago al exterior - Dividendos a sociedades  (paraísos fiscales)', '0.00', '0', '19', '11');
INSERT INTO `concepto_retencion` VALUES ('84', '504G', 'Pago al exterior - Anticipo dividendos  (paraísos fiscales)', '0.00', '0', '19', '11');
INSERT INTO `concepto_retencion` VALUES ('85', '504H', 'Pago al exterior - Dividendos a fideicomisos  (paraísos fiscales)', '13.00', '0', '17', '9');
INSERT INTO `concepto_retencion` VALUES ('86', '505', 'Pago al exterior - Rendimientos financieros', '22.00', '0', '18', '10');
INSERT INTO `concepto_retencion` VALUES ('87', '505A', 'Pago al exterior – Intereses de créditos de Instituciones Financieras del exterior', '22.00', '0', '18', '10');
INSERT INTO `concepto_retencion` VALUES ('88', '505B', 'Pago al exterior – Intereses de créditos de gobierno a gobierno', '22.00', '0', '18', '10');
INSERT INTO `concepto_retencion` VALUES ('89', '505C', 'Pago al exterior – Intereses de créditos de organismos multilaterales', '22.00', '0', '18', '10');
INSERT INTO `concepto_retencion` VALUES ('90', '505D', 'Pago al exterior - Intereses por financiamiento de proveedores externos', '22.00', '0', '18', '10');
INSERT INTO `concepto_retencion` VALUES ('91', '505E', 'Pago al exterior - Intereses de otros créditos externos', '22.00', '0', '18', '10');
INSERT INTO `concepto_retencion` VALUES ('92', '505F', 'Pago al exterior - Otros Intereses y Rendimientos Financieros', '22.00', '0', '18', '10');
INSERT INTO `concepto_retencion` VALUES ('93', '509', 'Pago al exterior - Cánones, derechos de autor,  marcas, patentes y similares', '22.00', '0', '18', '10');
INSERT INTO `concepto_retencion` VALUES ('94', '509A', 'Pago al exterior - Regalías por concepto de franquicias', '22.00', '0', '18', '10');
INSERT INTO `concepto_retencion` VALUES ('95', '510', 'Pago al exterior - Ganancias de capital', '22.00', '0', '18', '10');
INSERT INTO `concepto_retencion` VALUES ('96', '511', 'Pago al exterior - Servicios profesionales independientes', '22.00', '0', '18', '10');
INSERT INTO `concepto_retencion` VALUES ('97', '512', 'Pago al exterior - Servicios profesionales dependientes', '22.00', '0', '18', '10');
INSERT INTO `concepto_retencion` VALUES ('98', '513', 'Pago al exterior - Artistas', '22.00', '0', '18', '10');
INSERT INTO `concepto_retencion` VALUES ('99', '513A', 'Pago al exterior - Deportistas', '22.00', '0', '18', '10');
INSERT INTO `concepto_retencion` VALUES ('100', '514', 'Pago al exterior - Participación de consejeros', '22.00', '0', '18', '10');
INSERT INTO `concepto_retencion` VALUES ('101', '515', 'Pago al exterior - Entretenimiento Público', '22.00', '0', '18', '10');
INSERT INTO `concepto_retencion` VALUES ('102', '516', 'Pago al exterior - Pensiones', '22.00', '0', '18', '10');
INSERT INTO `concepto_retencion` VALUES ('103', '517', 'Pago al exterior - Reembolso de Gastos', '22.00', '0', '18', '10');
INSERT INTO `concepto_retencion` VALUES ('104', '518', 'Pago al exterior - Funciones Públicas', '22.00', '0', '18', '10');
INSERT INTO `concepto_retencion` VALUES ('105', '519', 'Pago al exterior - Estudiantes', '22.00', '0', '18', '10');
INSERT INTO `concepto_retencion` VALUES ('106', '520', 'Pago al exterior - Otros conceptos de ingresos gravados', '22.00', '0', '18', '10');
INSERT INTO `concepto_retencion` VALUES ('107', '520A', 'Pago al exterior - Pago a proveedores de servicios hoteleros y turísticos en el exterior', '22.00', '0', '18', '10');
INSERT INTO `concepto_retencion` VALUES ('108', '520B', 'Pago al exterior - Arrendamientos mercantil internacional', '22.00', '0', '18', '10');
INSERT INTO `concepto_retencion` VALUES ('109', '520D', 'Pago al exterior - Comisiones por exportaciones y por promoción de turismo receptivo', '22.00', '0', '18', '10');
INSERT INTO `concepto_retencion` VALUES ('110', '520E', 'Pago al exterior - Por las empresas de transporte marítimo o aéreo y por empresas pesqueras de alta mar, por su actividad.', '22.00', '0', '18', '10');
INSERT INTO `concepto_retencion` VALUES ('111', '520F', 'Pago al exterior - Por las agencias internacionales de prensa', '22.00', '0', '18', '10');
INSERT INTO `concepto_retencion` VALUES ('112', '520G', 'Pago al exterior - Contratos de fletamento de naves para empresas de transporte aéreo o marítimo internacional', '22.00', '0', '18', '10');
INSERT INTO `concepto_retencion` VALUES ('113', '521', 'Pago al exterior - Enajenación de derechos representativos de capital y otros derechos ', '5.00', '0', '14', '6');
INSERT INTO `concepto_retencion` VALUES ('114', '522A', 'Pago al exterior - Servicios técnicos, administrativos o de consultoría y regalías con convenio de doble tributación', '22.00', '0', '18', '10');
INSERT INTO `concepto_retencion` VALUES ('115', '523A', 'Pago al exterior - Seguros y reaseguros (primas y cesiones)  con convenio de doble tributación', '22.00', '0', '18', '10');
INSERT INTO `concepto_retencion` VALUES ('116', '524', 'Pago al exterior - Otros pagos al exterior no sujetos a retención ', '22.00', '0', '18', '10');
INSERT INTO `concepto_retencion` VALUES ('117', '525', 'Pago al exterior - Donaciones en dinero -Impuesto a la donaciones', '0.00', '1', '19', '11');

-- ----------------------------
-- Table structure for contador
-- ----------------------------
DROP TABLE IF EXISTS `contador`;
CREATE TABLE `contador` (
  `id_contador` int(11) NOT NULL,
  `categoria` varchar(255) NOT NULL,
  `valor` int(11) DEFAULT NULL,
  `prefijo` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_contador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of contador
-- ----------------------------
INSERT INTO `contador` VALUES ('1', 'compra', '1', null);
INSERT INTO `contador` VALUES ('2', 'factura', '1', null);
INSERT INTO `contador` VALUES ('3', 'Nota de Venta', '1', null);
INSERT INTO `contador` VALUES ('4', 'Ingreso de Inventario', '1', 'ING');
INSERT INTO `contador` VALUES ('5', 'Egreso de Inventario', '1', 'EGRE');
INSERT INTO `contador` VALUES ('6', 'Proforma', '1', 'PROF');
INSERT INTO `contador` VALUES ('7', 'Comprobante de Pago', '1', 'PAG');
INSERT INTO `contador` VALUES ('8', 'Transferencia Inventario', '1', 'TRAN');
INSERT INTO `contador` VALUES ('9', 'Egreso Caja', '1', 'EGRCAJ');
INSERT INTO `contador` VALUES ('10', 'Retencion de Compra', '1', 'RETCOM');

-- ----------------------------
-- Table structure for con_categoria
-- ----------------------------
DROP TABLE IF EXISTS `con_categoria`;
CREATE TABLE `con_categoria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idtipocategoria` int(11) NOT NULL,
  `categoria` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of con_categoria
-- ----------------------------
INSERT INTO `con_categoria` VALUES ('1', '1', 'CLIENTES GENERALES');
INSERT INTO `con_categoria` VALUES ('2', '2', 'PROVEEDORES GENERALES');
INSERT INTO `con_categoria` VALUES ('3', '3', 'PRODUCTOS GENERALES');
INSERT INTO `con_categoria` VALUES ('4', '4', 'RETENCION DE RENTA 1% EN VENTAS');
INSERT INTO `con_categoria` VALUES ('5', '4', 'RETENCION DE RENTA 2% EN VENTAS');
INSERT INTO `con_categoria` VALUES ('6', '4', 'RETENCION DE RENTA 5% EN VENTAS');
INSERT INTO `con_categoria` VALUES ('7', '4', 'RETENCION DE RENTA 8% EN VENTAS');
INSERT INTO `con_categoria` VALUES ('8', '4', 'RETENCION DE RENTA 10% EN VENTAS');
INSERT INTO `con_categoria` VALUES ('9', '4', 'RETENCION DE RENTA 13% EN VENTAS');
INSERT INTO `con_categoria` VALUES ('10', '4', 'RETENCION DE RENTA 22% EN VENTAS');
INSERT INTO `con_categoria` VALUES ('11', '4', 'RETENCION DE RENTA EN VENTAS (OTROS)');
INSERT INTO `con_categoria` VALUES ('12', '5', 'RETENCION DE RENTA 1% EN COMPRAS');
INSERT INTO `con_categoria` VALUES ('13', '5', 'RETENCION DE RENTA 2% EN COMPRAS');
INSERT INTO `con_categoria` VALUES ('14', '5', 'RETENCION DE RENTA 5% EN COMPRAS');
INSERT INTO `con_categoria` VALUES ('15', '5', 'RETENCION DE RENTA 8% EN COMPRAS');
INSERT INTO `con_categoria` VALUES ('16', '5', 'RETENCION DE RENTA 10% EN COMPRAS');
INSERT INTO `con_categoria` VALUES ('17', '5', 'RETENCION DE RENTA 13% EN COMPRAS');
INSERT INTO `con_categoria` VALUES ('18', '5', 'RETENCION DE RENTA 22% EN COMPRAS');
INSERT INTO `con_categoria` VALUES ('19', '5', 'RETENCION DE RENTA EN COMPRAS (OTROS)');
INSERT INTO `con_categoria` VALUES ('20', '6', 'RETENCION DE IVA 10% EN VENTAS');
INSERT INTO `con_categoria` VALUES ('21', '6', 'RETENCION DE IVA 20% EN VENTAS');
INSERT INTO `con_categoria` VALUES ('22', '6', 'RETENCION DE IVA 30% EN VENTAS');
INSERT INTO `con_categoria` VALUES ('23', '6', 'RETENCION DE IVA 50% EN VENTAS');
INSERT INTO `con_categoria` VALUES ('24', '6', 'RETENCION DE IVA 70% EN VENTAS');
INSERT INTO `con_categoria` VALUES ('25', '6', 'RETENCION DE IVA 100% EN VENTAS');
INSERT INTO `con_categoria` VALUES ('26', '7', 'RETENCION DE IVA 10% EN COMPRAS');
INSERT INTO `con_categoria` VALUES ('27', '7', 'RETENCION DE IVA 20% EN COMPRAS');
INSERT INTO `con_categoria` VALUES ('28', '7', 'RETENCION DE IVA 30% EN COMPRAS');
INSERT INTO `con_categoria` VALUES ('29', '7', 'RETENCION DE IVA 50% EN COMPRAS');
INSERT INTO `con_categoria` VALUES ('30', '7', 'RETENCION DE IVA 70% EN COMPRAS');
INSERT INTO `con_categoria` VALUES ('31', '7', 'RETENCION DE IVA 100% EN COMPRAS');
INSERT INTO `con_categoria` VALUES ('32', '8', 'INGRESO BIENES IMP.%');
INSERT INTO `con_categoria` VALUES ('33', '8', 'INGRESO BIENES 0%');
INSERT INTO `con_categoria` VALUES ('34', '8', 'INGRESO SERVICIOS IMP.%');
INSERT INTO `con_categoria` VALUES ('35', '8', 'INGRESO SERVICIOS 0%');
INSERT INTO `con_categoria` VALUES ('36', '8', 'IVA EN VENTAS');
INSERT INTO `con_categoria` VALUES ('37', '8', 'COSTO VENTAS IMP.%');
INSERT INTO `con_categoria` VALUES ('38', '8', 'COSTO VENTAS 0%');
INSERT INTO `con_categoria` VALUES ('39', '9', 'IVA EN COMPRAS');
INSERT INTO `con_categoria` VALUES ('40', '9', 'IVA EN GASTOS');
INSERT INTO `con_categoria` VALUES ('41', '10', 'GASTOS GENERALES');
INSERT INTO `con_categoria` VALUES ('42', '11', 'INGRESO DE INVENTARIO');
INSERT INTO `con_categoria` VALUES ('43', '12', 'EGRESO DE INVENTARIO');

-- ----------------------------
-- Table structure for con_categoriacompra
-- ----------------------------
DROP TABLE IF EXISTS `con_categoriacompra`;
CREATE TABLE `con_categoriacompra` (
  `id` int(11) NOT NULL,
  `monto_iva_compra` int(11) DEFAULT NULL,
  `monto_iva_gasto` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of con_categoriacompra
-- ----------------------------
INSERT INTO `con_categoriacompra` VALUES ('1', '39', '40');

-- ----------------------------
-- Table structure for con_categoriaventa
-- ----------------------------
DROP TABLE IF EXISTS `con_categoriaventa`;
CREATE TABLE `con_categoriaventa` (
  `id` int(11) NOT NULL,
  `ingreso_bienes_ivanocero` int(11) DEFAULT NULL,
  `ingreso_bienes_ivacero` int(11) DEFAULT NULL,
  `ingreso_servicios_ivanocero` int(11) DEFAULT NULL,
  `ingreso_servicios_ivacero` int(11) DEFAULT NULL,
  `monto_iva` int(11) DEFAULT NULL,
  `costo_ivanocero` int(11) DEFAULT NULL,
  `costo_ivacero` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of con_categoriaventa
-- ----------------------------
INSERT INTO `con_categoriaventa` VALUES ('1', '32', '33', '34', '35', '36', '37', '38');

-- ----------------------------
-- Table structure for con_comprobante
-- ----------------------------
DROP TABLE IF EXISTS `con_comprobante`;
CREATE TABLE `con_comprobante` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idempresa` int(11) NOT NULL,
  `idsucursal` int(11) NOT NULL,
  `idtipocomprobante` int(11) NOT NULL,
  `idejercicio` int(11) NOT NULL,
  `numero` int(11) NOT NULL,
  `referencia` varchar(255) NOT NULL,
  `fechaasiento` datetime DEFAULT NULL,
  `idusuarioregistro` int(11) NOT NULL,
  `idestado` tinyint(1) NOT NULL,
  `monto` decimal(11,2) NOT NULL,
  `descripcion` varchar(1000) NOT NULL,
  `fechacreacion` datetime DEFAULT CURRENT_TIMESTAMP,
  `fechamodificacion` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of con_comprobante
-- ----------------------------

-- ----------------------------
-- Table structure for con_comprobanteanulado
-- ----------------------------
DROP TABLE IF EXISTS `con_comprobanteanulado`;
CREATE TABLE `con_comprobanteanulado` (
  `idcomprobante` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `fechaanulacion` datetime DEFAULT CURRENT_TIMESTAMP,
  `motivoanulacion` varchar(1000) NOT NULL,
  PRIMARY KEY (`idcomprobante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of con_comprobanteanulado
-- ----------------------------

-- ----------------------------
-- Table structure for con_comprobantedetalle
-- ----------------------------
DROP TABLE IF EXISTS `con_comprobantedetalle`;
CREATE TABLE `con_comprobantedetalle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idcomprobante` int(11) NOT NULL,
  `idcuenta` int(11) NOT NULL,
  `debitocredito` tinyint(1) NOT NULL,
  `valor` decimal(11,2) NOT NULL,
  `concepto` varchar(1000) NOT NULL,
  `fechacreacion` datetime DEFAULT CURRENT_TIMESTAMP,
  `fechamodificacion` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of con_comprobantedetalle
-- ----------------------------

-- ----------------------------
-- Table structure for con_comprobantedetalle_cliente
-- ----------------------------
DROP TABLE IF EXISTS `con_comprobantedetalle_cliente`;
CREATE TABLE `con_comprobantedetalle_cliente` (
  `iddetallecomprobante` int(11) NOT NULL,
  `idcliente` int(11) NOT NULL,
  PRIMARY KEY (`iddetallecomprobante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of con_comprobantedetalle_cliente
-- ----------------------------

-- ----------------------------
-- Table structure for con_comprobantedetalle_proveedor
-- ----------------------------
DROP TABLE IF EXISTS `con_comprobantedetalle_proveedor`;
CREATE TABLE `con_comprobantedetalle_proveedor` (
  `iddetallecomprobante` int(11) NOT NULL,
  `idproveedor` int(11) NOT NULL,
  PRIMARY KEY (`iddetallecomprobante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of con_comprobantedetalle_proveedor
-- ----------------------------

-- ----------------------------
-- Table structure for con_comprobantedocumento
-- ----------------------------
DROP TABLE IF EXISTS `con_comprobantedocumento`;
CREATE TABLE `con_comprobantedocumento` (
  `idcomprobante` int(11) NOT NULL,
  `iddocreferencia` int(11) NOT NULL,
  `fechacreacion` datetime DEFAULT CURRENT_TIMESTAMP,
  `fechamodificacion` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idcomprobante`,`iddocreferencia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of con_comprobantedocumento
-- ----------------------------

-- ----------------------------
-- Table structure for con_configuracioncategoria
-- ----------------------------
DROP TABLE IF EXISTS `con_configuracioncategoria`;
CREATE TABLE `con_configuracioncategoria` (
  `idcategoria` int(11) NOT NULL,
  `idempresa` int(11) NOT NULL,
  `idcuenta` int(11) NOT NULL,
  `fechacreacion` datetime DEFAULT CURRENT_TIMESTAMP,
  `fechamodificacion` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idcategoria`,`idempresa`,`idcuenta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of con_configuracioncategoria
-- ----------------------------

-- ----------------------------
-- Table structure for con_cuentacategoriagasto
-- ----------------------------
DROP TABLE IF EXISTS `con_cuentacategoriagasto`;
CREATE TABLE `con_cuentacategoriagasto` (
  `idcategoria` int(11) NOT NULL,
  `idempresa` int(11) NOT NULL,
  `idcuenta` int(11) NOT NULL,
  `fechacreacion` datetime DEFAULT CURRENT_TIMESTAMP,
  `fechamodificacion` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idcategoria`,`idempresa`,`idcuenta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of con_cuentacategoriagasto
-- ----------------------------

-- ----------------------------
-- Table structure for con_cuentaclienteformapago
-- ----------------------------
DROP TABLE IF EXISTS `con_cuentaclienteformapago`;
CREATE TABLE `con_cuentaclienteformapago` (
  `idformapago` int(11) NOT NULL,
  `idempresa` int(11) NOT NULL,
  `idcuenta` int(11) NOT NULL,
  `fechacreacion` datetime DEFAULT CURRENT_TIMESTAMP,
  `fechamodificacion` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idformapago`,`idempresa`,`idcuenta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of con_cuentaclienteformapago
-- ----------------------------

-- ----------------------------
-- Table structure for con_cuentaclientetarjeta
-- ----------------------------
DROP TABLE IF EXISTS `con_cuentaclientetarjeta`;
CREATE TABLE `con_cuentaclientetarjeta` (
  `idformapago` int(11) NOT NULL,
  `idempresa` int(11) NOT NULL,
  `idtarjeta` int(11) NOT NULL,
  `idcuenta` int(11) NOT NULL,
  `fechacreacion` datetime DEFAULT CURRENT_TIMESTAMP,
  `fechamodificacion` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idformapago`,`idempresa`,`idtarjeta`,`idcuenta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of con_cuentaclientetarjeta
-- ----------------------------

-- ----------------------------
-- Table structure for con_cuentaproveedorformapago
-- ----------------------------
DROP TABLE IF EXISTS `con_cuentaproveedorformapago`;
CREATE TABLE `con_cuentaproveedorformapago` (
  `idformapago` int(11) NOT NULL,
  `idempresa` int(11) NOT NULL,
  `idcuenta` int(11) NOT NULL,
  `fechacreacion` datetime DEFAULT CURRENT_TIMESTAMP,
  `fechamodificacion` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idformapago`,`idempresa`,`idcuenta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of con_cuentaproveedorformapago
-- ----------------------------

-- ----------------------------
-- Table structure for con_cuentaproveedortarjeta
-- ----------------------------
DROP TABLE IF EXISTS `con_cuentaproveedortarjeta`;
CREATE TABLE `con_cuentaproveedortarjeta` (
  `idformapago` int(11) NOT NULL,
  `idempresa` int(11) NOT NULL,
  `idtarjeta` int(11) NOT NULL,
  `idcuenta` int(11) NOT NULL,
  `fechacreacion` datetime DEFAULT CURRENT_TIMESTAMP,
  `fechamodificacion` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idformapago`,`idempresa`,`idtarjeta`,`idcuenta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of con_cuentaproveedortarjeta
-- ----------------------------

-- ----------------------------
-- Table structure for con_ejercicio
-- ----------------------------
DROP TABLE IF EXISTS `con_ejercicio`;
CREATE TABLE `con_ejercicio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inicio` datetime DEFAULT NULL,
  `fin` datetime DEFAULT NULL,
  `descripcion` varchar(255) NOT NULL,
  `fechacreacion` datetime DEFAULT CURRENT_TIMESTAMP,
  `fechamodificacion` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of con_ejercicio
-- ----------------------------

-- ----------------------------
-- Table structure for con_estadocomprobante
-- ----------------------------
DROP TABLE IF EXISTS `con_estadocomprobante`;
CREATE TABLE `con_estadocomprobante` (
  `id` tinyint(1) NOT NULL,
  `estado` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of con_estadocomprobante
-- ----------------------------
INSERT INTO `con_estadocomprobante` VALUES ('1', 'Pendiente');
INSERT INTO `con_estadocomprobante` VALUES ('2', 'Confirmado');
INSERT INTO `con_estadocomprobante` VALUES ('3', 'Anulado');

-- ----------------------------
-- Table structure for con_grupocuenta
-- ----------------------------
DROP TABLE IF EXISTS `con_grupocuenta`;
CREATE TABLE `con_grupocuenta` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of con_grupocuenta
-- ----------------------------
INSERT INTO `con_grupocuenta` VALUES ('1', 'ACTIVO');
INSERT INTO `con_grupocuenta` VALUES ('2', 'PASIVO');
INSERT INTO `con_grupocuenta` VALUES ('3', 'PATRIMONIO NETO');
INSERT INTO `con_grupocuenta` VALUES ('4', 'INGRESO');
INSERT INTO `con_grupocuenta` VALUES ('5', 'COSTO Y GASTO');
INSERT INTO `con_grupocuenta` VALUES ('6', 'GANANCIA');
INSERT INTO `con_grupocuenta` VALUES ('7', 'RESULTADO');

-- ----------------------------
-- Table structure for con_plancuenta
-- ----------------------------
DROP TABLE IF EXISTS `con_plancuenta`;
CREATE TABLE `con_plancuenta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idempresa` int(11) NOT NULL,
  `idcuentasuperior` int(11) DEFAULT NULL,
  `idgrupocuenta` int(11) DEFAULT NULL,
  `codigonivel` varchar(20) NOT NULL,
  `codigocuenta` varchar(255) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `nivel` tinyint(2) NOT NULL,
  `esmovimiento` tinyint(1) NOT NULL,
  `naturaleza` tinyint(1) NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `idusuariocreacion` int(11) NOT NULL,
  `fechacreacion` datetime DEFAULT CURRENT_TIMESTAMP,
  `fechamodificacion` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of con_plancuenta
-- ----------------------------

-- ----------------------------
-- Table structure for con_plancuentainactivo
-- ----------------------------
DROP TABLE IF EXISTS `con_plancuentainactivo`;
CREATE TABLE `con_plancuentainactivo` (
  `idcuenta` int(11) NOT NULL,
  `idempresa` int(11) NOT NULL,
  `idusuarioinactivacion` int(11) NOT NULL,
  `fechainactivacion` datetime DEFAULT CURRENT_TIMESTAMP,
  `descripcion` varchar(255) NOT NULL,
  PRIMARY KEY (`idcuenta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of con_plancuentainactivo
-- ----------------------------

-- ----------------------------
-- Table structure for con_plancuentaplantilla
-- ----------------------------
DROP TABLE IF EXISTS `con_plancuentaplantilla`;
CREATE TABLE `con_plancuentaplantilla` (
  `id` int(11) NOT NULL,
  `idcuentasuperior` int(11) DEFAULT NULL,
  `idgrupocuenta` int(11) DEFAULT NULL,
  `codigonivel` varchar(20) NOT NULL,
  `codigocuenta` varchar(255) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `nivel` tinyint(2) NOT NULL,
  `esmovimiento` tinyint(1) NOT NULL,
  `naturaleza` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of con_plancuentaplantilla
-- ----------------------------

-- ----------------------------
-- Table structure for con_saldo
-- ----------------------------
DROP TABLE IF EXISTS `con_saldo`;
CREATE TABLE `con_saldo` (
  `idsucursal` int(11) NOT NULL,
  `idcuenta` int(11) NOT NULL,
  `saldo` decimal(11,2) NOT NULL,
  `fechacreacion` datetime DEFAULT CURRENT_TIMESTAMP,
  `fechamodificacion` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idsucursal`,`idcuenta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of con_saldo
-- ----------------------------

-- ----------------------------
-- Table structure for con_tipocategoria
-- ----------------------------
DROP TABLE IF EXISTS `con_tipocategoria`;
CREATE TABLE `con_tipocategoria` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `rangogrupocuenta` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of con_tipocategoria
-- ----------------------------
INSERT INTO `con_tipocategoria` VALUES ('1', 'CUENTAS POR COBRAR A CLIENTES', '1');
INSERT INTO `con_tipocategoria` VALUES ('2', 'CUENTAS POR PAGAR A PROVEEDORES', '2');
INSERT INTO `con_tipocategoria` VALUES ('3', 'INVENTARIO DE PRODUCTOS', '1');
INSERT INTO `con_tipocategoria` VALUES ('4', 'RETENCION DE RENTA EN VENTAS', '');
INSERT INTO `con_tipocategoria` VALUES ('5', 'RETENCION DE RENTA EN COMPRAS', '');
INSERT INTO `con_tipocategoria` VALUES ('6', 'RETENCION DE IVA EN VENTAS', '');
INSERT INTO `con_tipocategoria` VALUES ('7', 'RETENCION DE IVA EN COMPRAS', '');
INSERT INTO `con_tipocategoria` VALUES ('8', 'CONFIGURACION DE VENTAS', '');
INSERT INTO `con_tipocategoria` VALUES ('9', 'CONFIGURACION DE COMPRAS', '');
INSERT INTO `con_tipocategoria` VALUES ('10', 'CONCEPTOS DE GASTO', '');
INSERT INTO `con_tipocategoria` VALUES ('11', 'CONCEPTOS DE INGRESO DE INVENTARIO', '');
INSERT INTO `con_tipocategoria` VALUES ('12', 'CONCEPTOS DE EGRESO DE INVENTARIO', '');

-- ----------------------------
-- Table structure for con_tipocomprobante
-- ----------------------------
DROP TABLE IF EXISTS `con_tipocomprobante`;
CREATE TABLE `con_tipocomprobante` (
  `id` tinyint(1) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `abreviatura` varchar(10) NOT NULL,
  `prefijo` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of con_tipocomprobante
-- ----------------------------
INSERT INTO `con_tipocomprobante` VALUES ('1', 'Diario', 'DIARIO', 'DIA');
INSERT INTO `con_tipocomprobante` VALUES ('2', 'Apertura de Ejercicio', 'APERT', 'APE');
INSERT INTO `con_tipocomprobante` VALUES ('3', 'Cierre de Ejercicio', 'CIERRE', 'CIE');
INSERT INTO `con_tipocomprobante` VALUES ('4', 'Documento de Venta', 'VENTA', 'VTA');
INSERT INTO `con_tipocomprobante` VALUES ('5', 'Documento de Cobro', 'COBRO', 'COB');
INSERT INTO `con_tipocomprobante` VALUES ('6', 'Documento de Compra', 'COMPRA', 'COM');
INSERT INTO `con_tipocomprobante` VALUES ('7', 'Documento de Gasto', 'GASTO', 'GAS');
INSERT INTO `con_tipocomprobante` VALUES ('8', 'Documento de Pago', 'PAGO', 'PAG');
INSERT INTO `con_tipocomprobante` VALUES ('9', 'Ingreso de Inventario', 'ING-INV', 'INGI');
INSERT INTO `con_tipocomprobante` VALUES ('10', 'Egreso de Inventario', 'EGRE-INV', 'EGRI');
INSERT INTO `con_tipocomprobante` VALUES ('11', 'Retencion de Venta', 'RET-VENTA', 'RVTA');
INSERT INTO `con_tipocomprobante` VALUES ('12', 'Retencion de Compra', 'RET-COMP', 'RCOM');
INSERT INTO `con_tipocomprobante` VALUES ('13', 'Retencion de Gasto', 'RET-GAST', 'RGAS');

-- ----------------------------
-- Table structure for con_tipocomprobante_sucursal
-- ----------------------------
DROP TABLE IF EXISTS `con_tipocomprobante_sucursal`;
CREATE TABLE `con_tipocomprobante_sucursal` (
  `idtipo` tinyint(1) NOT NULL,
  `idsucursal` int(11) NOT NULL,
  `contador` int(11) NOT NULL,
  PRIMARY KEY (`idtipo`,`idsucursal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of con_tipocomprobante_sucursal
-- ----------------------------

-- ----------------------------
-- Table structure for con_tmpcomprobantedetalle
-- ----------------------------
DROP TABLE IF EXISTS `con_tmpcomprobantedetalle`;
CREATE TABLE `con_tmpcomprobantedetalle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(32) NOT NULL,
  `idcuenta` int(11) NOT NULL,
  `codigocuenta` varchar(255) NOT NULL,
  `debitocredito` tinyint(1) NOT NULL,
  `valor` decimal(11,2) NOT NULL,
  `concepto` varchar(1000) NOT NULL,
  `fechacreacion` datetime DEFAULT CURRENT_TIMESTAMP,
  `fechamodificacion` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of con_tmpcomprobantedetalle
-- ----------------------------

-- ----------------------------
-- Table structure for correo
-- ----------------------------
DROP TABLE IF EXISTS `correo`;
CREATE TABLE `correo` (
  `id_correo` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(255) DEFAULT NULL,
  `clave` varchar(255) DEFAULT NULL,
  `puerto` int(11) DEFAULT NULL,
  `smtp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_correo`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of correo
-- ----------------------------
INSERT INTO `correo` VALUES ('1', 'facturaelectronica@factuleon.com', '*123*', '465', 'mail.gmail.com');

-- ----------------------------
-- Table structure for deducible
-- ----------------------------
DROP TABLE IF EXISTS `deducible`;
CREATE TABLE `deducible` (
  `id_deducible` int(11) NOT NULL AUTO_INCREMENT,
  `cod_deducible` varchar(255) DEFAULT NULL,
  `nom_deducible` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_deducible`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of deducible
-- ----------------------------
INSERT INTO `deducible` VALUES ('1', 'cod-1', 'Ninguno');
INSERT INTO `deducible` VALUES ('2', 'cod-2', 'Medicina');
INSERT INTO `deducible` VALUES ('3', 'cod-3', 'Alimentación');
INSERT INTO `deducible` VALUES ('4', 'cod-4', 'Educación');
INSERT INTO `deducible` VALUES ('5', 'cod-5', 'Vestimenta');
INSERT INTO `deducible` VALUES ('6', 'cod-6', 'Vivienda');

-- ----------------------------
-- Table structure for deposito_efectivo
-- ----------------------------
DROP TABLE IF EXISTS `deposito_efectivo`;
CREATE TABLE `deposito_efectivo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idtipo` tinyint(2) NOT NULL,
  `idsucursal` int(11) NOT NULL,
  `idcuentacontable` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of deposito_efectivo
-- ----------------------------
INSERT INTO `deposito_efectivo` VALUES ('1', '2', '1', null, '2019-03-07 08:40:23');
INSERT INTO `deposito_efectivo` VALUES ('2', '1', '1', null, '2019-03-07 08:40:23');

-- ----------------------------
-- Table structure for deposito_tipo
-- ----------------------------
DROP TABLE IF EXISTS `deposito_tipo`;
CREATE TABLE `deposito_tipo` (
  `id` tinyint(2) NOT NULL,
  `tipo` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of deposito_tipo
-- ----------------------------
INSERT INTO `deposito_tipo` VALUES ('1', 'CAJA EFECTIVO');
INSERT INTO `deposito_tipo` VALUES ('2', 'CAJA CHICA');
INSERT INTO `deposito_tipo` VALUES ('3', 'CUENTA BANCO');

-- ----------------------------
-- Table structure for devolucion_garantia
-- ----------------------------
DROP TABLE IF EXISTS `devolucion_garantia`;
CREATE TABLE `devolucion_garantia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` datetime DEFAULT NULL,
  `idsucursal` int(11) NOT NULL,
  `nrodevolucion` varchar(9) DEFAULT NULL,
  `idcliente` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of devolucion_garantia
-- ----------------------------

-- ----------------------------
-- Table structure for devolucion_garantia_detalle
-- ----------------------------
DROP TABLE IF EXISTS `devolucion_garantia_detalle`;
CREATE TABLE `devolucion_garantia_detalle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iddevolucion` int(11) NOT NULL,
  `idventa` int(11) DEFAULT NULL,
  `idserie` int(11) NOT NULL,
  `idalmacen` int(11) NOT NULL,
  `observaciones` text,
  `iddoc_entradaalmacen` int(11) DEFAULT NULL,
  `idserie_reposicion` int(11) DEFAULT NULL,
  `iddoc_salidaalmacen` int(11) DEFAULT NULL,
  `iddetalleventa` int(11) DEFAULT NULL,
  `diasgarantia` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of devolucion_garantia_detalle
-- ----------------------------

-- ----------------------------
-- Table structure for documento_pago
-- ----------------------------
DROP TABLE IF EXISTS `documento_pago`;
CREATE TABLE `documento_pago` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `estado` int(11) NOT NULL,
  `numero` varchar(25) NOT NULL,
  `valor` decimal(11,2) NOT NULL,
  `observaciones` varchar(1000) DEFAULT NULL,
  `fechacreacion` datetime DEFAULT CURRENT_TIMESTAMP,
  `fechamodificacion` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of documento_pago
-- ----------------------------

-- ----------------------------
-- Table structure for documento_pagodeposito
-- ----------------------------
DROP TABLE IF EXISTS `documento_pagodeposito`;
CREATE TABLE `documento_pagodeposito` (
  `iddocumento` int(11) NOT NULL,
  `iddeposito` int(11) NOT NULL,
  PRIMARY KEY (`iddocumento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of documento_pagodeposito
-- ----------------------------

-- ----------------------------
-- Table structure for empleado
-- ----------------------------
DROP TABLE IF EXISTS `empleado`;
CREATE TABLE `empleado` (
  `id_empleado` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_empleado` varchar(255) DEFAULT NULL,
  `tipo_identificacion` int(11) NOT NULL,
  `nro_ident` varchar(100) DEFAULT NULL,
  `es_tecnico` tinyint(1) NOT NULL,
  `activo` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_empleado`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of empleado
-- ----------------------------

-- ----------------------------
-- Table structure for empresa
-- ----------------------------
DROP TABLE IF EXISTS `empresa`;
CREATE TABLE `empresa` (
  `id_emp` int(255) NOT NULL AUTO_INCREMENT,
  `cod_emp` varchar(255) DEFAULT NULL,
  `nom_emp` varchar(255) DEFAULT NULL,
  `ruc_emp` varchar(255) DEFAULT NULL,
  `raz_soc_emp` varchar(255) DEFAULT NULL,
  `ema_emp` varchar(255) DEFAULT NULL,
  `tlf_emp` varchar(255) DEFAULT NULL,
  `fax_emp` varchar(255) DEFAULT NULL,
  `dir_emp` text,
  `rep_emp` varchar(255) DEFAULT NULL,
  `web_emp` varchar(255) DEFAULT NULL,
  `imagenlogo_emp` longblob,
  `logo_path` varchar(255) DEFAULT NULL,
  `tokenfirma` varchar(255) DEFAULT NULL,
  `obligadocontabilidad` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id_emp`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of empresa
-- ----------------------------
INSERT INTO `empresa` VALUES ('1', '123456789', 'Ejemplo', '1111111111111111', 'Ejemplo', 'ejemplo@factuleon.com', '0', '0', 'Ecuador', 'Ejemplo', 'http://www.ejemplo.com', null, '', null, '0');

-- ----------------------------
-- Table structure for estatus_documento
-- ----------------------------
DROP TABLE IF EXISTS `estatus_documento`;
CREATE TABLE `estatus_documento` (
  `id_estatus` int(11) NOT NULL AUTO_INCREMENT,
  `desc_estatus` varchar(255) NOT NULL,
  PRIMARY KEY (`id_estatus`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of estatus_documento
-- ----------------------------
INSERT INTO `estatus_documento` VALUES ('1', 'Pagado');
INSERT INTO `estatus_documento` VALUES ('2', 'Pendiente');
INSERT INTO `estatus_documento` VALUES ('3', 'Anulado');

-- ----------------------------
-- Table structure for facturainfoestadosri
-- ----------------------------
DROP TABLE IF EXISTS `facturainfoestadosri`;
CREATE TABLE `facturainfoestadosri` (
  `Idfactura` int(11) DEFAULT NULL,
  `secuencial` varchar(100) DEFAULT NULL,
  `enviadoSRI` int(11) DEFAULT NULL,
  `autorizado` int(11) DEFAULT NULL,
  `rechazado` int(11) DEFAULT NULL,
  `claveacesso` varchar(100) DEFAULT NULL,
  `numeroautorizacion` varchar(100) DEFAULT NULL,
  `fechaautorizacion` varchar(100) DEFAULT NULL,
  `enviadoemail` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `anulado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of facturainfoestadosri
-- ----------------------------

-- ----------------------------
-- Table structure for formapago
-- ----------------------------
DROP TABLE IF EXISTS `formapago`;
CREATE TABLE `formapago` (
  `id_formapago` int(11) NOT NULL,
  `cod_formapago` varchar(45) DEFAULT NULL,
  `nombre_formapago` varchar(45) NOT NULL,
  `esinstrumentobanco` int(11) DEFAULT NULL,
  `estarjeta` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_formapago`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of formapago
-- ----------------------------
INSERT INTO `formapago` VALUES ('1', '01', 'EFECTIVO', '0', '0');
INSERT INTO `formapago` VALUES ('2', '20', 'CHEQUE', '1', '0');
INSERT INTO `formapago` VALUES ('3', '19', 'TARJETA DE CRÉDITO', '0', '1');
INSERT INTO `formapago` VALUES ('4', '16', 'TARJETA DE DEBITO', '0', '1');
INSERT INTO `formapago` VALUES ('5', '18', 'TARJETA PREPAGO', '0', '1');
INSERT INTO `formapago` VALUES ('6', '20', 'TRANSFERENCIA', '1', '0');
INSERT INTO `formapago` VALUES ('7', '17', 'DINERO ELECTRONICO', '0', '0');
INSERT INTO `formapago` VALUES ('8', '20', 'OTROS', '1', '0');

-- ----------------------------
-- Table structure for formapago_tmp
-- ----------------------------
DROP TABLE IF EXISTS `formapago_tmp`;
CREATE TABLE `formapago_tmp` (
  `idreg` int(11) NOT NULL AUTO_INCREMENT,
  `id_venta` int(11) NOT NULL,
  `id_formapago` int(11) NOT NULL,
  `id_banco` int(11) NOT NULL,
  `numerocuenta` varchar(100) DEFAULT NULL,
  `id_tarjeta` int(11) NOT NULL,
  `numerotarjeta` varchar(100) DEFAULT NULL,
  `fechaemision` date DEFAULT NULL,
  `fechacobro` date DEFAULT NULL,
  `numerodocumento` varchar(100) DEFAULT NULL,
  `descripciondocumento` varchar(100) DEFAULT NULL,
  `monto` decimal(11,2) DEFAULT NULL,
  `id_tipcancelacion` int(11) DEFAULT NULL,
  PRIMARY KEY (`idreg`)
) ENGINE=InnoDB AUTO_INCREMENT=998 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of formapago_tmp
-- ----------------------------

-- ----------------------------
-- Table structure for garantia
-- ----------------------------
DROP TABLE IF EXISTS `garantia`;
CREATE TABLE `garantia` (
  `id_garantia` int(11) NOT NULL AUTO_INCREMENT,
  `idventa` int(11) DEFAULT NULL,
  `idserie` int(11) DEFAULT NULL,
  `fec_desde` date DEFAULT NULL,
  `fec_hasta` date DEFAULT NULL,
  `dias_gar` int(11) DEFAULT NULL,
  `estatus` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id_garantia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of garantia
-- ----------------------------

-- ----------------------------
-- Table structure for gastos
-- ----------------------------
DROP TABLE IF EXISTS `gastos`;
CREATE TABLE `gastos` (
  `id_gastos` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `id_proveedor` int(11) DEFAULT NULL,
  `nro_factura` varchar(255) DEFAULT NULL,
  `descripcion` text,
  `tipo_compra` varchar(255) DEFAULT NULL,
  `apiva` tinyint(1) DEFAULT NULL,
  `subtotal` decimal(11,2) DEFAULT NULL,
  `descuento` decimal(11,2) DEFAULT NULL,
  `subtotaldesc` decimal(11,2) DEFAULT NULL,
  `montoiva` decimal(11,2) DEFAULT NULL,
  `total` decimal(11,2) DEFAULT NULL,
  `id_usu` int(11) DEFAULT NULL,
  `estatus` varchar(255) DEFAULT NULL,
  `dias` int(11) DEFAULT NULL,
  `fecha_pago` date DEFAULT NULL,
  `categoria` int(11) DEFAULT NULL,
  `fecharegistro` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `subtotalivacero` decimal(11,2) DEFAULT NULL,
  `subtotalivacerodesc` decimal(11,2) DEFAULT NULL,
  `cod_sri_tipo_doc` varchar(6) DEFAULT NULL,
  `cod_sri_sust_comprobante` varchar(6) DEFAULT NULL,
  `nro_autorizacion` varchar(255) DEFAULT NULL,
  `id_sucursal` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_gastos`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gastos
-- ----------------------------

-- ----------------------------
-- Table structure for gastos_abonos
-- ----------------------------
DROP TABLE IF EXISTS `gastos_abonos`;
CREATE TABLE `gastos_abonos` (
  `id_abono` int(11) NOT NULL AUTO_INCREMENT,
  `id_gastos` int(11) DEFAULT NULL,
  `id_formapago` int(11) DEFAULT NULL,
  `monto` decimal(11,2) DEFAULT NULL,
  `fecha` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `iddocpago` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_abono`)
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gastos_abonos
-- ----------------------------

-- ----------------------------
-- Table structure for gastos_categorias
-- ----------------------------
DROP TABLE IF EXISTS `gastos_categorias`;
CREATE TABLE `gastos_categorias` (
  `id_cat_gas` int(11) NOT NULL AUTO_INCREMENT,
  `nom_cat_gas` varchar(255) NOT NULL,
  PRIMARY KEY (`id_cat_gas`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gastos_categorias
-- ----------------------------
INSERT INTO `gastos_categorias` VALUES ('9', 'Sin Categorizar');
INSERT INTO `gastos_categorias` VALUES ('10', 'Compra Proveedor');

-- ----------------------------
-- Table structure for gastos_retencion
-- ----------------------------
DROP TABLE IF EXISTS `gastos_retencion`;
CREATE TABLE `gastos_retencion` (
  `id_gastos_ret` int(11) NOT NULL AUTO_INCREMENT,
  `id_gastos` int(11) DEFAULT NULL,
  `nro_retencion` varchar(255) DEFAULT NULL,
  `nro_autorizacion` varchar(255) DEFAULT NULL,
  `fecha_retencion` date DEFAULT NULL,
  `id_puntoemision` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_gastos_ret`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gastos_retencion
-- ----------------------------

-- ----------------------------
-- Table structure for gastos_retencion_detiva
-- ----------------------------
DROP TABLE IF EXISTS `gastos_retencion_detiva`;
CREATE TABLE `gastos_retencion_detiva` (
  `id_detalleiva` int(11) NOT NULL AUTO_INCREMENT,
  `id_gastos_ret` int(11) DEFAULT NULL,
  `id_porcentaje_retencion_iva` int(11) DEFAULT NULL,
  `porciento_retencion_iva` decimal(11,2) DEFAULT NULL,
  `valor_retencion_iva` decimal(11,2) DEFAULT NULL,
  `base_retencion_iva` decimal(11,2) DEFAULT NULL,
  PRIMARY KEY (`id_detalleiva`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gastos_retencion_detiva
-- ----------------------------

-- ----------------------------
-- Table structure for gastos_retencion_detrenta
-- ----------------------------
DROP TABLE IF EXISTS `gastos_retencion_detrenta`;
CREATE TABLE `gastos_retencion_detrenta` (
  `id_detallerenta` int(11) NOT NULL AUTO_INCREMENT,
  `id_gastos_ret` int(11) DEFAULT NULL,
  `id_concepto_retencion` int(11) DEFAULT NULL,
  `base_noiva` decimal(11,2) DEFAULT NULL,
  `base_iva` decimal(11,2) DEFAULT NULL,
  `porciento_retencion_renta` decimal(11,2) DEFAULT NULL,
  `valor_retencion_renta` decimal(11,2) DEFAULT NULL,
  PRIMARY KEY (`id_detallerenta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gastos_retencion_detrenta
-- ----------------------------

-- ----------------------------
-- Table structure for gastos_retencion_detrenta_tmp
-- ----------------------------
DROP TABLE IF EXISTS `gastos_retencion_detrenta_tmp`;
CREATE TABLE `gastos_retencion_detrenta_tmp` (
  `id_detallerenta` int(11) NOT NULL AUTO_INCREMENT,
  `id_concepto_retencion` int(11) DEFAULT NULL,
  `base_noiva` decimal(11,2) DEFAULT NULL,
  `base_iva` decimal(11,2) DEFAULT NULL,
  `porciento_retencion_renta` decimal(11,2) DEFAULT NULL,
  `valor_retencion_renta` decimal(11,2) DEFAULT NULL,
  `id_usu` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_detallerenta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gastos_retencion_detrenta_tmp
-- ----------------------------

-- ----------------------------
-- Table structure for gasto_anulado
-- ----------------------------
DROP TABLE IF EXISTS `gasto_anulado`;
CREATE TABLE `gasto_anulado` (
  `idgasto` int(11) NOT NULL,
  `idusuario` int(11) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `causa_anulacion` text,
  PRIMARY KEY (`idgasto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gasto_anulado
-- ----------------------------

-- ----------------------------
-- Table structure for guiaremisioninfoestadosri
-- ----------------------------
DROP TABLE IF EXISTS `guiaremisioninfoestadosri`;
CREATE TABLE `guiaremisioninfoestadosri` (
  `idguia` int(11) DEFAULT NULL,
  `secuencial` varchar(100) DEFAULT NULL,
  `enviadoSRI` int(11) DEFAULT NULL,
  `autorizado` int(11) DEFAULT NULL,
  `rechazado` int(11) DEFAULT NULL,
  `claveacesso` varchar(100) DEFAULT NULL,
  `numeroautorizacion` varchar(100) DEFAULT NULL,
  `fechaautorizacion` varchar(100) DEFAULT NULL,
  `enviadoemail` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `anulado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of guiaremisioninfoestadosri
-- ----------------------------

-- ----------------------------
-- Table structure for identificacion
-- ----------------------------
DROP TABLE IF EXISTS `identificacion`;
CREATE TABLE `identificacion` (
  `id_identificacion` int(11) NOT NULL AUTO_INCREMENT,
  `cod_identificacion` varchar(3) NOT NULL,
  `desc_identificacion` varchar(255) NOT NULL,
  `codsri_compra` varchar(2) DEFAULT NULL,
  `codsri_venta` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id_identificacion`,`cod_identificacion`,`desc_identificacion`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of identificacion
-- ----------------------------
INSERT INTO `identificacion` VALUES ('1', 'C', 'Cédula', '02', '05');
INSERT INTO `identificacion` VALUES ('2', 'P', 'Pasaporte', '03', '06');
INSERT INTO `identificacion` VALUES ('3', 'R', 'R.U.C.', '01', '04');

-- ----------------------------
-- Table structure for inventariodocumento
-- ----------------------------
DROP TABLE IF EXISTS `inventariodocumento`;
CREATE TABLE `inventariodocumento` (
  `id_documento` int(11) NOT NULL AUTO_INCREMENT,
  `id_tipodoc` int(11) NOT NULL,
  `id_usu` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `nro_documento` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `total` decimal(11,2) DEFAULT NULL,
  `estatus` int(11) DEFAULT NULL,
  `fecharegistro` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_almacen` int(11) DEFAULT NULL,
  `idcategoriacontable` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_documento`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of inventariodocumento
-- ----------------------------

-- ----------------------------
-- Table structure for inventariodocumento_detalle
-- ----------------------------
DROP TABLE IF EXISTS `inventariodocumento_detalle`;
CREATE TABLE `inventariodocumento_detalle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_documento` int(11) DEFAULT NULL,
  `id_pro` int(11) DEFAULT NULL,
  `precio_compra` decimal(11,4) DEFAULT NULL,
  `cantidad` decimal(11,2) DEFAULT NULL,
  `id_unimed` int(11) DEFAULT NULL,
  `montototal` decimal(11,2) DEFAULT NULL,
  `id_serie` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=218 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of inventariodocumento_detalle
-- ----------------------------

-- ----------------------------
-- Table structure for inventariodocumtransfer
-- ----------------------------
DROP TABLE IF EXISTS `inventariodocumtransfer`;
CREATE TABLE `inventariodocumtransfer` (
  `id_doctrans` int(11) NOT NULL,
  `id_almacen` int(11) NOT NULL,
  `id_docingreso` int(11) NOT NULL,
  PRIMARY KEY (`id_doctrans`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of inventariodocumtransfer
-- ----------------------------

-- ----------------------------
-- Table structure for kardex
-- ----------------------------
DROP TABLE IF EXISTS `kardex`;
CREATE TABLE `kardex` (
  `id_kardex` int(11) NOT NULL AUTO_INCREMENT,
  `id_producto` int(11) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `documento` varchar(255) DEFAULT NULL,
  `detalle` varchar(255) DEFAULT NULL,
  `tipomovimiento` int(11) DEFAULT NULL,
  `cantidad` decimal(11,2) DEFAULT NULL,
  `valorunitario` decimal(15,6) DEFAULT NULL,
  `costototal` decimal(11,2) DEFAULT NULL,
  `saldocantidad` decimal(11,2) DEFAULT NULL,
  `saldovalorunitario` decimal(15,4) DEFAULT NULL,
  `saldocostototal` decimal(11,2) DEFAULT NULL,
  `idunidadstock` int(11) DEFAULT NULL,
  `idusuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_kardex`)
) ENGINE=InnoDB AUTO_INCREMENT=2968 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kardex
-- ----------------------------

-- ----------------------------
-- Table structure for mesa
-- ----------------------------
DROP TABLE IF EXISTS `mesa`;
CREATE TABLE `mesa` (
  `id_mesa` int(11) NOT NULL AUTO_INCREMENT,
  `nom_mesa` varchar(255) NOT NULL,
  `id_area` int(11) DEFAULT NULL,
  `capacidad` varchar(255) DEFAULT NULL,
  `id_comanda` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_mesa`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mesa
-- ----------------------------

-- ----------------------------
-- Table structure for mesapedidoencab
-- ----------------------------
DROP TABLE IF EXISTS `mesapedidoencab`;
CREATE TABLE `mesapedidoencab` (
  `idmesa` int(11) DEFAULT NULL,
  `ocupada` int(11) DEFAULT NULL,
  `cliente` varchar(200) DEFAULT NULL,
  `direccion` varchar(60) DEFAULT NULL,
  `telefono` varchar(100) DEFAULT NULL,
  `numidentificacion` varchar(20) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `mesero` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mesapedidoencab
-- ----------------------------

-- ----------------------------
-- Table structure for mesapedidoproducto
-- ----------------------------
DROP TABLE IF EXISTS `mesapedidoproducto`;
CREATE TABLE `mesapedidoproducto` (
  `idmesa` int(11) DEFAULT NULL,
  `idproducto` varchar(14) DEFAULT NULL,
  `cantidad` decimal(19,0) DEFAULT NULL,
  `precio` decimal(19,0) DEFAULT NULL,
  `entregado` varchar(1) DEFAULT NULL,
  `nota` varchar(200) DEFAULT NULL,
  `variante` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mesapedidoproducto
-- ----------------------------

-- ----------------------------
-- Table structure for mesa_limpia
-- ----------------------------
DROP TABLE IF EXISTS `mesa_limpia`;
CREATE TABLE `mesa_limpia` (
  `id_mesa` int(11) DEFAULT NULL,
  `observacion` text,
  `fecha` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mesa_limpia
-- ----------------------------

-- ----------------------------
-- Table structure for mesero
-- ----------------------------
DROP TABLE IF EXISTS `mesero`;
CREATE TABLE `mesero` (
  `id_mesero` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_ident_mesero` varchar(100) NOT NULL,
  `ced_mesero` varchar(255) NOT NULL,
  `nom_mesero` varchar(255) NOT NULL,
  `telf_mesero` varchar(255) DEFAULT NULL,
  `correo_mesero` varchar(255) DEFAULT NULL,
  `direccion_mesero` varchar(255) DEFAULT NULL,
  `foto_mesero` longblob,
  `estatus_mesero` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`id_mesero`),
  UNIQUE KEY `ced_mesero_UNIQUE` (`ced_mesero`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mesero
-- ----------------------------

-- ----------------------------
-- Table structure for modulos
-- ----------------------------
DROP TABLE IF EXISTS `modulos`;
CREATE TABLE `modulos` (
  `id_modulo` int(11) NOT NULL AUTO_INCREMENT,
  `desc_modulo` varchar(255) NOT NULL,
  PRIMARY KEY (`id_modulo`,`desc_modulo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of modulos
-- ----------------------------
INSERT INTO `modulos` VALUES ('1', 'configurar');
INSERT INTO `modulos` VALUES ('2', 'inventario');
INSERT INTO `modulos` VALUES ('3', 'transacciones');
INSERT INTO `modulos` VALUES ('4', 'contabilidad');
INSERT INTO `modulos` VALUES ('5', 'reportes');

-- ----------------------------
-- Table structure for modulos_detalles
-- ----------------------------
DROP TABLE IF EXISTS `modulos_detalles`;
CREATE TABLE `modulos_detalles` (
  `id_mod_det` int(11) NOT NULL AUTO_INCREMENT,
  `id_modulo` int(11) NOT NULL,
  `desc_mod_det` varchar(255) NOT NULL,
  `est_mod_det` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_mod_det`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of modulos_detalles
-- ----------------------------
INSERT INTO `modulos_detalles` VALUES ('1', '2', 'Categorias', '1');
INSERT INTO `modulos_detalles` VALUES ('2', '2', 'Unidades Medida', '1');
INSERT INTO `modulos_detalles` VALUES ('3', '2', 'Precios', '1');
INSERT INTO `modulos_detalles` VALUES ('4', '2', 'Almacenes', '0');
INSERT INTO `modulos_detalles` VALUES ('5', '2', 'Sucursales', '0');
INSERT INTO `modulos_detalles` VALUES ('6', '2', 'Productos', '0');
INSERT INTO `modulos_detalles` VALUES ('7', '2', 'Clientes', '0');
INSERT INTO `modulos_detalles` VALUES ('8', '2', 'Proveedores', '0');

-- ----------------------------
-- Table structure for notacredito
-- ----------------------------
DROP TABLE IF EXISTS `notacredito`;
CREATE TABLE `notacredito` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_sucursal` int(11) DEFAULT NULL,
  `id_almacen` int(11) DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_usu` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `id_puntoemision` int(11) DEFAULT NULL,
  `nro_documento` varchar(255) DEFAULT NULL,
  `tipodocmodificado` int(11) NOT NULL,
  `id_docmodificado` int(11) DEFAULT NULL,
  `nro_docmodificado` varchar(255) DEFAULT NULL,
  `fecha_docmodificado` date DEFAULT NULL,
  `motivo` varchar(255) DEFAULT NULL,
  `subtotalnoiva` decimal(11,2) DEFAULT NULL,
  `subtotaliva` decimal(11,2) DEFAULT NULL,
  `descuento` decimal(11,2) DEFAULT NULL,
  `descsubtotalnoiva` decimal(11,2) DEFAULT NULL,
  `descsubtotaliva` decimal(11,2) DEFAULT NULL,
  `montoiva` decimal(11,2) DEFAULT NULL,
  `total` decimal(11,2) DEFAULT NULL,
  `estatus` int(11) DEFAULT NULL,
  `fecharegistro` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notacredito
-- ----------------------------

-- ----------------------------
-- Table structure for notacreditoinfoestadosri
-- ----------------------------
DROP TABLE IF EXISTS `notacreditoinfoestadosri`;
CREATE TABLE `notacreditoinfoestadosri` (
  `idnotacredito` int(11) DEFAULT NULL,
  `secuencial` varchar(100) DEFAULT NULL,
  `enviadosri` int(11) DEFAULT NULL,
  `autorizado` int(11) DEFAULT NULL,
  `rechazado` int(11) DEFAULT NULL,
  `claveacesso` varchar(100) DEFAULT NULL,
  `numeroautorizacion` varchar(100) DEFAULT NULL,
  `fechaautorizacion` varchar(100) DEFAULT NULL,
  `enviadoemail` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notacreditoinfoestadosri
-- ----------------------------

-- ----------------------------
-- Table structure for notacredito_detalle
-- ----------------------------
DROP TABLE IF EXISTS `notacredito_detalle`;
CREATE TABLE `notacredito_detalle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_notacredito` int(11) DEFAULT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `cantidad` decimal(11,2) DEFAULT NULL,
  `precio` decimal(11,4) DEFAULT NULL,
  `gravaiva` tinyint(1) DEFAULT NULL,
  `subtotal` decimal(11,2) DEFAULT NULL,
  `descuento` decimal(11,2) DEFAULT NULL,
  `montoiva` decimal(11,4) DEFAULT NULL,
  `descsubtotal` decimal(11,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notacredito_detalle
-- ----------------------------

-- ----------------------------
-- Table structure for notacredito_detalle_tmp
-- ----------------------------
DROP TABLE IF EXISTS `notacredito_detalle_tmp`;
CREATE TABLE `notacredito_detalle_tmp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_notacredito` int(11) DEFAULT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `cantidad` decimal(11,2) DEFAULT NULL,
  `precio` decimal(11,4) DEFAULT NULL,
  `gravaiva` tinyint(1) DEFAULT NULL,
  `subtotal` decimal(11,2) DEFAULT NULL,
  `descuento` decimal(11,2) DEFAULT NULL,
  `montoiva` decimal(11,4) DEFAULT NULL,
  `descsubtotal` decimal(11,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notacredito_detalle_tmp
-- ----------------------------

-- ----------------------------
-- Table structure for notacredito_impuesto
-- ----------------------------
DROP TABLE IF EXISTS `notacredito_impuesto`;
CREATE TABLE `notacredito_impuesto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_detallenotacredito` int(11) DEFAULT NULL,
  `codigotipoimpuesto` varchar(6) DEFAULT NULL,
  `codigoporcentaje` varchar(6) DEFAULT NULL,
  `tarifa` decimal(11,2) DEFAULT NULL,
  `baseimponible` decimal(11,2) DEFAULT NULL,
  `valor` decimal(11,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notacredito_impuesto
-- ----------------------------

-- ----------------------------
-- Table structure for notacredito_tmp
-- ----------------------------
DROP TABLE IF EXISTS `notacredito_tmp`;
CREATE TABLE `notacredito_tmp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_sucursal` int(11) DEFAULT NULL,
  `id_almacen` int(11) DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_usu` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `id_puntoemision` int(11) DEFAULT NULL,
  `nro_documento` varchar(255) DEFAULT NULL,
  `tipodocmodificado` int(11) NOT NULL,
  `id_docmodificado` int(11) DEFAULT NULL,
  `nro_docmodificado` varchar(255) DEFAULT NULL,
  `fecha_docmodificado` date DEFAULT NULL,
  `motivo` varchar(255) DEFAULT NULL,
  `subtotalnoiva` decimal(11,2) DEFAULT NULL,
  `subtotaliva` decimal(11,2) DEFAULT NULL,
  `descuento` decimal(11,2) DEFAULT NULL,
  `descsubtotalnoiva` decimal(11,2) DEFAULT NULL,
  `descsubtotaliva` decimal(11,2) DEFAULT NULL,
  `montoiva` decimal(11,2) DEFAULT NULL,
  `total` decimal(11,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notacredito_tmp
-- ----------------------------

-- ----------------------------
-- Table structure for parametros
-- ----------------------------
DROP TABLE IF EXISTS `parametros`;
CREATE TABLE `parametros` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `valor` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of parametros
-- ----------------------------
INSERT INTO `parametros` VALUES ('1', 'IVA 12%', '0.12');
INSERT INTO `parametros` VALUES ('2', 'Impresora Precuenta', '1');
INSERT INTO `parametros` VALUES ('3', 'Impresora Factura', '1');
INSERT INTO `parametros` VALUES ('4', 'Codigo Establecimiento', '002');
INSERT INTO `parametros` VALUES ('5', 'Codigo Punto Emision', '001');
INSERT INTO `parametros` VALUES ('6', 'Pedido Mostrar Vista', '1');
INSERT INTO `parametros` VALUES ('7', 'Pedido Mostrar Cliente', '0');
INSERT INTO `parametros` VALUES ('8', 'Pedido Mostrar Mesero', '1');
INSERT INTO `parametros` VALUES ('9', 'Habilita Tipo Precio', '1');
INSERT INTO `parametros` VALUES ('10', 'Habilita Facturar Sin Existencia', '0');
INSERT INTO `parametros` VALUES ('11', 'Facturacion PDF', '1');
INSERT INTO `parametros` VALUES ('12', 'Limite Productos Factura', '0');
INSERT INTO `parametros` VALUES ('13', 'Impuesto Adicional', '0');
INSERT INTO `parametros` VALUES ('14', 'Habilita Numero de Serie', '0');
INSERT INTO `parametros` VALUES ('17', 'Impuesto Adicional', '0');
INSERT INTO `parametros` VALUES ('18', 'Imprimir Comanda al Facturar', '0');
INSERT INTO `parametros` VALUES ('19', 'Habilita Numero Orden', '0');
INSERT INTO `parametros` VALUES ('20', 'Factura Precio con IVA', '0');
INSERT INTO `parametros` VALUES ('21', 'Habilita Asociacion Automatica Cliente Vendedor', '0');
INSERT INTO `parametros` VALUES ('22', 'Cuota Minima Venta Asociacion Automatica Cliente Vendedor', '0');
INSERT INTO `parametros` VALUES ('23', 'Habilitar Codigo Cliente Venta', '0');
INSERT INTO `parametros` VALUES ('24', 'Habilitar Descuento por Producto', '0');
INSERT INTO `parametros` VALUES ('25', 'Habilitar Impresion Local', '0');
INSERT INTO `parametros` VALUES ('26', 'Habilita Variante Producto', '0');
INSERT INTO `parametros` VALUES ('27', 'Habilita Ubicacion Detalle Venta', '0');
INSERT INTO `parametros` VALUES ('28', 'Habilita Total IVA Detalle Venta', '0');
INSERT INTO `parametros` VALUES ('29', 'Habilita Impresion Grafica', '0');
INSERT INTO `parametros` VALUES ('30', 'Habilita Impresion Subsidio', '0');
INSERT INTO `parametros` VALUES ('31', 'Habilita Promo Pedido', '0');
INSERT INTO `parametros` VALUES ('32', 'Cantidad Decimales Precio Venta', '2');
INSERT INTO `parametros` VALUES ('33', 'Cantidad Decimales Cantidad Venta', '0');

-- ----------------------------
-- Table structure for pedido
-- ----------------------------
DROP TABLE IF EXISTS `pedido`;
CREATE TABLE `pedido` (
  `id_mesa` int(11) DEFAULT NULL,
  `est_mesa` varchar(255) DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_mesero` int(11) DEFAULT NULL,
  `descuento` decimal(11,2) DEFAULT NULL,
  `nro_orden` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pedido
-- ----------------------------

-- ----------------------------
-- Table structure for pedido_detalle
-- ----------------------------
DROP TABLE IF EXISTS `pedido_detalle`;
CREATE TABLE `pedido_detalle` (
  `id_ped` int(11) NOT NULL AUTO_INCREMENT,
  `id_mesa` int(11) DEFAULT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `cantidad` decimal(10,0) DEFAULT NULL,
  `precio` decimal(10,4) DEFAULT NULL,
  `estatus` varchar(255) DEFAULT NULL,
  `nota` longtext,
  `variante` tinyint(4) DEFAULT NULL,
  `id_almacen` int(11) DEFAULT NULL,
  `est_comanda` tinyint(1) DEFAULT '0',
  `promo` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id_ped`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pedido_detalle
-- ----------------------------

-- ----------------------------
-- Table structure for pedido_detalle_variante
-- ----------------------------
DROP TABLE IF EXISTS `pedido_detalle_variante`;
CREATE TABLE `pedido_detalle_variante` (
  `id_ped` int(11) DEFAULT NULL,
  `id_mesa` int(11) DEFAULT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `cantidad` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pedido_detalle_variante
-- ----------------------------

-- ----------------------------
-- Table structure for pedido_formapago
-- ----------------------------
DROP TABLE IF EXISTS `pedido_formapago`;
CREATE TABLE `pedido_formapago` (
  `id_mesa` int(11) DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_formapago` int(11) DEFAULT NULL,
  `nro_orden` int(11) DEFAULT NULL,
  `nro_transf` int(11) DEFAULT NULL,
  `banco_emi` varchar(255) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `tipo_tarcuenta` varchar(255) DEFAULT NULL,
  `titular_emi` varchar(255) DEFAULT NULL,
  `banco_rec` varchar(255) DEFAULT NULL,
  `titular_rec` varchar(255) DEFAULT NULL,
  `monto` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pedido_formapago
-- ----------------------------

-- ----------------------------
-- Table structure for perfil
-- ----------------------------
DROP TABLE IF EXISTS `perfil`;
CREATE TABLE `perfil` (
  `id_perfil` int(11) NOT NULL,
  `nom_perfil` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_perfil`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of perfil
-- ----------------------------
INSERT INTO `perfil` VALUES ('1', 'Administrador');
INSERT INTO `perfil` VALUES ('2', 'Vendedor');
INSERT INTO `perfil` VALUES ('3', 'Cajero');

-- ----------------------------
-- Table structure for permiso_almacen
-- ----------------------------
DROP TABLE IF EXISTS `permiso_almacen`;
CREATE TABLE `permiso_almacen` (
  `id_usuario` int(11) NOT NULL,
  `id_almacen` int(11) NOT NULL,
  PRIMARY KEY (`id_usuario`,`id_almacen`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of permiso_almacen
-- ----------------------------
INSERT INTO `permiso_almacen` VALUES ('1', '1');

-- ----------------------------
-- Table structure for permiso_cajaefectivo
-- ----------------------------
DROP TABLE IF EXISTS `permiso_cajaefectivo`;
CREATE TABLE `permiso_cajaefectivo` (
  `id_usuario` int(11) NOT NULL,
  `id_caja` int(11) NOT NULL,
  PRIMARY KEY (`id_usuario`,`id_caja`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of permiso_cajaefectivo
-- ----------------------------
INSERT INTO `permiso_cajaefectivo` VALUES ('1', '1');

-- ----------------------------
-- Table structure for permiso_sucursal
-- ----------------------------
DROP TABLE IF EXISTS `permiso_sucursal`;
CREATE TABLE `permiso_sucursal` (
  `id_usuario` int(11) NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  PRIMARY KEY (`id_usuario`,`id_sucursal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of permiso_sucursal
-- ----------------------------
INSERT INTO `permiso_sucursal` VALUES ('1', '1');

-- ----------------------------
-- Table structure for porcentaje_retencion_iva
-- ----------------------------
DROP TABLE IF EXISTS `porcentaje_retencion_iva`;
CREATE TABLE `porcentaje_retencion_iva` (
  `id_porc_ret_iva` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(255) DEFAULT NULL,
  `porcentaje` decimal(11,2) DEFAULT NULL,
  `idcategoriacompra` int(11) DEFAULT NULL,
  `idcategoriaventa` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_porc_ret_iva`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of porcentaje_retencion_iva
-- ----------------------------
INSERT INTO `porcentaje_retencion_iva` VALUES ('1', '9', '10.00', '26', '20');
INSERT INTO `porcentaje_retencion_iva` VALUES ('2', '10', '20.00', '27', '21');
INSERT INTO `porcentaje_retencion_iva` VALUES ('3', '1', '30.00', '28', '22');
INSERT INTO `porcentaje_retencion_iva` VALUES ('4', '11', '50.00', '29', '23');
INSERT INTO `porcentaje_retencion_iva` VALUES ('5', '2', '70.00', '30', '24');
INSERT INTO `porcentaje_retencion_iva` VALUES ('6', '3', '100.00', '31', '25');
INSERT INTO `porcentaje_retencion_iva` VALUES ('7', '7', '0.00', null, null);

-- ----------------------------
-- Table structure for precios
-- ----------------------------
DROP TABLE IF EXISTS `precios`;
CREATE TABLE `precios` (
  `id_precios` int(11) NOT NULL AUTO_INCREMENT,
  `desc_precios` varchar(255) NOT NULL,
  `esta_precios` varchar(1) NOT NULL,
  `color` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id_precios`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of precios
-- ----------------------------

-- ----------------------------
-- Table structure for prepro
-- ----------------------------
DROP TABLE IF EXISTS `prepro`;
CREATE TABLE `prepro` (
  `id_prepro` int(11) NOT NULL AUTO_INCREMENT,
  `pro_id` int(11) NOT NULL,
  `id_precios` int(11) NOT NULL,
  `monto` decimal(15,6) DEFAULT NULL,
  PRIMARY KEY (`id_prepro`),
  KEY `pro_id` (`pro_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4194 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of prepro
-- ----------------------------

-- ----------------------------
-- Table structure for producto
-- ----------------------------
DROP TABLE IF EXISTS `producto`;
CREATE TABLE `producto` (
  `pro_id` int(11) NOT NULL AUTO_INCREMENT,
  `pro_codigobarra` varchar(255) DEFAULT NULL,
  `pro_codigoauxiliar` varchar(255) DEFAULT NULL,
  `pro_nombre` varchar(255) NOT NULL,
  `pro_descripcion` varchar(255) DEFAULT NULL,
  `pro_preciocompra` decimal(15,6) DEFAULT NULL,
  `pro_precioventa` decimal(15,6) DEFAULT NULL,
  `pro_maximo` decimal(15,2) DEFAULT NULL,
  `pro_minimo` decimal(15,2) DEFAULT NULL,
  `pro_idcategoria` decimal(3,0) DEFAULT NULL,
  `pro_iddeducible` decimal(3,0) DEFAULT NULL,
  `pro_grabaiva` tinyint(1) DEFAULT '0',
  `pro_esservicio` tinyint(1) DEFAULT '0',
  `pro_estatus` varchar(1) DEFAULT NULL,
  `pro_imagen` longblob,
  `pro_idunidadmedida` int(3) DEFAULT '1',
  `pro_aplicompra` tinyint(1) DEFAULT NULL,
  `pro_apliventa` tinyint(1) DEFAULT NULL,
  `habilitavariante` tinyint(1) DEFAULT NULL,
  `productodescontarventa` int(11) DEFAULT NULL,
  `maxitemvariante` decimal(20,0) DEFAULT NULL,
  `comanda` int(11) DEFAULT NULL,
  `cantidad` decimal(10,0) DEFAULT NULL,
  `idcla` int(11) DEFAULT NULL,
  `preparado` tinyint(1) DEFAULT NULL,
  `ingrediente` tinyint(1) DEFAULT NULL,
  `id_cto_retencion` int(11) DEFAULT NULL,
  `pro_garantia` int(11) DEFAULT NULL,
  `ubicacion` varchar(50) DEFAULT NULL,
  `subsidio` decimal(11,2) DEFAULT NULL,
  `idcategoriacontable` int(11) DEFAULT NULL,
  PRIMARY KEY (`pro_id`,`pro_nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=639 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of producto
-- ----------------------------

-- ----------------------------
-- Table structure for productovariante
-- ----------------------------
DROP TABLE IF EXISTS `productovariante`;
CREATE TABLE `productovariante` (
  `id_variante` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) DEFAULT NULL,
  `id_producto` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_variante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of productovariante
-- ----------------------------

-- ----------------------------
-- Table structure for producto_ingrediente
-- ----------------------------
DROP TABLE IF EXISTS `producto_ingrediente`;
CREATE TABLE `producto_ingrediente` (
  `id_pro` int(11) DEFAULT NULL,
  `id_proing` int(11) DEFAULT NULL,
  `unimed` int(11) DEFAULT NULL,
  `cantidad` decimal(11,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of producto_ingrediente
-- ----------------------------

-- ----------------------------
-- Table structure for producto_serie
-- ----------------------------
DROP TABLE IF EXISTS `producto_serie`;
CREATE TABLE `producto_serie` (
  `id_serie` int(11) NOT NULL AUTO_INCREMENT,
  `id_producto` int(11) NOT NULL,
  `numeroserie` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `fechaingreso` datetime DEFAULT CURRENT_TIMESTAMP,
  `id_detallecompra` int(11) DEFAULT NULL,
  `id_detalleventa` int(11) DEFAULT NULL,
  `id_almacen` int(11) DEFAULT NULL,
  `id_estado` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_serie`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of producto_serie
-- ----------------------------

-- ----------------------------
-- Table structure for producto_serie_tmp
-- ----------------------------
DROP TABLE IF EXISTS `producto_serie_tmp`;
CREATE TABLE `producto_serie_tmp` (
  `id_serie` int(11) NOT NULL AUTO_INCREMENT,
  `id_producto` int(11) NOT NULL,
  `numeroserie` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `fechaingreso` datetime DEFAULT CURRENT_TIMESTAMP,
  `id_detallecompra` int(11) DEFAULT NULL,
  `id_detalleventa` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_serie`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of producto_serie_tmp
-- ----------------------------

-- ----------------------------
-- Table structure for producto_ventaserie_tmp
-- ----------------------------
DROP TABLE IF EXISTS `producto_ventaserie_tmp`;
CREATE TABLE `producto_ventaserie_tmp` (
  `id_serie` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `numeroserie` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `fechaingreso` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_detalleventa` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_serie`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of producto_ventaserie_tmp
-- ----------------------------

-- ----------------------------
-- Table structure for proforma
-- ----------------------------
DROP TABLE IF EXISTS `proforma`;
CREATE TABLE `proforma` (
  `id_proforma` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `nro_proforma` varchar(255) DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_vendedor` int(11) DEFAULT NULL,
  `id_puntoventa` int(11) DEFAULT NULL,
  `valiva` decimal(11,2) DEFAULT NULL,
  `subconiva` decimal(11,2) DEFAULT NULL,
  `subsiniva` decimal(11,2) DEFAULT NULL,
  `desc_monto` decimal(11,2) DEFAULT NULL,
  `descsubconiva` decimal(11,2) DEFAULT NULL,
  `descsubsiniva` decimal(11,2) DEFAULT NULL,
  `montoiva` decimal(11,2) DEFAULT NULL,
  `montototal` decimal(11,2) DEFAULT NULL,
  `fecharegistro` datetime DEFAULT CURRENT_TIMESTAMP,
  `idusu` int(11) DEFAULT NULL,
  `id_factura` int(11) DEFAULT NULL,
  `observaciones` text,
  `id_sucursal` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_proforma`)
) ENGINE=InnoDB AUTO_INCREMENT=239 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of proforma
-- ----------------------------

-- ----------------------------
-- Table structure for proforma_detalle
-- ----------------------------
DROP TABLE IF EXISTS `proforma_detalle`;
CREATE TABLE `proforma_detalle` (
  `id_detalle` int(11) NOT NULL AUTO_INCREMENT,
  `id_proforma` int(11) DEFAULT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `cantidad` decimal(11,4) DEFAULT NULL,
  `precio` decimal(15,6) DEFAULT NULL,
  `subtotal` decimal(11,4) DEFAULT NULL,
  `iva` tinyint(1) DEFAULT NULL,
  `montoiva` decimal(11,2) DEFAULT NULL,
  `descmonto` decimal(11,2) DEFAULT NULL,
  `descsubtotal` decimal(11,4) DEFAULT NULL,
  `id_almacen` int(11) DEFAULT NULL,
  `tipprecio` int(11) DEFAULT NULL,
  `descripcion` text,
  `porcdesc` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`id_detalle`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of proforma_detalle
-- ----------------------------

-- ----------------------------
-- Table structure for proforma_detalle_tmp
-- ----------------------------
DROP TABLE IF EXISTS `proforma_detalle_tmp`;
CREATE TABLE `proforma_detalle_tmp` (
  `id_detalle` int(11) NOT NULL AUTO_INCREMENT,
  `id_proforma` int(11) DEFAULT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `cantidad` decimal(11,4) DEFAULT NULL,
  `precio` decimal(15,6) DEFAULT NULL,
  `subtotal` decimal(11,4) DEFAULT NULL,
  `iva` tinyint(1) DEFAULT NULL,
  `montoiva` decimal(11,2) DEFAULT NULL,
  `descmonto` decimal(11,2) DEFAULT NULL,
  `descsubtotal` decimal(11,4) DEFAULT NULL,
  `id_almacen` int(11) DEFAULT NULL,
  `tipprecio` int(11) DEFAULT NULL,
  `descripcion` text,
  `porcdesc` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`id_detalle`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of proforma_detalle_tmp
-- ----------------------------

-- ----------------------------
-- Table structure for proforma_tmp
-- ----------------------------
DROP TABLE IF EXISTS `proforma_tmp`;
CREATE TABLE `proforma_tmp` (
  `id_proforma` int(11) NOT NULL AUTO_INCREMENT,
  `id_proftmp` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `nro_proforma` varchar(255) DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_vendedor` int(11) DEFAULT NULL,
  `id_puntoventa` int(11) DEFAULT NULL,
  `valiva` decimal(11,2) DEFAULT NULL,
  `subconiva` decimal(11,2) DEFAULT NULL,
  `subsiniva` decimal(11,2) DEFAULT NULL,
  `desc_monto` decimal(11,2) DEFAULT NULL,
  `descsubconiva` decimal(11,2) DEFAULT NULL,
  `descsubsiniva` decimal(11,2) DEFAULT NULL,
  `montoiva` decimal(11,2) DEFAULT NULL,
  `montototal` decimal(11,2) DEFAULT NULL,
  `fecharegistro` datetime DEFAULT CURRENT_TIMESTAMP,
  `idusu` int(11) DEFAULT NULL,
  `id_factura` int(11) DEFAULT NULL,
  `observaciones` text,
  `id_sucursal` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_proforma`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of proforma_tmp
-- ----------------------------

-- ----------------------------
-- Table structure for proprecios
-- ----------------------------
DROP TABLE IF EXISTS `proprecios`;
CREATE TABLE `proprecios` (
  `id` int(11) NOT NULL,
  `efectivo` decimal(11,4) DEFAULT NULL,
  `mayorista` decimal(11,4) DEFAULT NULL,
  `facebook` decimal(11,4) DEFAULT NULL,
  `mercado` decimal(11,4) DEFAULT NULL,
  `olx` decimal(11,4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of proprecios
-- ----------------------------

-- ----------------------------
-- Table structure for proveedor
-- ----------------------------
DROP TABLE IF EXISTS `proveedor`;
CREATE TABLE `proveedor` (
  `id_proveedor` int(11) NOT NULL AUTO_INCREMENT,
  `nom_proveedor` varchar(255) NOT NULL,
  `tip_ide_proveedor` varchar(3) NOT NULL,
  `nro_ide_proveedor` varchar(255) NOT NULL,
  `razon_social` varchar(255) DEFAULT NULL,
  `telf_proveedor` varchar(255) DEFAULT NULL,
  `correo_proveedor` varchar(255) DEFAULT NULL,
  `ciudad_proveedor` varchar(255) DEFAULT NULL,
  `direccion_proveedor` longtext,
  `relacionada` tinyint(4) DEFAULT NULL,
  `idcategoriacontable` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_proveedor`),
  UNIQUE KEY `nom_proveedor_UNIQUE` (`nom_proveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of proveedor
-- ----------------------------
INSERT INTO `proveedor` VALUES ('1', 'SIN PROVEEDOR', 'R', '9999999999999', 'SIN PROVEEDOR', '', '', '', 'QUITO', '0', '2');

-- ----------------------------
-- Table structure for punto_emision
-- ----------------------------
DROP TABLE IF EXISTS `punto_emision`;
CREATE TABLE `punto_emision` (
  `id_puntoemision` int(11) NOT NULL AUTO_INCREMENT,
  `id_sucursal` int(11) DEFAULT NULL,
  `cod_establecimiento` varchar(3) DEFAULT NULL,
  `cod_puntoemision` varchar(3) DEFAULT NULL,
  `consecutivo_factura` int(11) DEFAULT NULL,
  `consecutivo_notaventa` int(11) DEFAULT NULL,
  `consecutivo_comprobpago` int(11) DEFAULT NULL,
  `activo` int(11) DEFAULT NULL,
  `consecutivo_notacredito` int(11) DEFAULT NULL,
  `consecutivo_retencioncompra` int(11) DEFAULT NULL,
  `consecutivo_guiaremision` int(11) DEFAULT NULL,
  `ambiente_factura` int(11) DEFAULT NULL,
  `ambiente_retencion` int(11) DEFAULT NULL,
  `ambiente_notacredito` int(11) DEFAULT NULL,
  `ambiente_guia` int(11) DEFAULT NULL,
  `enviosriguardar_factura` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id_puntoemision`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of punto_emision
-- ----------------------------
INSERT INTO `punto_emision` VALUES (1, 1, '001', '001', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0);


-- ----------------------------
-- Table structure for retenciongastoinfoestadosri
-- ----------------------------
DROP TABLE IF EXISTS `retenciongastoinfoestadosri`;
CREATE TABLE `retenciongastoinfoestadosri` (
  `idretencion` int(11) DEFAULT NULL,
  `secuencial` varchar(100) DEFAULT NULL,
  `enviadosri` int(11) DEFAULT NULL,
  `autorizado` int(11) DEFAULT NULL,
  `rechazado` int(11) DEFAULT NULL,
  `claveacesso` varchar(100) DEFAULT NULL,
  `numeroautorizacion` varchar(100) DEFAULT NULL,
  `fechaautorizacion` varchar(100) DEFAULT NULL,
  `enviadoemail` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of retenciongastoinfoestadosri
-- ----------------------------

-- ----------------------------
-- Table structure for retencioninfoestadosri
-- ----------------------------
DROP TABLE IF EXISTS `retencioninfoestadosri`;
CREATE TABLE `retencioninfoestadosri` (
  `idretencion` int(11) DEFAULT NULL,
  `secuencial` varchar(100) DEFAULT NULL,
  `enviadosri` int(11) DEFAULT NULL,
  `autorizado` int(11) DEFAULT NULL,
  `rechazado` int(11) DEFAULT NULL,
  `claveacesso` varchar(100) DEFAULT NULL,
  `numeroautorizacion` varchar(100) DEFAULT NULL,
  `fechaautorizacion` varchar(100) DEFAULT NULL,
  `enviadoemail` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of retencioninfoestadosri
-- ----------------------------

-- ----------------------------
-- Table structure for serie_productokardex
-- ----------------------------
DROP TABLE IF EXISTS `serie_productokardex`;
CREATE TABLE `serie_productokardex` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idserie` int(11) NOT NULL,
  `idalmacen` int(11) NOT NULL,
  `tipomovimiento` tinyint(2) NOT NULL,
  `iddocumento` int(11) NOT NULL,
  `nrodocumento` varchar(25) DEFAULT NULL,
  `fechamovimiento` datetime DEFAULT CURRENT_TIMESTAMP,
  `observaciones` text,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of serie_productokardex
-- ----------------------------

-- ----------------------------
-- Table structure for serie_tipomovimiento
-- ----------------------------
DROP TABLE IF EXISTS `serie_tipomovimiento`;
CREATE TABLE `serie_tipomovimiento` (
  `id` tinyint(2) NOT NULL,
  `movimiento` varchar(25) DEFAULT NULL,
  `estado` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of serie_tipomovimiento
-- ----------------------------
INSERT INTO `serie_tipomovimiento` VALUES ('1', 'INGRESO', 'INGRESADO');
INSERT INTO `serie_tipomovimiento` VALUES ('2', 'VENTA', 'VENDIDO');
INSERT INTO `serie_tipomovimiento` VALUES ('3', 'DEVOLUCION', 'DEVUELTO');
INSERT INTO `serie_tipomovimiento` VALUES ('4', 'REPOSICION', 'REPOSICION');
INSERT INTO `serie_tipomovimiento` VALUES ('5', 'SERVICIO', 'SERVICIO');
INSERT INTO `serie_tipomovimiento` VALUES ('6', 'REPARACION', 'REPARADO/HABILITADO');
INSERT INTO `serie_tipomovimiento` VALUES ('7', 'BAJA', 'BAJA');

-- ----------------------------
-- Table structure for servicio
-- ----------------------------
DROP TABLE IF EXISTS `servicio`;
CREATE TABLE `servicio` (
  `id_servicio` int(11) NOT NULL AUTO_INCREMENT,
  `id_sucursal` int(11) NOT NULL,
  `fecha_emision` datetime DEFAULT CURRENT_TIMESTAMP,
  `numero_orden` int(11) DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `costo_estimado` decimal(11,2) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `id_estado` int(11) DEFAULT NULL,
  `id_venta` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_servicio`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of servicio
-- ----------------------------

-- ----------------------------
-- Table structure for servicio_abono
-- ----------------------------
DROP TABLE IF EXISTS `servicio_abono`;
CREATE TABLE `servicio_abono` (
  `id_abono` int(11) NOT NULL AUTO_INCREMENT,
  `id_servicio` int(11) NOT NULL,
  `id_docpago` int(11) NOT NULL,
  PRIMARY KEY (`id_abono`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of servicio_abono
-- ----------------------------

-- ----------------------------
-- Table structure for servicio_abono_tmp
-- ----------------------------
DROP TABLE IF EXISTS `servicio_abono_tmp`;
CREATE TABLE `servicio_abono_tmp` (
  `id_abono` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) NOT NULL,
  `id_formapago` tinyint(2) NOT NULL,
  `monto` decimal(11,2) NOT NULL,
  `fecha_emision` datetime DEFAULT NULL,
  `fecha_registro` datetime DEFAULT CURRENT_TIMESTAMP,
  `nro_comprobante` varchar(255) DEFAULT NULL,
  `id_banco` int(11) DEFAULT NULL,
  `fecha_cobro` datetime DEFAULT NULL,
  `numerocuenta` varchar(255) DEFAULT NULL,
  `numerodocumento` varchar(255) DEFAULT NULL,
  `descripciondocumento` varchar(255) DEFAULT NULL,
  `id_tarjeta` int(11) DEFAULT NULL,
  `numerotarjeta` varchar(255) DEFAULT NULL,
  `id_cajapago` int(11) DEFAULT NULL,
  `id_docpago` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_abono`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of servicio_abono_tmp
-- ----------------------------

-- ----------------------------
-- Table structure for servicio_config_detalle
-- ----------------------------
DROP TABLE IF EXISTS `servicio_config_detalle`;
CREATE TABLE `servicio_config_detalle` (
  `id_config` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_configdetalle` varchar(255) DEFAULT NULL,
  `activo` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_config`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of servicio_config_detalle
-- ----------------------------

-- ----------------------------
-- Table structure for servicio_config_general
-- ----------------------------
DROP TABLE IF EXISTS `servicio_config_general`;
CREATE TABLE `servicio_config_general` (
  `habilita_servicio` tinyint(1) NOT NULL,
  `habilita_serie` tinyint(1) NOT NULL,
  `habilita_detalle` tinyint(1) NOT NULL,
  `habilita_encargado` tinyint(1) NOT NULL,
  `habilita_productoutilizado` tinyint(1) NOT NULL,
  `producto_servicio_factura` int(11) NOT NULL,
  `habilita_abono` tinyint(1) NOT NULL,
  `habilita_productofactura` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of servicio_config_general
-- ----------------------------
INSERT INTO `servicio_config_general` VALUES ('1', '1', '1', '1', '1', '431', '1', '1');

-- ----------------------------
-- Table structure for servicio_detalle
-- ----------------------------
DROP TABLE IF EXISTS `servicio_detalle`;
CREATE TABLE `servicio_detalle` (
  `id_detalle` int(11) NOT NULL AUTO_INCREMENT,
  `id_servicio` int(11) NOT NULL,
  `id_serie` int(11) NOT NULL,
  `id_tecnico` int(11) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `id_estado` int(11) NOT NULL,
  `fecha_realizado` datetime DEFAULT NULL,
  `trabajo_realizado` varchar(255) DEFAULT NULL,
  `fecha_entregado` datetime DEFAULT NULL,
  PRIMARY KEY (`id_detalle`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of servicio_detalle
-- ----------------------------

-- ----------------------------
-- Table structure for servicio_detalle_tmp
-- ----------------------------
DROP TABLE IF EXISTS `servicio_detalle_tmp`;
CREATE TABLE `servicio_detalle_tmp` (
  `id_detalle` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) NOT NULL,
  `id_serie` int(11) NOT NULL,
  `id_tecnico` int(11) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `id_estado` int(11) NOT NULL,
  `fecha_realizado` datetime DEFAULT NULL,
  `trabajo_realizado` varchar(255) DEFAULT NULL,
  `fecha_entregado` datetime DEFAULT NULL,
  PRIMARY KEY (`id_detalle`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of servicio_detalle_tmp
-- ----------------------------

-- ----------------------------
-- Table structure for servicio_egresoinventario
-- ----------------------------
DROP TABLE IF EXISTS `servicio_egresoinventario`;
CREATE TABLE `servicio_egresoinventario` (
  `id_servicio` int(11) NOT NULL,
  `id_documento` int(11) NOT NULL,
  PRIMARY KEY (`id_servicio`,`id_documento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of servicio_egresoinventario
-- ----------------------------

-- ----------------------------
-- Table structure for servicio_estado
-- ----------------------------
DROP TABLE IF EXISTS `servicio_estado`;
CREATE TABLE `servicio_estado` (
  `id_estado` int(11) NOT NULL,
  `nombre_estado` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_estado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of servicio_estado
-- ----------------------------
INSERT INTO `servicio_estado` VALUES ('1', 'INGRESADO');
INSERT INTO `servicio_estado` VALUES ('2', 'REVISADO');
INSERT INTO `servicio_estado` VALUES ('3', 'REALIZADO');
INSERT INTO `servicio_estado` VALUES ('4', 'ENTREGADO');
INSERT INTO `servicio_estado` VALUES ('5', 'FACTURADO');

-- ----------------------------
-- Table structure for servicio_producto
-- ----------------------------
DROP TABLE IF EXISTS `servicio_producto`;
CREATE TABLE `servicio_producto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_detalle` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` decimal(11,4) NOT NULL,
  `precio` decimal(15,6) DEFAULT NULL,
  `id_almacen` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of servicio_producto
-- ----------------------------

-- ----------------------------
-- Table structure for servicio_producto_tmp
-- ----------------------------
DROP TABLE IF EXISTS `servicio_producto_tmp`;
CREATE TABLE `servicio_producto_tmp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_detalle` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` decimal(11,4) NOT NULL,
  `precio` decimal(15,6) DEFAULT NULL,
  `id_almacen` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of servicio_producto_tmp
-- ----------------------------

-- ----------------------------
-- Table structure for servicio_subdetalle
-- ----------------------------
DROP TABLE IF EXISTS `servicio_subdetalle`;
CREATE TABLE `servicio_subdetalle` (
  `id_subdetalle` int(11) NOT NULL AUTO_INCREMENT,
  `id_detalle` int(11) NOT NULL,
  `id_config` int(11) NOT NULL,
  `valor` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_subdetalle`)
) ENGINE=InnoDB AUTO_INCREMENT=190 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of servicio_subdetalle
-- ----------------------------

-- ----------------------------
-- Table structure for servicio_subdetalle_tmp
-- ----------------------------
DROP TABLE IF EXISTS `servicio_subdetalle_tmp`;
CREATE TABLE `servicio_subdetalle_tmp` (
  `id_subdetalle` int(11) NOT NULL AUTO_INCREMENT,
  `id_detalle` int(11) NOT NULL,
  `id_config` int(11) NOT NULL,
  `valor` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_subdetalle`)
) ENGINE=InnoDB AUTO_INCREMENT=319 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of servicio_subdetalle_tmp
-- ----------------------------

-- ----------------------------
-- Table structure for servicio_tmp
-- ----------------------------
DROP TABLE IF EXISTS `servicio_tmp`;
CREATE TABLE `servicio_tmp` (
  `id_usuario` int(11) NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `fecha_emision` datetime DEFAULT CURRENT_TIMESTAMP,
  `numero_orden` int(11) DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `tipo_ident` varchar(1) DEFAULT NULL,
  `nro_ident` varchar(100) DEFAULT NULL,
  `nom_cliente` varchar(255) DEFAULT NULL,
  `telf_cliente` varchar(255) DEFAULT NULL,
  `dir_cliente` varchar(255) DEFAULT NULL,
  `correo_cliente` varchar(255) DEFAULT NULL,
  `ciu_cliente` varchar(255) DEFAULT NULL,
  `costo_estimado` decimal(11,2) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `id_estado` int(11) DEFAULT NULL,
  `id_servicio` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of servicio_tmp
-- ----------------------------

-- ----------------------------
-- Table structure for socio
-- ----------------------------
DROP TABLE IF EXISTS `socio`;
CREATE TABLE `socio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idventa` varchar(14) DEFAULT NULL,
  `idcliente` varchar(14) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `monto` double DEFAULT NULL,
  `fPago` double DEFAULT NULL,
  `nrorecibo` varchar(20) DEFAULT NULL,
  `formapago` double DEFAULT NULL,
  `idusuario` double DEFAULT NULL,
  `manolo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of socio
-- ----------------------------

-- ----------------------------
-- Table structure for sriguiaremisiondestino
-- ----------------------------
DROP TABLE IF EXISTS `sriguiaremisiondestino`;
CREATE TABLE `sriguiaremisiondestino` (
  `iddestino` int(11) NOT NULL AUTO_INCREMENT,
  `idguia` int(11) DEFAULT NULL,
  `iddestinatario` int(11) DEFAULT NULL,
  `motivo` varchar(255) DEFAULT NULL,
  `docaduanero` varchar(20) DEFAULT NULL,
  `codestabdestino` varchar(3) DEFAULT NULL,
  `ruta` varchar(255) DEFAULT NULL,
  `coddocsustento` varchar(2) DEFAULT NULL,
  `numdocsustento` varchar(15) DEFAULT NULL,
  `numautdocsustento` varchar(49) DEFAULT NULL,
  `fechaemidocsustento` datetime DEFAULT NULL,
  `dirllegada` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`iddestino`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sriguiaremisiondestino
-- ----------------------------

-- ----------------------------
-- Table structure for sriguiaremisionencab
-- ----------------------------
DROP TABLE IF EXISTS `sriguiaremisionencab`;
CREATE TABLE `sriguiaremisionencab` (
  `idguia` int(11) NOT NULL AUTO_INCREMENT,
  `fechaemision` datetime DEFAULT NULL,
  `dirpartida` varchar(200) DEFAULT NULL,
  `idtransportista` int(11) DEFAULT NULL,
  `fechaini` datetime DEFAULT NULL,
  `fechafin` datetime DEFAULT NULL,
  `placa` varchar(100) DEFAULT NULL,
  `secuencial` varchar(9) DEFAULT NULL,
  `id_puntoemision` int(11) DEFAULT NULL,
  PRIMARY KEY (`idguia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sriguiaremisionencab
-- ----------------------------

-- ----------------------------
-- Table structure for sriguiaremisionproducto
-- ----------------------------
DROP TABLE IF EXISTS `sriguiaremisionproducto`;
CREATE TABLE `sriguiaremisionproducto` (
  `iddetalle` int(11) NOT NULL AUTO_INCREMENT,
  `iddestino` int(11) DEFAULT NULL,
  `idproducto` int(11) DEFAULT NULL,
  `codigointerno` varchar(25) DEFAULT NULL,
  `codigoadicional` varchar(25) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `cantidad` double DEFAULT NULL,
  PRIMARY KEY (`iddetalle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sriguiaremisionproducto
-- ----------------------------

-- ----------------------------
-- Table structure for srinotacreditodetalle
-- ----------------------------
DROP TABLE IF EXISTS `srinotacreditodetalle`;
CREATE TABLE `srinotacreditodetalle` (
  `iddetallenotacredito` int(11) NOT NULL AUTO_INCREMENT,
  `idnotacredito` int(11) DEFAULT NULL,
  `codigointerno` varchar(20) DEFAULT NULL,
  `codigoadicional` varchar(20) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `cantidad` double DEFAULT NULL,
  `preciounitario` double DEFAULT NULL,
  `descuento` double DEFAULT NULL,
  `preciototalsinimpuesto` double DEFAULT NULL,
  PRIMARY KEY (`iddetallenotacredito`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of srinotacreditodetalle
-- ----------------------------

-- ----------------------------
-- Table structure for srinotacreditodetalleimpuesto
-- ----------------------------
DROP TABLE IF EXISTS `srinotacreditodetalleimpuesto`;
CREATE TABLE `srinotacreditodetalleimpuesto` (
  `iddetallenotaimpuesto` int(11) NOT NULL AUTO_INCREMENT,
  `iddetallenotacredito` int(11) DEFAULT NULL,
  `codigotipo` varchar(20) DEFAULT NULL,
  `codigoporc` varchar(20) DEFAULT NULL,
  `tarifa` double DEFAULT NULL,
  `baseimponible` double DEFAULT NULL,
  `valor` double DEFAULT NULL,
  PRIMARY KEY (`iddetallenotaimpuesto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of srinotacreditodetalleimpuesto
-- ----------------------------

-- ----------------------------
-- Table structure for srinotacreditoencab
-- ----------------------------
DROP TABLE IF EXISTS `srinotacreditoencab`;
CREATE TABLE `srinotacreditoencab` (
  `idnotacredito` int(11) NOT NULL AUTO_INCREMENT,
  `secuencial` varchar(20) DEFAULT NULL,
  `fechaemision` datetime DEFAULT NULL,
  `idcomprador` int(11) DEFAULT NULL,
  `coddocmodificado` varchar(20) DEFAULT NULL,
  `numdocmodificado` varchar(20) DEFAULT NULL,
  `fechaemisiondocsustento` datetime DEFAULT NULL,
  `totalsinimpuestos` double DEFAULT NULL,
  `valormodificacion` double DEFAULT NULL,
  `motivo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idnotacredito`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of srinotacreditoencab
-- ----------------------------

-- ----------------------------
-- Table structure for sriretencioncompradetalle
-- ----------------------------
DROP TABLE IF EXISTS `sriretencioncompradetalle`;
CREATE TABLE `sriretencioncompradetalle` (
  `iddetalleretencion` int(11) NOT NULL AUTO_INCREMENT,
  `idretencion` int(11) DEFAULT NULL,
  `codigoretiva` varchar(20) DEFAULT NULL,
  `baseretiva` double DEFAULT NULL,
  `porcretiva` double DEFAULT NULL,
  `valorretiva` double DEFAULT NULL,
  `codigoretrenta` varchar(20) DEFAULT NULL,
  `baseretrenta` double DEFAULT NULL,
  `porcretrenta` double DEFAULT NULL,
  `valorretrenta` double DEFAULT NULL,
  PRIMARY KEY (`iddetalleretencion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sriretencioncompradetalle
-- ----------------------------

-- ----------------------------
-- Table structure for sriretencioncompraencab
-- ----------------------------
DROP TABLE IF EXISTS `sriretencioncompraencab`;
CREATE TABLE `sriretencioncompraencab` (
  `idretencion` int(11) NOT NULL AUTO_INCREMENT,
  `secuencial` varchar(20) DEFAULT NULL,
  `fechaemision` datetime DEFAULT NULL,
  `idsujetoretencion` int(11) DEFAULT NULL,
  `coddocsustentoret` varchar(20) DEFAULT NULL,
  `numdocsustento` varchar(20) DEFAULT NULL,
  `fechaemidocsustento` datetime DEFAULT NULL,
  `escompra` int(11) DEFAULT NULL,
  `idfactura` int(11) DEFAULT NULL,
  PRIMARY KEY (`idretencion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sriretencioncompraencab
-- ----------------------------

-- ----------------------------
-- Table structure for sriretenciontipocodigo
-- ----------------------------
DROP TABLE IF EXISTS `sriretenciontipocodigo`;
CREATE TABLE `sriretenciontipocodigo` (
  `codigo` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sriretenciontipocodigo
-- ----------------------------
INSERT INTO `sriretenciontipocodigo` VALUES ('1');
INSERT INTO `sriretenciontipocodigo` VALUES ('2');

-- ----------------------------
-- Table structure for sritransportista
-- ----------------------------
DROP TABLE IF EXISTS `sritransportista`;
CREATE TABLE `sritransportista` (
  `idtransportista` int(11) NOT NULL AUTO_INCREMENT,
  `iddestino` int(11) DEFAULT NULL,
  `razonsocial` varchar(200) DEFAULT NULL,
  `direccion` varchar(200) DEFAULT NULL,
  `telefono` varchar(100) DEFAULT NULL,
  `cedula` varchar(14) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `tipoid` varchar(2) DEFAULT NULL,
  `ciudad` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idtransportista`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sritransportista
-- ----------------------------

-- ----------------------------
-- Table structure for sri_sust_comprobante
-- ----------------------------
DROP TABLE IF EXISTS `sri_sust_comprobante`;
CREATE TABLE `sri_sust_comprobante` (
  `id_sri_sust_comprobante` int(11) NOT NULL AUTO_INCREMENT,
  `cod_sri_sust_comprobante` varchar(255) DEFAULT NULL,
  `desc_sri_sust_comprobante` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_sri_sust_comprobante`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sri_sust_comprobante
-- ----------------------------
INSERT INTO `sri_sust_comprobante` VALUES ('1', '01', 'Crédito Tributario para declaración de IVA');
INSERT INTO `sri_sust_comprobante` VALUES ('2', '02', 'Costo o Gasto para declaración de imp. a la Renta');
INSERT INTO `sri_sust_comprobante` VALUES ('3', '03', 'Activo Fijo - Crédito tributario para declaración de IVA');
INSERT INTO `sri_sust_comprobante` VALUES ('4', '04', 'Activo Fijo - Costo o Gasto para declaración de imp. a la renta');
INSERT INTO `sri_sust_comprobante` VALUES ('5', '05', 'Liquidación de gastos de viaje, hospedaje y alimentación');
INSERT INTO `sri_sust_comprobante` VALUES ('6', '06', 'Inventario - Crédito Tributario para declaración de IVA');
INSERT INTO `sri_sust_comprobante` VALUES ('7', '07', 'Inventario - Costo o Gasto para declaración de imp. a la Renta');
INSERT INTO `sri_sust_comprobante` VALUES ('8', '08', 'Valor pagado para solicitar Reembolso de Gastos');
INSERT INTO `sri_sust_comprobante` VALUES ('9', '09', 'Reembolso por siniestros');
INSERT INTO `sri_sust_comprobante` VALUES ('10', '10', 'Distribución de Dividendos, Beneficios o Utilidades');
INSERT INTO `sri_sust_comprobante` VALUES ('11', '11', 'Convenios de débito o recaudación para IFI\'s');
INSERT INTO `sri_sust_comprobante` VALUES ('12', '12', 'Impuestos y retenciones presuntivos');
INSERT INTO `sri_sust_comprobante` VALUES ('13', '13', 'Valores reconocidos por entidades del sector público a favor de sujetos pasivos');

-- ----------------------------
-- Table structure for sri_tipo_doc
-- ----------------------------
DROP TABLE IF EXISTS `sri_tipo_doc`;
CREATE TABLE `sri_tipo_doc` (
  `id_sri_tipo_doc` int(11) NOT NULL AUTO_INCREMENT,
  `cod_sri_tipo_doc` varchar(255) DEFAULT NULL,
  `desc_sri_tipo_doc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_sri_tipo_doc`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sri_tipo_doc
-- ----------------------------
INSERT INTO `sri_tipo_doc` VALUES ('1', '01', 'Factura');
INSERT INTO `sri_tipo_doc` VALUES ('2', '02', 'Nota de Venta');
INSERT INTO `sri_tipo_doc` VALUES ('3', '03', 'Liquidación de compra de bienes o prestación de servicios');
INSERT INTO `sri_tipo_doc` VALUES ('4', '04', 'Notas de Crédito');
INSERT INTO `sri_tipo_doc` VALUES ('5', '05', 'Notas de Débito');

-- ----------------------------
-- Table structure for sucursal
-- ----------------------------
DROP TABLE IF EXISTS `sucursal`;
CREATE TABLE `sucursal` (
  `id_sucursal` int(11) NOT NULL AUTO_INCREMENT,
  `nom_sucursal` varchar(255) NOT NULL,
  `dir_sucursal` varchar(255) DEFAULT NULL,
  `telf_sucursal` varchar(255) DEFAULT NULL,
  `mail_sucursal` varchar(255) DEFAULT NULL,
  `enca_sucursal` varchar(255) DEFAULT NULL,
  `logo_sucursal` longblob,
  `id_empresa` int(11) DEFAULT NULL,
  `activo` int(11) DEFAULT NULL,
  `consecutivo_ordenservicio` int(11) DEFAULT NULL,
  `consecutivo_retencioncompra` int(11) DEFAULT NULL,
  `consecutivo_notacredito` int(11) DEFAULT NULL,
  `pie1_texto` text,
  `logo_detallepagina` longblob,
  `logo_piepagina` longblob,
  `consecutivo_devoluciongarantia` int(11) DEFAULT NULL,
  `contabilizacion_automatica` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id_sucursal`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sucursal
-- ----------------------------
INSERT INTO `sucursal` VALUES ('1', 'Principal', 'Ecuador', '0', 'sucursal@factuleon.com', 'Encargado Principal', 0x2F396A2F34414151536B5A4A5267414241514141415141424141442F3277434541416B474277305045424151447734514477384E454241514451305045424151447734504652495746685556474255594853676747426F6E47785558495445684A536B724C6934754678387A4F444D734E7967754C69734243676F4B4467304F477841514743386D485234724C5330744B7930724C6930744B7930744C5330744C5330724C5330794C5330744C5373744C5330744B7930724C5330744C5330744C5330724C5334724C5330744B2F2F4141424549414F454134514D4245514143455145444551482F78414162414145414151554241414141414141414141414141414141426745434177514842662F454145305141414544415149444551774A41775144414141414141454141674D454252455349534D47457855785156465356474678636E4F5373624B7A305251694A43557A55344743684A47546F7859794E4456306F63485338454A566F676469672B46445259582F784141624151454141674D42415141414141414141414141414141414151514341775547422F2F4541444D5241414942415155464341414841514542414141414141414241674D454554497A635249544D5646534643464259594768736641464653496A637048524E454A542F396F4144414D424141495241784541507744754B414941674341494167434149416743414941674341494167434149416743414941674341494167434149416743414941674341494167434149416743414941674341494167434149416743414941674341494167434149416743414941674341494167504A742B3232306F5947734D733078496969427576753033453667483831534E744B6C7436493031717970726D32654562627451367447332F61633876483572667571586D56642F5638696F7469314E6E52664D546430764D646F71383058614C577273364C35716A6430764D646F7138304E46725632644638314E335338794F305665614B4731375532644638314E3353387965305665614B47326255326446387A745537756C356A7446586D6A64736E4E48495A5777566362474F6C78517A52453530393278754F4D4659546F713761672B427470576875577A4E636645724E625658504C4A4651525275624337416C7170793452595930327441786E66782B36346E6A753031616B3347676C63754C66432F6B6A70716C434B5471506A3449594E75374F7A2F6E39696D363263342B342F59382F59594E75374F7A2F6E396958577A6E48334837486E37444274335A3266382F7353363263342B342F59382F59594E75374F7A2F6E396958577A6E48334837486E37444274335A3266382F7353363263342B342F59382F59594E75374F7A2F6E396958577A6E48334837486E37466B6C735768534672713647463844694775714B59764F644536526331324D6A33656B346A6A4B3056364E7A7252577A7A562F64715371644F6542392F4A6D7A6246766D4E346870324E6D6D4C5135784A7963625470456B61642B747568624B397132487377563739696A4F7073753563547A39463754325648387A745658746C626E45313779666B4E46725432644638784F3256656352764A2B51305674505A55587A45375A56357847386E3544525730396C52664D54746C586E456279666B4E46725432644638784F3256656352764A2B51305874505A555A334D706A2F4E543275747A694E3550795055734F33444F39304D30656454734746676733736B62736D6E395038417536335A375476487379567A4E734B6D3133506965307252734341494167434167756171516976482B326C474475457663727446667465707A72533771766F654F7862536D5A324251596D5A6F554546784367474E7755677776436B794D465A4B5247323433466B72584D4F71306A575238472F4A6D3244344C7A524D6378567A61474B37564D704F366338634F594265663841777A2F6D6A362F4C505132724E5A376258712B567731364159654E41433941485051417678494451743635314A55673438684B665347456A3877713971794A3650344E6C4C48485567746A7945736B4A4E354969626671344C5733416537457650716233666F696E616332657075414C555679384251437479415849436843417349556732624E656537614C5879725364635A3256304C484B2B724837344D3230332B70453858644C5951424145415145427A5866622F5A57394E7976554D72314F6261737A30504D6A57786C4D324742596B47646F554546784345474E34556B6D7539535361566F655448474E5238486F7A6254784C5645797A4B4F756F6F762B5472584C7A2F414F476638736658355A36473035722B2B4236306231664E42534F52414D5047674433343042575236414F6669397941314C576466533148455464417176617369663841462F4273705934366F68466A6656667673356C35794F5774436E617336577036445173437558674B415841494263674C53454259344B515A4C4E2B3230652F4C315A562B785A736676677A5A5478496E3637356343414941674341674761373777396C62316A6C656F5A58716332315A6E6F65637862436D624C4669515A4D3841303169794C6934544E4F722B71586B584672314B4A4E65525A456D6A61506B78786A556546364D3230385331524C737A62727153503841354F736376506668662F4C44312B576568744F612F7667656C433964413046735438666F5141503735414A48343042575A2B6B674B7666337675514772614C72366162695A65695658746552502B4C2B445A5378783152454C482B724A7673356C35754F5774436E6173365770364C56695679384251436A70576A562F524C6D41325270315575594B6B494378796B46316E6662614C666D367371395973325033775A7370346B543965674C6751424145415145417A572F6550736A6573637231444B39546D32724D39447A6F31735A544D72333449574C494E2B6D70574D44544A475A707042684E694A77575274314D4C2B64717154714F2B3548546F32614B5638754A6D6B6A69646332576E624268596D54524F784E6471586A2B65685971704A4732646D70795843343830687A48756A66395A68754A31447246576F7539586E4B7151634A4E4D746B5777774E4330764A6A6A476F384C305A7470346C716955324536366C5A362F5463764F2F68582F4A44312B576568744F612F766762314F2F456439644530467344385A336B41442B2F7744542B694154503734656841567148365870514658763730656841594B783367387646536445717662502B65702F462F4273705934366F69396B61557643627A4C7A63637461464F315A3074543041735375577A4F4F4A7263626E45426F3179644A5A5169354F35654A4B563575527752786E424549714A52646E6A336D364E7031674E582B62793739477730344C3953765A626A53533469536E6A6B4F446E51703572695979313138636C327075667A5455563744546E483943756673524B6B6E774E4F423549754F496A45527245616134456F334F347174463555454662502B3230572F4E315A5636785A736676677A5A5478496E36394158416743414941674F663572667648325276574F5636686C65707A62586D6568353861324D706971486572426845696F5A474F6B4C69664B4E6157486375306C5161754F366D6D72305A37556177526C74344A6469614E314354774B3254446D63526A7544576B377174556C2B6B3556726164526D4F52627971656661666B787872456547576A4E314C457455534F79356D747032677561434D50455341667246655A2F437173465A494A79586A342B625052576D4C6452334C3763624E5055737550667430396B4630643954366C2F614E47784C6B573039517938392B335332515466552B7066326873533541564C4D503637644D2F3144575562366E314C2B304E6958495456444D49642B33552F7147756D2B7039532F7444596C794C716D705A69373975722F55464F2B7039532F7444596C79456C537A41486674315036676D2B7039532F7444596C794D6339517777794443626557504632454C394971746136744E304A705357462B4B3547644F4574746433696A774C4A2F77444E776D3879344563754F68537457644C55394671784B356A4C7347534E7830673748365659736B6C477246766D5A3033644A48743262676E44424944734E7A7365714362313659756C4C52775135674246375859524931414542347354734A37334453633978473965764C3269536C556B3134742F4A526D37325A43744A694B44376451373833566C5872466D782B2B444E6C50456A6F43394158416743414941674F665A7276764C324E76574F5636686C65707A72566D65686F527259556A4D47336859736770475A4759686A62714E4F70764C544F6D6D576156706C425865426536655536517764322B3872465556346D7964736B31334B3452785949335676534B54643559395A41304C54386D336A576336504339476271574A616B6C6F4B4F4178744C6F6D754A76786D2F5A46664E4B436A734A796A65657471536531334D32685155336D472B38717774333049317555755A654C5070764D4E2F4E5A714E4C6F526A747A356C7773326C38773338316C73557568456279664D726F62532B59622B6162464C6F5247386E7A4C545A314E356876357148476C304979323538797732665465596237797347716651696475664D77314E4454344479496D67687269446A30376C716D6F4F4C756A635A786C4B2F6965425A7631702B47336D566D475648513474717A70616D38315156784A4748433545376759672B52754C3631326B644968644B6A2B497A6772704B383352724E6351585350786656423037735A4B78722F4149684F6F746C647945717261754D7A47426F75584F62764E4A517151566F50743144767A64575665734F624837344D325538534F674C3042634341494167434135376D752B3876593239593558714756366E4F745750304E434E6247556A59595642426D615669515849444738715159486C535A486E326F636D336A5763366C34586F7A6253784C556C746D2B535A3633534B2B5A30737448724B6D4A6D3431626B61325A4772616A426C634D4262456A45714A476E565574454279317379526A6374624D6B613956354F54674F35697463734C304E6B654B49785A783736666874356C61686C52304F4E6173325770764E4B784B3565436F42646567463641744A51466A6970416F50743144777075724B76574C4E6A393847624B654A48516C3641754241454151424163387A582F656673626573637231444B39546E57724836486E734B326C4D794E6C43787549754D7A5A676F7549754B6D63612F3570634C697830775533433478756343704A4E4331546B3238617A6E5238486F7A6253784C556C316D65525A3633534B2B5A30737448724B6D4A6D36316230616D556E6C775174304665594D315A487362646E67664C493458694A6D494E473664526479685959714E382B504930536E7945636B626A6774612B43512F56446A65782B35657336746867312B6A755A436D2F45326161556B5848455269493169754855693475356D394D794F57686D614E6572386E4A7748637857715746364779504645577330393950773238797451796F3648477457644C55335135596C63714A516C774C73394358415A36457542626E6F53344175514662503841743144777075724B76574C4E6A393847624B574A4851313641754241454151424163367A5948786E37473372484B2F51797655353171782B683545386C7757314B3871456973764D6C6E7355636B6C5249313072577677597741476877764178365A755665646F325A4E4A6343375473696C464F54346D344D78555732702F38657859397166536A4C735565624C766F56467471662F487354745436554F7852357373646D4B6A314B71652F557677534537552B6C447355656249744C472B475753463542644537424C68704F476D44376C5A54556B704C784B5534754D6E462B42723271636D336A5763366838486F7A4B6C6957704D4C4B38697A31756B563830705A615056314D544E31713349314D313633554F6F434C31617337536D6D2B5A726C774B30445135386C2F77425A784247363234667A304C314A564B326E474147374C4461573634754E364174706A65397831794F5A65647472547179754C454F42744F56426D3147745765546B34742F4D56716C686568736A785246624E506654384E764D72554D714F687872566D79314D6C533932494E2B73397A5774763072796267736F52326E635630534B504D6732345956564C68663159494162667542646C6668734C75396C6E634C6D5A426D4F6A327A502F6A324B6679326E7A66734E7775592B683065325A2F3865785079326E7A66734E77755A6A6D7A486A424F64314D75486433754863576B367875574D7677324633632B384F6776426B646F3569345939505349335678704B356C59334C4F50683944777075724B74324C4E6A393847624B654A4852463641754241454151424163357A592F656673544F73637239444B39546E32724836486956683730377857365045706E5472482B7A302F45526457467A616D4A366E5A7034466F6A666173444D7551466A6B427A4B327A346456634E7651433656504C69636D766D5350507455354E7647786F2B44305A6A53784C556D4E6B2B525A3633534B2B615573435056314D544E35713349314D537868777557324C754D4765644A54766163562B4C5646393636394333754D646D53764E4D6F4273456A6A65623938332F7173367634683358515243687A5052703463454C6B5464357552633561575A6F31713379636E4676364A57715746364779504645547330393950773238797477796F3648477457624C557953484B51386646306C746F5A6931587961493855644C43394D587A493141564B417351484C7141346A776E6336387455784850505173342B483048436D367371315973325033775A7370596B644758664C67514241454151484E383252386165784D36787976304D72314F666173666F65485848764862782F52623438536F644470614F6153436D4C4B6C3849464E43433172515154674448702F79356336556B704F39654A31344A374B304D6F737571322F4A794739716A626A306D567A356C32685656742B546B4E37553234394975664D4D73797044675458534F41494A61574335774230744E4E7550534C6E7A494A625A3850712B4D5A30417231504C696379305A6A4E4331546B6D386247706642364D7870596C71544B7950497339667046664D3665424871716D4A6D2B31625561325A4772596A426C39774F6F74695A694C674E52533251556373475A49787557746D534E5774386C4C78622B6956726C776568736A785245724E4F4F666874356C62686C78304F4E61733657706649637042783858535732686A57712B5452486969665646444D35376E4E716E7361546959476768754C66586F6E475465497574506D55466D3147335A4F514F315273533668632B5A5851326F32374A7942327073533668632B5A665330557A48687A7170386A5266657774414278613936796A467039374A53664D35315A357848684F3531357170694B44505273772B483048436D3673717A5938325033775A7370596B644958664C67514241454151484E73325A386165784D3631797632664B39546E327248364867326765386476483946766A784B694F6F57504B3055314E6534447765485449482F6A43356B3854314F7844437444644652487332636F4C47356D6435587569505A733554557559764B5A2B7A5A743551533567356A62523850724F4D5A3041756A5379346E4B7447597A527455354A764778715877656A4D61574A616B7A736679445058365A587A4B6E6752367570695A76595679326F31464F36473636324A6F6A5A4C68564E31782B5379556B59374C4864546463666B70326B4E6C6C445574312B5A5975534A32536F6543734753613964354B5869333945724238475A78346F69466D6E485077323879755179343648477457644C55766C4F5567342B4C704C6252787256664A706A78523030797342754C6D6736784958704C305869345473326265554576514B352B7A5A7435515339416F325670494163306E5742424B6C4E41355A5A787848684F3531356970694B44505473732B483048436D366F71785938325033775A6E5378493653752B58416743414941674F615A7444343039695A31726C304C506C6570517457503050417445354E32386630572B504571493652515762547A55394B36574D50634B614541345468634D4148554F3675624B62556E647A5A3134704F4B304D3473436938774F584A2B3552765A6379646C4664414B4C7A4135636E376B3373755932554757485274496349514330676734556D4967336A56556279584D624B4F6532306647465A786A4F724336464C4C696332305A6A4E4B31546B6D386247706C68656A4D61574A616B31736279456672394D72356A44416A315538544C72516C4C57456A542F3775557A6B31467445515637505867734F6D4451484D777A646A63584F764A39425870716634525A5978536C47393832332F414B5535576D6F33334D7969784B547A5135542B315A2F6C566B2F2B66752F3949375255356C644136547A5135542B3150797179662F5033662B6A7446546D5776734F6C49757A713764446E336A3831442F43624931647365372F306E744E546D654A534567765954666E62334D42317730727A5632784B554C384C612F706C755866632B614D7464354B5869333945714877596A785244374E4F4F666874356C64686C78304F4C6173365770644B6370422B49683653323063613158796159385564466D73716D6B6358766A426337544F453858366D6F56364A303474337446335A52614C4570504D6A6C503756473668794932554E424B547A4935542B314E31446B4E6C47536D73796E6A6548736A445844534F4534366549365A557870785476534A55556A6D6C6E48456545376E586D366D496F733953796A34776F4F464E3152566D7835736676677A4F6C695230746434754241454151424163797A62666576734C4F746375685A3872314B46717865684872544F546676483946766A784B714F6A305672515155394B325278426454514F467A536357414271627935736F4F556E647A5A316F79536974444E394A61545A4F35446C47366B54746F6653576B32627551354E314962614B78356F61567A67304F646534686F3778326D546345644B51326B51433254347772654D6A36734B2F5379346E4F74474E6D6C61707954654E6A55793450526D464C45745362574B636848362F544B2B5978776F39565045796C72484A7539484F6F7159474B65496C37563773355A6B61674C69674C4849434977484B7A38664C306C3475726E565035532B5470662B59364979312F6B70654C6630537462344D52346F68316D6E485077323879767779343648467457644C55724D6370422B4968365332306361315879615938546F6452624E5047397A484F63484E4E787561547158723045717355376D58484A49732B6B464C736E6368796A665147306839494B585A4F35446B333042744979306C7277537644474F63584F76754261527043395A5271526B376B53704A6E4E724E4F49384E334F764F564D52525A36746B6E786851634B62716972466A7A592F66426D644C456A70713778634341494167434135686D33506A5832466E57755851732B56366C43303476516A7471484A50344A2F52623438537248696457734A3367744E2B48673674713564544739547277776F337735594751776B42517551484B6259506A47753479507177756E53796F6E4D74474E6D7061707954654E6A35314D734C305A6A53784C556D39694849522B7630334C356848436A315538544C4C594F5464364F644A345749635354543264444B374365306C3177462B4552704C327371454A75396F35716E4A64794C5259744E7344796E4C4873744C6B54765A4451576D324235546B374C53354465794C6F724B70324F446D74496330336734546A6A557873394F4C765349645354567848716335576F342B58704C7956624F7166796C386E512F387830526C722F4A5338572F6F6C617642695046454E733434352B47336D5851686C78304F4A6173365770576335536E2F4551394A62614F4E6172354E4D4F4B4F7033723068654C734A414D4A414C304279617A44337034622B64655A6E694B44505773632B4D4B446854645556597365624837344D7A70596B645058654C67514241454151484C38334A38612B777336317936466E7976556F576E463645627455354A2F4250364B784869566F3854704E4255564C61656C4555416C616157416C786B61793435324D56783943356B6C467964373857645658334B347A6432312B30322F47596F325964524E3875513774723970742B4D784E6D48554C356369364F7372695148556A51306B427A732B596268666A4E794F4D4F5976664935356242385931334752395746304B57564535396F7873314C554F53627873664F706C68656A4D4B574A616B3473512B44782B7630334C35637543505654784D73746F354A336F35306C684A68784A504E614D4D5A77587675646344646775504D46376556614548644A6E4D554A507652614C5A70764F66347637466A326D6C7A2B5364314C6B4E4761627A6E2B4C2B784F30307566794E314C6B58523270413977613139376E47344442634C7A376C4D61394F54755449644F53563752484B5535576F2F4553394A6552723531542B542B546F4C4448524765764F526C34702F524B303879567852444C4F4F4F66684E356C306F5A61304F48617336576F6E4F55702F784D505357326C6A57712B545444696A6F745255315165344D7077396F5065757A787262385773752B355476376B584733794C4F36363361726669735562552B6E334637354475757432713334724532703950754C33794D744A55564C6E67535534597A486538534E646469785967736F796B33336F6C4E386A6D6C6D487654773338363837504555576578597838595548436D366F71785A4D325033775A6E5378493667753658416743414941674F5735757A343139685A31723130624E6C657052744F4C302F306A4E7248497963452F6F7245654A576A784F735746396B7066773048564E584A715933717A71783449336C675A466230425241636E74632B4D712F6A49757243366C4C4B696336305932617471484A743432506E5755734C305A7270596C715471777A345048362F5463766C766765726C694D6475484A4F39484F6A344348456C6F414F6D41665176643349354A584262735237676C794635584262735237676C794635533461773977533541696C4763705566694A656B7646326A4F6E2F4A2F4A3146686A6F6A5A7441354762696E394572536956785243724F4F4F62684E356C3036655774446857724F6C714B6735536E2F41424D505357326A6A57712B5454486964564B39475869743641586F414E4E41636C7373393665472F6E586D353853677A326245506A4367345533564662374A6D782B2B444D36574A48556C3353344541514241454279764E34664733734C4F7465756A5A7372314B4E7078456374474D766A6530615A616274307177754A576A784A746D637A615762334C4179576F62424C444648464C4649484E4C587361476D37466A474B39632B725A366D32376C656A70517152755865656C394D724A3239443733646977334654704D7435486D50706C5A4F336F666537735463564F6B6279504D6F374E705A49462F6430574C5777696663426A547339547047386A7A4F644F717855315656564D446848555367785951754A5931754348586271364549374D46462B42517253546C33467471484A743432506E535746364D7870596B5475777A345048362F5463766C6A344871356354486270794C765230676E67493853535646544B30334E674C78634F2B4467507975587435564A70334B4E2F716374525434737839327A3756647978324C4865314F6A334A3259395137746E3271376C6A735465314F6A33477A48714C6F617559754164547561436362734D4737386C4D616B32376E433731496359336354774B453553702F45533836386A61633666386E386E5257474F694E6D30446B5A754B6B364A57684572696946576563633343627A4C713038746148437457644C5574726E4675413844437A6D574F5174476D5130336B4C4F6D396D535A6F69376D54364C4E645A6A674864314D62654C38467763317733434C6C33566161542F39467A6552356C3330717333626B587664324B653030757044626A7A4830717333626B587664324A326D6C31496263655A5A555A734C4E5930753770613874463459774F4C6E485541784C4632716B6C6674423149727849445A625842677768635845754931727A6575464A337370733969777A34776F4F464E3152566D795A736676677A4F6C695231526477754241454151424163707A6648787437424831723130624E6C657052744F4C37356E696A477435564C48557A484738746154726B41383645337364787865625A79573969586A6159376A6938327A6B7437457649326D4F343474677A6B743745764A326D5A414145494E5731446B323864487A72475746364D323073534A33595238486A39667075587975523675584578572B63693731656B45516A784A69463734343451424145424571413557702F457A633638546138366638414A2F4A3159345936493262514F526D3471546F6C56346B7269516D7A7A6A6D3454655A64656E6C7251344E717A70616D79564A584D5A703262467675435867647A523742764A616C3741376D6A32446553314C32414B6467786872527567424C775A5269514735594A38593048436E366F71315A4D325033775A7370596B645758634C67514241454151484A2F774455412B4E7659492B7465756A5A7372314B56707866664D38554657436F5867714158586F514C3042516C4353306C41616471484A743436506E55537776526D326C6952504C435067386672394E792B557A505676695973304A794C2F5636515577346950456C465246554533736C61787477373073424E2B2B7663536A55622F544B3561484B546A346F783578562B6662384D646978324B33583745337735444F4B767A3766686A735459726466734C3463692B474770446758544E633048766D6867463433376C6C474E5650766C3361454E7875376B5275674F567176784D3353586A375A6E7A2F414A50354F6C4844485247316142794D3346536445717448695A4C69516D674F4F62684E356C3261655774446757724F6C71624E366B726C6231414B336F514C30425339435265704275574166474E42777075716372566B7A592F66426D796C6952316864737542414541514241636D2F77425154343339676A36313636566D79765570576A4639387A77326C62797158676F51567655417265674B456F43306C534454744D354E7648523836786E68656A4E314C45696532436642342F5836626C386F7163543162346D4C4E4343594833616C78394745464E506946784A6C5479746B61313743484E63415775474D454C33734A4B555531775A78326D6E637A4A6373694263674B48466A4F4944475363514151454D737034632B6F6533473139524B356A746B306E4556346531795571306D764676354F7646585253386A63744135476269704F69565868784A49505148484E776D38793756504C5768352B315A3074546176556C63726567463641586F4265674B586F44647A5048786A51634B62716E4B315A63325033774E6C4C456A7253375A6343414941674341354C2F714550472F2F414D2B4D6A6479306936566C7976582F414170326A4639387A77576C57437158416F51585871414C3042516C41576B7151613170432B4E75374E47414E633372476546364D323073534A375950326150666630334C3552565236743854646B594843343477644D4C576D447A5459634F6F484E763147766341747972535842693861427861372B573554763538794C786F4846727635626C4F2F6E7A463430436831634D6A574C3358465136306E34693839474346724147744141476B42704261573779544861486B5A754B6B364A5530316577516D67486C74787A4436434D53376B462B6861486E72566D79314E6853566767463641586F4167434133387A7738593266767A6E35546C6173756248373447326C69523170646F754241454151474B6551684151584E7859556C57593534484E5A5655344C5734642B424C47635A59375778333348644F76654C464374735870384761716C506149592B6C74467631724D764F71577A78334864437562366E31657857334575526A7572522F36302F48596D2B703966734E784C6B4C36332B326E34374F784E3954362F59626958495831763841625438646E596D2B703966734E784C6B4C36332B326E34374F784E3954362F59626958496F52572F32302F475A324A76716658374463533547335A6C6D56456B305531537752523037672B4B6E616349756B474D4F6352697542782F7A48707132694F79314478385462546F334F396E75517A7A55376E5A31474A5958754C733663634578754F6E6364622B622F6B62582B4654636D36617654384F52324B646F69312B72755A6E30616D326C38306674564C3872726448782F707333315071476A553230766D6A39716E3872726448782F6F33315071476A553230766D6A3971666C6C626F2B503949333150714B364E5462532B615032702B5756756A342F3062326E31464E47707470664E4837552F4B36335238663654767166554E47707470664E4837552F4B3633523866364E3954366A425656565255444F7A47494969526E6C7877337647734471667A65572B682B4531484C396175587559537445493848657A53744F6B666E6D665537526535725753774F784E65476935704231446341463171396B7637366639484B7151636E74477068564F305438567659716E5A717652376F303771584959565474452F4662324A32617230653647366C7947465537525078573969646D71394875687570636868564F3054385676596E5A717652376F6271584959565474452F4662324A32617230653647366C794D6A59367336566E2F4F596E5A717652376F627158496B575A537870593575367167747A33424C49596D593277744F6D62395632703654723472746D737A673971584533553664336579643038704F6D7270744D36414941674C584E425147724E52416F44536C73712F55514741324E7549426F4E7549426F4E7549426F4E7549426F4E7549426F4E7549426F4E7549426F4E7549426F4E7549426F4E7549426F4E7549426F4E7549426F4E7549426F4E7549426F4E7549426F4E7549426F4E7549426F4E7549426F4E7549414C473345426D6A736D37555147354451414944625A4741674C30415142414541514241454151424145415142414541514241454151424145415142414541514241454151424145415142414541514241454151424145415142414541514241454151424145415142414541514241454151424145415142414541514241662F396B3D, '1', '1', '1', '1', '1', '', null, null, '1', '0');

-- ----------------------------
-- Table structure for tarjetas
-- ----------------------------
DROP TABLE IF EXISTS `tarjetas`;
CREATE TABLE `tarjetas` (
  `id_tarjeta` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_tarjeta`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tarjetas
-- ----------------------------
INSERT INTO `tarjetas` VALUES ('1', 'American Express');
INSERT INTO `tarjetas` VALUES ('2', 'Bankard Bolivariano');
INSERT INTO `tarjetas` VALUES ('3', 'Diners Club');
INSERT INTO `tarjetas` VALUES ('4', 'Discover');
INSERT INTO `tarjetas` VALUES ('5', 'Interdin');
INSERT INTO `tarjetas` VALUES ('6', 'Mastercard');
INSERT INTO `tarjetas` VALUES ('7', 'PacifiCard');
INSERT INTO `tarjetas` VALUES ('8', 'Visa');

-- ----------------------------
-- Table structure for tipobanco
-- ----------------------------
DROP TABLE IF EXISTS `tipobanco`;
CREATE TABLE `tipobanco` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tipobanco
-- ----------------------------
INSERT INTO `tipobanco` VALUES ('1', 'Banco');
INSERT INTO `tipobanco` VALUES ('2', 'Cooperativa de Ahorro y Credito');

-- ----------------------------
-- Table structure for tipo_cancelacion
-- ----------------------------
DROP TABLE IF EXISTS `tipo_cancelacion`;
CREATE TABLE `tipo_cancelacion` (
  `id_tipcancelacion` int(11) NOT NULL AUTO_INCREMENT,
  `nom_cancelacion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_tipcancelacion`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tipo_cancelacion
-- ----------------------------
INSERT INTO `tipo_cancelacion` VALUES ('1', 'Contado');
INSERT INTO `tipo_cancelacion` VALUES ('2', 'Credito');

-- ----------------------------
-- Table structure for tmp_compra
-- ----------------------------
DROP TABLE IF EXISTS `tmp_compra`;
CREATE TABLE `tmp_compra` (
  `id_tmp_comp` int(11) NOT NULL AUTO_INCREMENT,
  `id_usu` int(11) DEFAULT NULL,
  `id_proveedor` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `nro_factura` varchar(255) DEFAULT NULL,
  `nro_autorizacion` varchar(255) DEFAULT NULL,
  `formapago` varchar(255) DEFAULT NULL,
  `valiva` decimal(11,2) DEFAULT NULL,
  `subconiva` decimal(11,2) DEFAULT NULL,
  `subsiniva` decimal(11,2) DEFAULT NULL,
  `desc_monto` decimal(11,2) DEFAULT NULL,
  `descsubconiva` decimal(11,2) DEFAULT NULL,
  `descsubsiniva` decimal(11,2) DEFAULT NULL,
  `montoiva` decimal(11,2) DEFAULT NULL,
  `montototal` decimal(11,2) DEFAULT NULL,
  `nota` text,
  `id_almacen` int(11) DEFAULT NULL,
  `categoria` int(11) DEFAULT NULL,
  `cod_sri_tipo_doc` varchar(255) DEFAULT NULL,
  `cod_sri_sust_comprobante` varchar(255) DEFAULT NULL,
  `montoice` decimal(11,2) DEFAULT NULL,
  `id_sucursal` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_tmp_comp`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tmp_compra
-- ----------------------------

-- ----------------------------
-- Table structure for tmp_compra_det
-- ----------------------------
DROP TABLE IF EXISTS `tmp_compra_det`;
CREATE TABLE `tmp_compra_det` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_tmp_comp` int(11) DEFAULT NULL,
  `id_pro` int(11) DEFAULT NULL,
  `precio_compra` decimal(15,6) DEFAULT NULL,
  `existencia` decimal(11,2) DEFAULT NULL,
  `cantidad` decimal(11,2) DEFAULT NULL,
  `id_unimed` int(11) DEFAULT NULL,
  `iva` tinyint(1) DEFAULT NULL,
  `montoiva` decimal(11,2) DEFAULT NULL,
  `subtotal` decimal(11,2) DEFAULT NULL,
  `descmonto` decimal(11,2) DEFAULT NULL,
  `descsubtotal` decimal(11,2) DEFAULT NULL,
  `nota` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tmp_compra_det
-- ----------------------------

-- ----------------------------
-- Table structure for tmp_guiaremisionproducto
-- ----------------------------
DROP TABLE IF EXISTS `tmp_guiaremisionproducto`;
CREATE TABLE `tmp_guiaremisionproducto` (
  `iddetalle` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) DEFAULT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `cantidad` decimal(11,2) DEFAULT NULL,
  `codigo` varchar(255) DEFAULT NULL,
  `descripcion` text,
  PRIMARY KEY (`iddetalle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tmp_guiaremisionproducto
-- ----------------------------

-- ----------------------------
-- Table structure for tmp_movinv
-- ----------------------------
DROP TABLE IF EXISTS `tmp_movinv`;
CREATE TABLE `tmp_movinv` (
  `id_mov` int(11) NOT NULL AUTO_INCREMENT,
  `id_usu` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `nro_documento` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `montototal` decimal(11,2) DEFAULT NULL,
  `id_almacen` int(11) DEFAULT NULL,
  `id_tipodoc` int(11) DEFAULT NULL,
  `id_almdest` int(11) DEFAULT NULL,
  `idcategoriacontable` int(11) DEFAULT NULL,
  `idcategoriacontabledestino` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_mov`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tmp_movinv
-- ----------------------------

-- ----------------------------
-- Table structure for tmp_movinv_det
-- ----------------------------
DROP TABLE IF EXISTS `tmp_movinv_det`;
CREATE TABLE `tmp_movinv_det` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_mov` int(11) DEFAULT NULL,
  `id_pro` int(11) DEFAULT NULL,
  `precio_compra` decimal(11,4) DEFAULT NULL,
  `existencia` decimal(11,2) DEFAULT NULL,
  `cantidad` decimal(11,2) DEFAULT NULL,
  `id_unimed` int(11) DEFAULT NULL,
  `montototal` decimal(11,2) DEFAULT NULL,
  `id_serie` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tmp_movinv_det
-- ----------------------------

-- ----------------------------
-- Table structure for tokenfirma
-- ----------------------------
DROP TABLE IF EXISTS `tokenfirma`;
CREATE TABLE `tokenfirma` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombrearchivo` varchar(255) NOT NULL,
  `contrasena` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tokenfirma
-- ----------------------------

-- ----------------------------
-- Table structure for unidadfactorconversion
-- ----------------------------
DROP TABLE IF EXISTS `unidadfactorconversion`;
CREATE TABLE `unidadfactorconversion` (
  `idunidad1` int(11) DEFAULT NULL,
  `idunidadequivale` int(11) DEFAULT NULL,
  `cantidadequivalente` decimal(10,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of unidadfactorconversion
-- ----------------------------
INSERT INTO `unidadfactorconversion` VALUES ('9', '8', '50.0000');
INSERT INTO `unidadfactorconversion` VALUES ('8', '10', '100.0000');
INSERT INTO `unidadfactorconversion` VALUES ('3', '1', '20.0000');
INSERT INTO `unidadfactorconversion` VALUES ('2', '4', '1000.0000');
INSERT INTO `unidadfactorconversion` VALUES ('2', '5', '1.0000');
INSERT INTO `unidadfactorconversion` VALUES ('6', '2', '1000.0000');
INSERT INTO `unidadfactorconversion` VALUES ('1', '1', '1.0000');
INSERT INTO `unidadfactorconversion` VALUES ('6', '1', '100.0000');
INSERT INTO `unidadfactorconversion` VALUES ('6', '4', '999999.9999');
INSERT INTO `unidadfactorconversion` VALUES ('13', '1', '12.0000');
INSERT INTO `unidadfactorconversion` VALUES ('13', '2', '12.0000');
INSERT INTO `unidadfactorconversion` VALUES ('14', '1', '24.0000');
INSERT INTO `unidadfactorconversion` VALUES ('14', '5', '24.0000');
INSERT INTO `unidadfactorconversion` VALUES ('14', '2', '24.0000');
INSERT INTO `unidadfactorconversion` VALUES ('15', '4', '460.0000');
INSERT INTO `unidadfactorconversion` VALUES ('2', '15', '2.2000');
INSERT INTO `unidadfactorconversion` VALUES ('5', '16', '33.8200');
INSERT INTO `unidadfactorconversion` VALUES ('17', '5', '3.7800');
INSERT INTO `unidadfactorconversion` VALUES ('6', '17', '310.7900');
INSERT INTO `unidadfactorconversion` VALUES ('18', '20', '1000.0000');
INSERT INTO `unidadfactorconversion` VALUES ('18', '19', '2.2000');
INSERT INTO `unidadfactorconversion` VALUES ('21', '22', '100.0000');

-- ----------------------------
-- Table structure for unidadmedida
-- ----------------------------
DROP TABLE IF EXISTS `unidadmedida`;
CREATE TABLE `unidadmedida` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` text,
  `nombrecorto` tinytext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of unidadmedida
-- ----------------------------
INSERT INTO `unidadmedida` VALUES ('1', 'UNIDADES', 'UNID');
INSERT INTO `unidadmedida` VALUES ('5', 'LITROS', 'LTS');
INSERT INTO `unidadmedida` VALUES ('6', 'TONELADAS', 'TON');
INSERT INTO `unidadmedida` VALUES ('16', 'ONZA', 'ONZA');
INSERT INTO `unidadmedida` VALUES ('17', 'GALON', 'GLS');
INSERT INTO `unidadmedida` VALUES ('18', 'KILOGRAMOS', 'Kg');
INSERT INTO `unidadmedida` VALUES ('19', 'LIBRAS', 'Lb');
INSERT INTO `unidadmedida` VALUES ('20', 'GRAMOS', 'Gr');
INSERT INTO `unidadmedida` VALUES ('21', 'METRO', 'MTS');
INSERT INTO `unidadmedida` VALUES ('22', 'CENTIMETRO', 'CMS');

-- ----------------------------
-- Table structure for usuprecio
-- ----------------------------
DROP TABLE IF EXISTS `usuprecio`;
CREATE TABLE `usuprecio` (
  `idpreusu` int(11) NOT NULL AUTO_INCREMENT,
  `idusu` int(11) NOT NULL,
  `idpre` int(11) NOT NULL,
  `estatus` tinyint(1) NOT NULL,
  PRIMARY KEY (`idpreusu`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usuprecio
-- ----------------------------

-- ----------------------------
-- Table structure for usu_sistemas
-- ----------------------------
DROP TABLE IF EXISTS `usu_sistemas`;
CREATE TABLE `usu_sistemas` (
  `id_usu` int(11) NOT NULL AUTO_INCREMENT,
  `nom_usu` varchar(255) NOT NULL,
  `ape_usu` varchar(255) DEFAULT NULL,
  `nac_usu` varchar(3) DEFAULT NULL,
  `ide_usu` varchar(50) NOT NULL,
  `fec_usu` date DEFAULT NULL,
  `tlf_usu` varchar(255) DEFAULT NULL,
  `ema_usu` varchar(255) DEFAULT NULL,
  `dir_usu` text,
  `log_usu` varchar(255) DEFAULT NULL,
  `pwd_usu` varchar(255) DEFAULT NULL,
  `est_usu` varchar(3) DEFAULT NULL,
  `fot_usu` longblob,
  `perfil` int(11) DEFAULT NULL,
  `id_mesero` int(11) DEFAULT NULL,
  `id_punto` int(11) DEFAULT NULL,
  `ultimoacceso` datetime DEFAULT NULL,
  PRIMARY KEY (`id_usu`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usu_sistemas
-- ----------------------------
INSERT INTO `usu_sistemas` VALUES ('1', 'Usuario', 'Admin', '0', '0123465789', '1969-12-31', '(000) 000-0000', 'usuario@gmail.com', 'quito', 'admin', '8843028fefce50a6de50acdf064ded27', 'A', 0x2F396A2F34414151536B5A4A5267414241514141415141424141442F3277434541416B4742785151454255514542515746525151447738554668415146525151465255554652455846685156465259594843676747426F6D48425555495445684A536B724C6934754678387A4F444D734E7967744C79734243676F4B4467304F477841514779306B487955744C4377734D4377734C4377734C4377734C4377734C4377734C4377734C4377734C4377734C4377734C4377734C4377734C4377734C4377734C4377734C4377304B2F2F4141424549414D77417A414D4249674143455145444551482F78414163414145414151554241514141414141414141414141414141417745434251594842416A2F784141394541414341514944425151484267554541774141414141414151494445515146456759684D554652595847426B516354496C4B6873644579516D4A7967734555493050683842557A553549577376482F784141624151454141674D42415141414141414141414141414141414177514241675547422F2F454143345241414943416749424167514443514141414141414141414241674D45455345784567564245794979555747426F5251564D304A53635A477830662F61414177444151414345514D524144384137694141414141414141414141415550506D4F507034656C4B74566B6F77677275542B533676734F4D625A626531635735553656366444686F693754714C72556B754366757278756175576A614D577A6F326537655954437477556E577152334F6E683754732B6B704E714D664D307A4E66536A586C2F73777030462B4A2F784533386B7669637878465A7457344C335675516A774E484E6B71725275465862334674332F6961763659306F7234784B5574764D576E662B4A7139306F306D7668453149584E504A6D33676A702B542B6C4374467056345172523579702F7961692F5337786C33626A663841496471634E6A64314770376472756A50324B69362B792B5065726E7A69545573564B4C5475377861616B6D314B4C584F4C57394D3255326175746578395267355473523652327052772B4F6C654C736F346C376E46386C5637507865665536716E66675370374957744651415A4D41414141414141414141414141414141414141706371594C62624D48687342694B73586153704F4D58306C5032452F43392F4177776A6C587048326E654D784C6F30332F4977386D6B6C392B6133536D2F6B76376D6D3153366D7478536F566D3973754B4B5350485652496D5A7A4A746C366D4961636B3477377661612F62765A66744C73354C445056424E30374C74303875505165636436486739624D4263584B41324D46626935514146796B646A39442B306A725570594B6F37797738464B6D3378644B365676307470647A52786F326A305934703038316F572F7165737076756C422F765A2B427446365A704E6252394341416D4B344141414141414141414141414141414141414E51394B6B5738737157392B6C6675316F3238776532754464624C38545457392B6F6C4A4C724B48747065635445756A4D653066506B56643258462F4D336E5A375A524A4B705733793432366433314E65325077617259796D6E7655627A663656752B4C5231625163367954365230496F38394F696F7130565A46746644526E46786B72706E71306A515161665A7673352F6E65784632353058612F4B3131356356386A584B6D7A4E65504B4C3770572B5A32505355634C3853614E736B614F4557635571354A586A7870742F6C744C344A3350424B4C54733030317961732F4937764C437866474B386A425A397372547845585A576B6C75664E647A2F596B6A64397A56312F59354863324459434E383077765A5854386F746D457832466C52715370542B314354542B766C59323330525954316D6151664B6A52725648354B432B4D3135466D4A424C6848664141544663414141414141414141414141414141414141464A527572506D7246514163623263797A2B467A6176516537524370702F49355263666730627A704C4E7063723034374434324B2B314765487176736B6E4B6D332B706166464870306C43364F7046327557346B4F6B615362534E4A466F3332513652704A7449306A5132513652704A7449306A5132636D394B5744554D56436F7636745066337866397A626651646C656D6C577862582B354B4E4B4C2F4141773379743476344745394B394A7A7259576C42586E4E545559726D334B4B53387A72477A4F55724234536A686F2F307163564A2B394E373579385A4E73753072677257737967414A79414141414141414141414141414141414141414141416A72556C4F4C5456303763657164302F4E49777371646E626F5A30782B4E70576C6672387947324F2B535375576E6F384F6B615362534E4A583853665A4470476B6D306A53504562496449306B326B4B49385273776D48326564664E49347571763565467736564F2F435661636E643930556C34795851334E46744B466B6C305265584972534B736E743741414E6A4141414141414141414141414141414141414141414149363150557245674D4E41786A6862694E497A4445615A706372622F4D757079556C6446666A65696462317374306A53533652704D3647794C53656A445550765077504E43756E4E52572F66765A6B30625153664A704E7463465141544559414B414651554677436F4341414141414141414141414141414141414B4E6738574F784B3377543338317A534D4E36526C4C624D66695A36704F58562F41736932743633462B6B61536A37374C6136305378786B75646E38434F72586C4C6A77364C6355306A535A327A476B5751646D6E30614D2F4356306D75614D487050586738547033532B7A3136456C4D745052706174386D544262475361757436664E4655576975564B465478356C6A50557763754D6E64526A77752B3373414D4474727468444C34714B536E566E7655573930592B394B336277585066304E663263394A3861745452696B6F70384B6B4531623879753933616A6D6531746245537855336930314F556D392F42712B35773561625753364C744D524752546C644A53505255656E5575704B584C667638413850716D6A5655347155576D704A4E5369377072716D534842746A64756175446B6F54626E53664744356473587966774F3035506D394C463031556F79314C6464634A5266535335466946696B636E4B77724D64383872376D5141424955774141414141414157564A714B6262736C766265354A414635354D666D564F684856566D6F72743374397957396D7435767464786868624F32353135665958355639352F41307A47346C314A6170536C4F54347A6D2F6B75534C4E574D3563766770335A63593852354F6959724E6E4E5870503248776D74392F6F5933553733767636387A5573767838364C3968376E786739385834477734504E4B64586466524C335A665A6664497471714D567258425364387050652B544B30735A37797632723648706857692B44586A754D624B4C58487A4B4653654443584D586F75563538307453577A4C6F6F326C7861387A455746694C393376376B7A39526A396A49564D5646634E2F643954795661376C783464462B2F556A534B56716B616176556B6F7274337439794C46574A585739766C6C57334D6E4E61584350526873584F6D2F5A666739364D7048506163644D61306C43556E7554662B5738545338626E7A345556702F484C37586775434D46556D3550564A747476653378666954536F552B58775151795A5136354F7965735674563931723335574E637A4C4571637276677479376A453549703036572B556C476154564B54756F397136583646396571655739517A66687A3859506F394869302B63504B61374B356E6B644847557446534B6C486B31756C423959766B7A6B2B314F7956624153314F38364C6673316F726830553139312F426E5436654B6C546C7169392F546B2B786D616F59326E5869347A696E71567055354A4E4E63397A346F786A5A3957543873754A66374C634A3234723275596E7A7770475979446143746736696E536B317775754B61364E633132477A375A656A3130723138416E4B6E766371463779697677582B30757A697530306A4C4D46557846574E436A485655715330715044667A6375695850754C4C684B4C4F78586B565856747672333266522B7932644C485957474953747131526B754B556F753072646D3479317A46624C354C484134576E686F752B684E796C7731546B37796475387970656A317965557338664E2B50572B436F414D6D674B46544337533539484351566C7171314C714650712B7237455A6A4679656B61796B6F726250546E476355384C44565565392F5A7072664B54364A6675632B7A76504B6C642F7A5861503363504237752B6F2B624D626A73664B55334F637464575847664B5034594C6B654A4D36464F4F6F387673354E2B544B6643364A3531584C6A7758424C636C34434A48456B6957697153524C3057524C346D51653343342B705433526B3765362F616A354D794E4C4F2F6667752B446354436F766961754B4D71544D387332702B37507A544935357A46665A70763955766F6A454A6C4A4D65434D2B62505A587A69704C644671432F4172507A346D4E715362643237767139374C6D57534D704A474E746B624D6C6B6D582B736C36796139694C3465382B6E636562413452315A365675533374394639545A4731434B6A48636F71795278505750555652443463667166364856394D7776697938356449725872486C66566C59725537386B5756354868624A75587A4D3954464A63454533646B394F4F6C58352F4970683666336E34665572566B5178546A3878732B65443159664D576E5A2F7744332B356D736B79436A5471797869704B4E6172424A795373376462634C766464386479504673336C65742B756D765A692F5A5856726E344731325058656D79756E547533386A6B35446A475455507A4B6741365257414141494D5A6959307163716B33614D49755466596B63637A544E5A3469764B764A744F57354B2F3259386F6F3366306C342F52526851543331704E7638734C66753063346958385748486B63764E74334C77524A456B5247693946736F4573535245534C307A4A6B6C52656D52785A656D5A424B6D584A6B535A636D415336696A5A5A6358414B746C4955334A714D643762736B57746D63796A43365965746647584473562F334B65646C4C4771632F66324C4F4A6A752B78522F79656E44554652687058486933315A48766D374C7A3643725562646C785A3671644C5247334E385766504C625A35466A6C49396C58434E5556474A4855334B7935486D685431507358483645732F61646B533255565A454C6A35503843546F6A714D786561597A3163667850677633505A6936366846796C77582B574E537865496453546B2F426446304F7436543663387533796D766B58362F67633331484E2B4244786A39544E7239483264754E5A34616F32343162754C664B664672782B614F6A6E4363506948536E4770486A546C47533848633772546E644A726D6B7A316D54576F4E614F5068577563576D58414172463042676F77446D48704C7258786359386F55492B626C4A7639764931524731656B6E427A6A696C57612F6C7A68424B533458584650744E555231615034614F486B372B4B396B714C30794A46365A4B5145715A656D524A6C365A6B79544A6C795A456D58706745715A564D6A544B334D676B754C6C6C796C7743357333664230744E4F4D656B497234476C59574F717047505763563854666F524F4A36764C666A453748705566716B65654F43555A4F63567636644F746A793135475969696C58434B572F774339312B703532334532766B344F35473754354D52436E7058612F77444C454E6152366356427864704B78724F6535682F53692F7A4E664972592B485049745655562F6638414247636A4A6A54573573384F6259333173724C374D58753758314D6379724C477A3332505243697456773652343636325673334B58624C5A3844752B4568707078692F757769764A574F61374B3749564B7334567179305534754D6C47533971646E644B334A62755A3038713555314A7049364746584B4B636E376C514156533841414151346E44517177634B6B564B4D6C5A786B72706D695A337341377565456C752F34616A2F4150575837507A4E33784F4C554F4A6A716D647047384C4A513649724B59574C356B636E786D4371554A6161304A5166535374667566426B535A31444635784363584763564A5037736B704C795A725750797A445433775470763841413772795A63686C722B596F57594D6C394C4E58544C307A3231736F6C48374D6C4A66395835635069655765476E486A462B472F3546694E73483079724B6D63653055544C6B794A4D75544E396B5A4C6372636A7556755A424A635849376934423438377A5765456F757653743679456F616453314B376B6C7658646339577933705A68556E476C6A344B6B35575378464F3770332F484637347274562F41774F32632F354D59653955762F414E552F7161565379366457576D6E4679665A7758652B434F586D51566B39614F766779384B396E315052616B6C4B4C54556B6D6D74366161756D6E7A4C3674574E4F4F71636C474B3579646B636D32497A4C465944437644546C476131587070336B365366474B664E58344C6B6579753632496C716D3553665757354C75584C774B3965412B3576534A624D356451573262486E2B31564F5558546F7831502F6C6C374B6A3278584676794E4D6E4C6D2B2B374D7468386E763841376B374C704258666D7A594D726A683644546A54546B76767A39742B462B4263673661506F584A546E566666396652674D70325978474A733478305166395370654B74324C697A664D6832516F596130704C316C5262396330724A2F686A794C495A2B65696E6E715A485A664B5A5A7178595135375A6E62466248677732594B5A376B7941736C514141414141654C475950575971746B647A596741616C5579466B5538696B626A5961554161542F6F6B694F65545352764F6846485451426F55736C6234712F65726B55746E622F6458794F672B7158516571585132556D756D61754558326A6E62325A374835737465792F356A6F33713130487131304E76697A5875527648722B787A6A2F774157665758772B6757792F774359365036706442367064445078352F63782B7A3166306E4D4D587354437134756F705052666464704F2F553964445A694D467068545353354A485250564C6F50564C6F616563743732534B754B5774476878795672677264794A495A5049336A315336425530593232624A4A64476C2F364A4976686B636A633943476C47444A71634D685A364B65524779324B32414D58673874304754534B67414141412F2F5A, '1', '0', '0', '2019-03-07 08:32:59');

-- ----------------------------
-- Table structure for venta
-- ----------------------------
DROP TABLE IF EXISTS `venta`;
CREATE TABLE `venta` (
  `id_venta` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `mesa` varchar(255) DEFAULT NULL,
  `mesero` varchar(255) DEFAULT NULL,
  `tipo_doc` int(2) DEFAULT NULL,
  `nro_factura` varchar(255) DEFAULT NULL,
  `tipo_ident` varchar(255) DEFAULT NULL,
  `nro_ident` varchar(255) DEFAULT NULL,
  `nom_cliente` varchar(255) DEFAULT NULL,
  `telf_cliente` varchar(255) DEFAULT NULL,
  `dir_cliente` varchar(255) DEFAULT NULL,
  `correo_cliente` varchar(255) DEFAULT NULL,
  `ciu_cliente` varchar(255) DEFAULT NULL,
  `valiva` decimal(11,2) DEFAULT NULL,
  `subconiva` decimal(11,2) DEFAULT NULL,
  `subsiniva` decimal(11,2) DEFAULT NULL,
  `desc_monto` decimal(11,2) DEFAULT NULL,
  `descsubconiva` decimal(11,2) DEFAULT NULL,
  `descsubsiniva` decimal(11,2) DEFAULT NULL,
  `montoiva` decimal(11,2) DEFAULT NULL,
  `montototal` decimal(11,2) DEFAULT NULL,
  `fecharegistro` datetime DEFAULT CURRENT_TIMESTAMP,
  `idusu` int(11) DEFAULT NULL,
  `estatus` int(11) DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_tipcancelacion` int(11) DEFAULT NULL,
  `montoimpuestoadicional` decimal(11,2) DEFAULT NULL,
  `id_empresa` int(11) DEFAULT NULL,
  `id_sucursal` int(11) DEFAULT NULL,
  `id_puntoemision` int(11) DEFAULT NULL,
  `id_caja` int(11) DEFAULT NULL,
  `nro_orden` int(11) DEFAULT NULL,
  `cambio` decimal(11,2) DEFAULT NULL,
  `id_vendedor` int(11) DEFAULT NULL,
  `observaciones` text,
  `placa_matricula` varchar(25) DEFAULT NULL,
  `idmesa` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_venta`),
  KEY `index_ventafecha` (`fecha`,`estatus`,`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=1470 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of venta
-- ----------------------------

-- ----------------------------
-- Table structure for venta_abonocreditocuota
-- ----------------------------
DROP TABLE IF EXISTS `venta_abonocreditocuota`;
CREATE TABLE `venta_abonocreditocuota` (
  `id_cuota` int(11) NOT NULL,
  `id_abono` int(11) NOT NULL,
  `monto` decimal(11,2) DEFAULT NULL,
  PRIMARY KEY (`id_cuota`,`id_abono`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of venta_abonocreditocuota
-- ----------------------------

-- ----------------------------
-- Table structure for venta_anulada
-- ----------------------------
DROP TABLE IF EXISTS `venta_anulada`;
CREATE TABLE `venta_anulada` (
  `idventa` int(11) NOT NULL,
  `idusuario` int(11) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `causa_anulacion` text,
  PRIMARY KEY (`idventa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of venta_anulada
-- ----------------------------

-- ----------------------------
-- Table structure for venta_credito
-- ----------------------------
DROP TABLE IF EXISTS `venta_credito`;
CREATE TABLE `venta_credito` (
  `id_venta` int(11) NOT NULL,
  `fechalimite` date DEFAULT NULL,
  `dias` int(11) DEFAULT NULL,
  `p100interes_credito` decimal(11,2) DEFAULT NULL,
  `p100interes_mora` decimal(11,2) DEFAULT NULL,
  `cantidadcuotas` int(11) NOT NULL,
  `abonoinicial` decimal(11,2) DEFAULT NULL,
  `montobasecredito` decimal(11,2) DEFAULT NULL,
  `montointerescredito` decimal(11,2) DEFAULT NULL,
  `montocredito` decimal(11,2) DEFAULT NULL,
  `montobasemora` decimal(11,2) DEFAULT NULL,
  `montointeresmora` decimal(11,2) DEFAULT NULL,
  `id_estado` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_venta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of venta_credito
-- ----------------------------

-- ----------------------------
-- Table structure for venta_creditoabonoinicial
-- ----------------------------
DROP TABLE IF EXISTS `venta_creditoabonoinicial`;
CREATE TABLE `venta_creditoabonoinicial` (
  `id_abono` int(11) NOT NULL,
  PRIMARY KEY (`id_abono`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of venta_creditoabonoinicial
-- ----------------------------

-- ----------------------------
-- Table structure for venta_creditocuota
-- ----------------------------
DROP TABLE IF EXISTS `venta_creditocuota`;
CREATE TABLE `venta_creditocuota` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_venta` int(11) NOT NULL,
  `fechalimite` date DEFAULT NULL,
  `monto` decimal(11,2) DEFAULT NULL,
  `pagado` decimal(11,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of venta_creditocuota
-- ----------------------------

-- ----------------------------
-- Table structure for venta_creditocuota_tmp
-- ----------------------------
DROP TABLE IF EXISTS `venta_creditocuota_tmp`;
CREATE TABLE `venta_creditocuota_tmp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_venta` int(11) NOT NULL,
  `fechalimite` date DEFAULT NULL,
  `monto` decimal(11,2) DEFAULT NULL,
  `pagado` decimal(11,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4324 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of venta_creditocuota_tmp
-- ----------------------------

-- ----------------------------
-- Table structure for venta_credito_tmp
-- ----------------------------
DROP TABLE IF EXISTS `venta_credito_tmp`;
CREATE TABLE `venta_credito_tmp` (
  `id_venta` int(11) NOT NULL,
  `fechalimite` date DEFAULT NULL,
  `dias` int(11) DEFAULT NULL,
  `p100interes_credito` decimal(11,2) DEFAULT NULL,
  `p100interes_mora` decimal(11,2) DEFAULT NULL,
  `cantidadcuotas` int(11) NOT NULL,
  `abonoinicial` decimal(11,2) DEFAULT NULL,
  `montobasecredito` decimal(11,2) DEFAULT NULL,
  `montointerescredito` decimal(11,2) DEFAULT NULL,
  `montocredito` decimal(11,2) DEFAULT NULL,
  `montobasemora` decimal(11,2) DEFAULT NULL,
  `montointeresmora` decimal(11,2) DEFAULT NULL,
  `id_estado` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_venta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of venta_credito_tmp
-- ----------------------------

-- ----------------------------
-- Table structure for venta_detalle
-- ----------------------------
DROP TABLE IF EXISTS `venta_detalle`;
CREATE TABLE `venta_detalle` (
  `id_detalle` int(11) NOT NULL AUTO_INCREMENT,
  `id_venta` int(11) DEFAULT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `cantidad` decimal(11,4) DEFAULT NULL,
  `precio` decimal(15,6) DEFAULT NULL,
  `subtotal` decimal(11,4) DEFAULT NULL,
  `iva` tinyint(1) DEFAULT NULL,
  `montoiva` decimal(11,2) DEFAULT NULL,
  `descmonto` decimal(11,2) DEFAULT NULL,
  `descsubtotal` decimal(11,4) DEFAULT NULL,
  `id_almacen` int(11) DEFAULT NULL,
  `tipprecio` int(11) DEFAULT NULL,
  `porcdesc` decimal(15,2) DEFAULT NULL,
  `descripcion` text,
  `subsidio` decimal(11,2) DEFAULT NULL,
  `costo_unitario` decimal(11,4) DEFAULT NULL,
  `costo_total` decimal(11,2) DEFAULT NULL,
  PRIMARY KEY (`id_detalle`)
) ENGINE=InnoDB AUTO_INCREMENT=2872 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of venta_detalle
-- ----------------------------

-- ----------------------------
-- Table structure for venta_detalle_serie_tmp
-- ----------------------------
DROP TABLE IF EXISTS `venta_detalle_serie_tmp`;
CREATE TABLE `venta_detalle_serie_tmp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_detalle` int(11) NOT NULL,
  `id_serie` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of venta_detalle_serie_tmp
-- ----------------------------

-- ----------------------------
-- Table structure for venta_detalle_tmp
-- ----------------------------
DROP TABLE IF EXISTS `venta_detalle_tmp`;
CREATE TABLE `venta_detalle_tmp` (
  `id_detalle` int(11) NOT NULL AUTO_INCREMENT,
  `id_venta` int(11) DEFAULT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `cantidad` decimal(11,4) DEFAULT NULL,
  `precio` decimal(15,6) DEFAULT NULL,
  `subtotal` decimal(11,4) DEFAULT NULL,
  `iva` tinyint(1) DEFAULT NULL,
  `montoiva` decimal(11,2) DEFAULT NULL,
  `descmonto` decimal(11,2) DEFAULT NULL,
  `descsubtotal` decimal(11,4) DEFAULT NULL,
  `id_almacen` int(11) DEFAULT NULL,
  `tipprecio` int(11) DEFAULT NULL,
  `id_serie` int(11) DEFAULT NULL,
  `precioconiva` decimal(15,4) DEFAULT '0.0000',
  `comision_monto` decimal(11,2) DEFAULT NULL,
  `precio_base` decimal(15,4) DEFAULT NULL,
  `porcdesc` decimal(15,2) DEFAULT NULL,
  `descripcion` text,
  PRIMARY KEY (`id_detalle`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of venta_detalle_tmp
-- ----------------------------

-- ----------------------------
-- Table structure for venta_estadocredito
-- ----------------------------
DROP TABLE IF EXISTS `venta_estadocredito`;
CREATE TABLE `venta_estadocredito` (
  `id_estado` int(11) NOT NULL,
  `nombre_estado` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_estado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of venta_estadocredito
-- ----------------------------
INSERT INTO `venta_estadocredito` VALUES ('1', 'Pendiente');
INSERT INTO `venta_estadocredito` VALUES ('2', 'Cancelado');
INSERT INTO `venta_estadocredito` VALUES ('3', 'Mora');

-- ----------------------------
-- Table structure for venta_formapago
-- ----------------------------
DROP TABLE IF EXISTS `venta_formapago`;
CREATE TABLE `venta_formapago` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_venta` int(11) DEFAULT NULL,
  `id_formapago` int(11) DEFAULT NULL,
  `monto` decimal(11,2) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `nro_comprobante` int(11) DEFAULT NULL,
  `id_cajapago` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_ventaformapago` (`fecha`,`id_formapago`,`id_venta`)
) ENGINE=InnoDB AUTO_INCREMENT=1865 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of venta_formapago
-- ----------------------------

-- ----------------------------
-- Table structure for venta_formapagobanco
-- ----------------------------
DROP TABLE IF EXISTS `venta_formapagobanco`;
CREATE TABLE `venta_formapagobanco` (
  `id_abono` int(11) NOT NULL,
  `id_banco` int(11) NOT NULL,
  `fechaemision` date DEFAULT NULL,
  `fechacobro` date DEFAULT NULL,
  `numerocuenta` varchar(100) DEFAULT NULL,
  `numerodocumento` varchar(100) DEFAULT NULL,
  `descripciondocumento` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_abono`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of venta_formapagobanco
-- ----------------------------

-- ----------------------------
-- Table structure for venta_formapagotarjeta
-- ----------------------------
DROP TABLE IF EXISTS `venta_formapagotarjeta`;
CREATE TABLE `venta_formapagotarjeta` (
  `id_abono` int(11) NOT NULL,
  `id_tarjeta` int(11) NOT NULL,
  `id_banco` int(11) NOT NULL,
  `fechaemision` date DEFAULT NULL,
  `numerotarjeta` varchar(100) DEFAULT NULL,
  `numerodocumento` varchar(100) DEFAULT NULL,
  `descripciondocumento` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_abono`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of venta_formapagotarjeta
-- ----------------------------

-- ----------------------------
-- Table structure for venta_retencion
-- ----------------------------
DROP TABLE IF EXISTS `venta_retencion`;
CREATE TABLE `venta_retencion` (
  `id_venta_ret` int(11) NOT NULL AUTO_INCREMENT,
  `id_venta` int(11) DEFAULT NULL,
  `nro_retencion` varchar(255) DEFAULT NULL,
  `nro_autorizacion` varchar(255) DEFAULT NULL,
  `fecha_retencion` date DEFAULT NULL,
  PRIMARY KEY (`id_venta_ret`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of venta_retencion
-- ----------------------------

-- ----------------------------
-- Table structure for venta_retencion_detiva
-- ----------------------------
DROP TABLE IF EXISTS `venta_retencion_detiva`;
CREATE TABLE `venta_retencion_detiva` (
  `id_detalleiva` int(11) NOT NULL AUTO_INCREMENT,
  `id_venta_ret` int(11) DEFAULT NULL,
  `id_porcentaje_retencion_iva` int(11) DEFAULT NULL,
  `base_retencion_iva` decimal(11,2) DEFAULT NULL,
  `porciento_retencion_iva` decimal(11,2) DEFAULT NULL,
  `valor_retencion_iva` decimal(11,2) DEFAULT NULL,
  PRIMARY KEY (`id_detalleiva`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of venta_retencion_detiva
-- ----------------------------

-- ----------------------------
-- Table structure for venta_retencion_detrenta
-- ----------------------------
DROP TABLE IF EXISTS `venta_retencion_detrenta`;
CREATE TABLE `venta_retencion_detrenta` (
  `id_detallerenta` int(11) NOT NULL AUTO_INCREMENT,
  `id_venta_ret` int(11) DEFAULT NULL,
  `id_concepto_retencion` int(11) DEFAULT NULL,
  `base_noiva` decimal(11,2) DEFAULT NULL,
  `base_iva` decimal(11,2) DEFAULT NULL,
  `porciento_retencion_renta` decimal(11,2) DEFAULT NULL,
  `valor_retencion_renta` decimal(11,2) DEFAULT NULL,
  PRIMARY KEY (`id_detallerenta`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of venta_retencion_detrenta
-- ----------------------------

-- ----------------------------
-- Table structure for venta_retencion_detrenta_tmp
-- ----------------------------
DROP TABLE IF EXISTS `venta_retencion_detrenta_tmp`;
CREATE TABLE `venta_retencion_detrenta_tmp` (
  `id_detallerenta` int(11) NOT NULL AUTO_INCREMENT,
  `id_concepto_retencion` int(11) DEFAULT NULL,
  `base_noiva` decimal(11,2) DEFAULT NULL,
  `base_iva` decimal(11,2) DEFAULT NULL,
  `porciento_retencion_renta` decimal(11,2) DEFAULT NULL,
  `valor_retencion_renta` decimal(11,2) DEFAULT NULL,
  `id_usu` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_detallerenta`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of venta_retencion_detrenta_tmp
-- ----------------------------

-- ----------------------------
-- Table structure for venta_tmp
-- ----------------------------
DROP TABLE IF EXISTS `venta_tmp`;
CREATE TABLE `venta_tmp` (
  `id_venta` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `mesa` varchar(255) DEFAULT NULL,
  `mesero` varchar(255) DEFAULT NULL,
  `tipo_doc` int(2) DEFAULT NULL,
  `nro_factura` varchar(255) DEFAULT NULL,
  `tipo_ident` varchar(255) DEFAULT NULL,
  `nro_ident` varchar(255) DEFAULT NULL,
  `nom_cliente` varchar(255) DEFAULT NULL,
  `telf_cliente` varchar(255) DEFAULT NULL,
  `dir_cliente` varchar(255) DEFAULT NULL,
  `correo_cliente` varchar(255) DEFAULT NULL,
  `ciu_cliente` varchar(255) DEFAULT NULL,
  `valiva` decimal(11,2) DEFAULT NULL,
  `subconiva` decimal(11,2) DEFAULT NULL,
  `subsiniva` decimal(11,2) DEFAULT NULL,
  `desc_monto` decimal(11,2) DEFAULT NULL,
  `descsubconiva` decimal(11,2) DEFAULT NULL,
  `descsubsiniva` decimal(11,2) DEFAULT NULL,
  `montoiva` decimal(11,2) DEFAULT NULL,
  `montototal` decimal(11,2) DEFAULT NULL,
  `fecharegistro` datetime DEFAULT CURRENT_TIMESTAMP,
  `idusu` int(11) DEFAULT NULL,
  `estatus` int(11) DEFAULT NULL,
  `idmesa` int(11) DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_proforma` int(11) DEFAULT NULL,
  `id_caja` int(11) DEFAULT NULL,
  `nro_orden` int(11) DEFAULT NULL,
  `id_vendedor` int(11) DEFAULT NULL,
  `id_servicio` int(11) DEFAULT NULL,
  `comision_monto` decimal(11,2) DEFAULT NULL,
  `observaciones` text,
  `placa_matricula` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id_venta`)
) ENGINE=InnoDB AUTO_INCREMENT=347 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of venta_tmp
-- ----------------------------

-- ----------------------------
-- Table structure for version
-- ----------------------------
DROP TABLE IF EXISTS `version`;
CREATE TABLE `version` (
  `major_version` int(11) NOT NULL,
  `minor_version` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of version
-- ----------------------------
INSERT INTO `version` VALUES ('1', '4');

-- ----------------------------
-- Table structure for versionsistema
-- ----------------------------
DROP TABLE IF EXISTS `versionsistema`;
CREATE TABLE `versionsistema` (
  `version` int(11) NOT NULL,
  `descripcion` text,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of versionsistema
-- ----------------------------
INSERT INTO `versionsistema` VALUES ('3000', 'Tratamiento de Garantia');
INSERT INTO `versionsistema` VALUES ('3001', 'Facturacion Electronica');

-- ----------------------------
-- Procedure structure for almacen_del
-- ----------------------------
DROP PROCEDURE IF EXISTS `almacen_del`;
DELIMITER ;;
CREATE PROCEDURE `almacen_del`(

vid int

)
BEGIN

  DECLARE EXIT handler for sqlexception select 0; 

  delete from almacen where almacen_id=vid;        

  select 1;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for almacen_ins
-- ----------------------------
DROP PROCEDURE IF EXISTS `almacen_ins`;
DELIMITER ;;
CREATE PROCEDURE `almacen_ins`(vnomalm varchar(255),
                                                vdiralm varchar(255),
                                                vresalm varchar(255),
                                                vdesalm varchar(255),
                                                vsucalm int,
                                                vdepalm int,
                                                vprodalm int,
                                                vtipoalm tinyint(1))
BEGIN
                    DECLARE EXIT handler for sqlexception select 0; 

                    INSERT INTO almacen(almacen_nombre, almacen_direccion, almacen_responsable, 

                                        almacen_descripcion, sucursal_id, almacen_deposito, almacen_idproducto, almacen_tipo)

                      VALUES(vnomalm, vdiralm, vresalm, vdesalm, vsucalm, vdepalm, vprodalm, vtipoalm);

                    select last_insert_id() as id;
                 END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for almacen_sel
-- ----------------------------
DROP PROCEDURE IF EXISTS `almacen_sel`;
DELIMITER ;;
CREATE PROCEDURE `almacen_sel`()
BEGIN

  DECLARE EXIT handler for sqlexception select 0; 

  SELECT a.almacen_id, a.almacen_nombre, a.almacen_direccion, a.almacen_responsable, 
         a.almacen_descripcion, s.nom_sucursal, a.almacen_deposito, a.almacen_idproducto

                     FROM almacen a

                     INNER JOIN sucursal s ON a.sucursal_id = s.id_sucursal;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for almacen_upd
-- ----------------------------
DROP PROCEDURE IF EXISTS `almacen_upd`;
DELIMITER ;;
CREATE PROCEDURE `almacen_upd`(vid int,
                                                vnomalm varchar(255),
                                                vdiralm varchar(255),
                                                vresalm varchar(255),
                                                vdesalm varchar(255),
                                                vsucalm int,
                                                vdepalm int,
                                                vprodalm int,
                                                vtipoalm tinyint(1))
BEGIN
                    DECLARE EXIT handler for sqlexception select 0; 
                    UPDATE almacen SET 
                      almacen_nombre = vnomalm, 
                      almacen_direccion = vdiralm, 
                      almacen_responsable = vresalm, 
                      almacen_descripcion = vdesalm, 
                      sucursal_id = vsucalm,
                      almacen_deposito = vdepalm,                     
                      almacen_idproducto = vprodalm,                     
                      almacen_tipo = vtipoalm                     
                    WHERE almacen_id = vid;

                    select 1;
                 END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for area_del
-- ----------------------------
DROP PROCEDURE IF EXISTS `area_del`;
DELIMITER ;;
CREATE PROCEDURE `area_del`(

vid int

)
BEGIN

  DECLARE EXIT handler for sqlexception select 0; 

  delete from area WHERE id_area = vid;

  select 1;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for area_ins
-- ----------------------------
DROP PROCEDURE IF EXISTS `area_ins`;
DELIMITER ;;
CREATE PROCEDURE `area_ins`(

vnom varchar(255)

)
BEGIN

  DECLARE EXIT handler for sqlexception select 0; 

  INSERT INTO area(nom_area) VALUES(vnom);

  select last_insert_id();

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for area_upd
-- ----------------------------
DROP PROCEDURE IF EXISTS `area_upd`;
DELIMITER ;;
CREATE PROCEDURE `area_upd`(

vid int,

vnom varchar(255)

)
BEGIN

  DECLARE EXIT handler for sqlexception select 0; 

  UPDATE area SET 

    nom_area = vnom

  WHERE id_area = vid;

  select 1;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for cajaapertura_ins
-- ----------------------------
DROP PROCEDURE IF EXISTS `cajaapertura_ins`;
DELIMITER ;;
CREATE PROCEDURE `cajaapertura_ins`(
            vusuario int,
            vidcaja int,
            vmonto double
            )
BEGIN
              DECLARE EXIT handler for sqlexception select 0; 

              INSERT INTO caja_movimiento(id_usuario, fecha_apertura, monto_apertura, estado, id_caja) 
                VALUES(vusuario,  NOW(), vmonto, 0, vidcaja);

              select last_insert_id();

            END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for cajaapertura_upd
-- ----------------------------
DROP PROCEDURE IF EXISTS `cajaapertura_upd`;
DELIMITER ;;
CREATE PROCEDURE `cajaapertura_upd`(
                                    vidmov int,
                                    vusuario int,
                                    vcompras double,
                                    vnotacierre text,
                                    vsalida decimal(11,2),
                                    vjusti text,
                                    vventastotales decimal(11,2),
                                    vabonoservicio decimal(11,2),
                                    vmontonoefectivo decimal(11,2),
                                    vmontoegreso decimal(11,2),
                                    vsaldo decimal(11,2),
                                    vtotalcaja decimal(11,2),
                                    vsobrante decimal(11,2),
                                    vfaltante decimal(11,2),
                                    vdesefectivo decimal(11,2),
                                    vdescheque decimal(11,2),
                                    vdestarcre decimal(11,2),
                                    vdestardeb decimal(11,2),
                                    vdestarpre decimal(11,2),
                                    vdestransf decimal(11,2),
                                    vdesdinele decimal(11,2),
                                    vdesotros decimal(11,2),
                                    vdesvencre decimal(11,2)
                                    )
BEGIN
                                    DECLARE EXIT handler for sqlexception select 0; 
                              UPDATE caja_movimiento SET
                                    fecha_cierre = Now(),
                                    estado = 1,   
                                    idusu_cierre = vusuario,
                                    compras = vcompras,     
                                    observaciones = vnotacierre,       
                                    salida = vsalida,     
                                    justificacion = vjusti,   
                                    ventastotales = vventastotales,
                                    abonoservicio = vabonoservicio,
                                    montonoefectivo = vmontonoefectivo,
                                    montoegreso = vmontoegreso,
                                    saldo = vsaldo,
                                    totalcaja = vtotalcaja,
                                    sobrante = vsobrante,
                                    faltante = vfaltante,
                                    desefectivo = vdesefectivo,
                                    descheque = vdescheque,
                                    destarcre = vdestarcre,
                                    destardeb = vdestardeb,
                                    destarpre = vdestarpre,
                                    destransf = vdestransf,
                                    desdinele = vdesdinele,
                                    desotros = vdesotros,
                                    desvencre = vdesvencre    
                              WHERE id_mov = vidmov and estado = 0;
                              SELECT 1;
                              END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for cajachica_cierre
-- ----------------------------
DROP PROCEDURE IF EXISTS `cajachica_cierre`;
DELIMITER ;;
CREATE PROCEDURE `cajachica_cierre`(
            vcaja int,
            vidusuario int,
            vfecha date,
            vmonto decimal(11,2),
            vobs text
            )
BEGIN
            update caja_chica_movimiento set 
              fechacierre = vfecha,
              fecharegistrocierre = now(),
              usuariocierre = vidusuario,
              montocierre = vmonto,
              estatus = 1,
              obs = vobs
              where id_caja = vcaja AND estatus=0;
            END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for cajachica_insapertura
-- ----------------------------
DROP PROCEDURE IF EXISTS `cajachica_insapertura`;
DELIMITER ;;
CREATE PROCEDURE `cajachica_insapertura`(
            vusuario int,
            vcaja int,
            vfecha date,
            vmonto double,
            vdescripcion varchar(255)
            )
BEGIN

              DECLARE EXIT handler for sqlexception select 0; 

              INSERT INTO caja_chica_movimiento(id_caja, fechaapertura, fecharegistroapertura, usuarioapertura, 
                                                descripcion, montoapertura, estatus) 
                VALUES(vcaja, vfecha, NOW(), vusuario, vdescripcion, vmonto, 0);

              select last_insert_id();

            END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for cajachica_movimientos
-- ----------------------------
DROP PROCEDURE IF EXISTS `cajachica_movimientos`;
DELIMITER ;;
CREATE PROCEDURE `cajachica_movimientos`(
            vid int
            )
BEGIN           
              declare vdesde datetime;
              declare vhasta datetime;
              
              set vdesde = (select fechaapertura from caja_chica_movimiento where id_mov = vid);
              set vhasta = (select fechacierre from caja_chica_movimiento where id_mov = vid);
              set vhasta = ifnull(vhasta, now());
              
              select fecha, nro_factura as numerodoc, montototal as valor, '' as descripcion, 'Egreso' as tipo  
                from compra 
                where cajachica = 1 and fecha between vdesde and vhasta
              union  
              select fecha, nro_factura as numerodoc, total as valor, descripcion, 'Egreso' as tipo  
                from gastos 
                where fecha between vdesde and vhasta
              union
              select fechaingreso as fecha, numeroingreso as numerodoc, monto as valor, descripcion, 'Ingreso' as tipo   
                from caja_chicaingreso
                where fechaingreso between vdesde and vhasta  
              order by fecha;
            END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for cajachica_resumen
-- ----------------------------
DROP PROCEDURE IF EXISTS `cajachica_resumen`;
DELIMITER ;;
CREATE PROCEDURE `cajachica_resumen`(
            vcaja int
            )
BEGIN
              select fechaapertura, montoapertura, 
                   ifnull((select sum(montototal) from compra 
                     where cajachica = 1 and id_sucursal = d.idsucursal and 
                           fecha between fechaapertura and ifnull(fechacierre, now())),0) as compras,
                   ifnull((select sum(total) from gastos 
                     where id_sucursal = d.idsucursal and 
                           fecha between fechaapertura and ifnull(fechacierre, now())),0) as gastos,
                   ifnull((select sum(monto) from caja_chicaingreso
                     where id_caja = vcaja AND  fechaingreso between fechaapertura and ifnull(fechacierre, now())),0) as ingresos,
                   (montoapertura + ifnull((select sum(monto) from caja_chicaingreso
                     where id_caja = vcaja AND fechaingreso between fechaapertura and ifnull(fechacierre, now())),0) - 
                                    ifnull((select sum(montototal) from compra 
                                             where cajachica = 1 and id_sucursal = d.idsucursal and 
                                                   fecha between fechaapertura and ifnull(fechacierre, now())),0) -     
                                    ifnull((select sum(total) from gastos 
                                             where id_sucursal = d.idsucursal and fecha between fechaapertura and ifnull(fechacierre, now())),0)) as resumen         
              from caja_chica_movimiento m
              inner join deposito_efectivo d on d.id = m.id_caja
              where id_caja = vcaja AND m.estatus = 0;
            END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for cajagastos_ins
-- ----------------------------
DROP PROCEDURE IF EXISTS `cajagastos_ins`;
DELIMITER ;;
CREATE PROCEDURE `cajagastos_ins`(

vid_mov int,
vid_usu int,
vdescripcion varchar(255),
vmonto decimal(11,2),
vemi varchar(255),
vrec varchar(255)

)
BEGIN
	
    DECLARE vcont INT;

	DECLARE EXIT handler for sqlexception select 0; 
    
    SET vcont = (SELECT valor + 1 FROM contador WHERE id_contador = 9);

	INSERT INTO caja_egreso(id_mov, id_usu, descripcion, monto, emisor, receptor, nroegreso)
        VALUES(vid_mov, vid_usu, vdescripcion, vmonto, vemi, vrec, vcont);
        
	UPDATE contador SET valor = vcont  WHERE id_contador = 9;        

  SELECT vid_mov;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for categoria_id
-- ----------------------------
DROP PROCEDURE IF EXISTS `categoria_id`;
DELIMITER ;;
CREATE PROCEDURE `categoria_id`(id NUMERIC(10))
SELECT cat_id, cat_descripcion FROM categorias WHERE cat_id = id
;
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for cliente_del
-- ----------------------------
DROP PROCEDURE IF EXISTS `cliente_del`;
DELIMITER ;;
CREATE PROCEDURE `cliente_del`(

vid int

)
BEGIN

  DECLARE EXIT handler for sqlexception select 0; 

  delete from clientes where id_cliente=vid;        

  select 1;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for cliente_ins
-- ----------------------------
DROP PROCEDURE IF EXISTS `cliente_ins`;
DELIMITER ;;
CREATE PROCEDURE `cliente_ins`(
                        vnom varchar(255),
                        vtip_ide varchar(100),
                        vnro_ide varchar(100),
                        vniv varchar(255),
                        vref varchar(255),
                        vcorreo varchar(255),
                        vciu varchar(255),
                        vrel tinyint,
                        vdir longtext, 
                        vtelf varchar(255), 
                        vmay tinyint, 
                        vpre int,
                        vvend int,
                        vcod varchar(255),
                        vcre decimal(11,2),
                        vplaca varchar(25),
                        vcategcontable int
                  )
BEGIN
                    DECLARE EXIT handler for sqlexception select 0; 
                    insert into clientes(nom_cliente, tipo_ident_cliente, ident_cliente, nivel_est_cliente, 
                                         ref_cliente, correo_cliente, ciudad_cliente, relacionado, direccion_cliente, 
                                         telefonos_cliente, mayorista, tipo_precio, id_vendedor, codigo, credito, 
                                         placa_matricula, idcategoriacontable)
                      VALUES(vnom, vtip_ide, vnro_ide, vniv, vref, vcorreo, vciu, vrel, 
                             vdir, vtelf, vmay, vpre, vvend, vcod, vcre, vplaca, vcategcontable);
                    select last_insert_id() AS idcli;
                  END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for cliente_upd
-- ----------------------------
DROP PROCEDURE IF EXISTS `cliente_upd`;
DELIMITER ;;
CREATE PROCEDURE `cliente_upd`(
                        vid int,
                        vnom varchar(255),
                        vtip_ide varchar(100),
                        vnro_ide varchar(100),
                        vniv varchar(255),
                        vref varchar(255),
                        vcorreo varchar(255),
                        vciu varchar(255),
                        vrel tinyint,
                        vdir longtext, 
                        vtelf varchar(255), 
                        vmay tinyint, 
                        vpre int,
                        vvend int,
                        vcod varchar(255),
                        vcre decimal(11,2),
                        vplaca varchar(25),
                        vcategcontable int
                  )
BEGIN
                    DECLARE EXIT handler for sqlexception select 0; 
                    UPDATE clientes SET 
                      nom_cliente = vnom,
                        tipo_ident_cliente = vtip_ide,
                        ident_cliente = vnro_ide,
                        nivel_est_cliente = vniv,
                        ref_cliente = vref,
                        correo_cliente = vcorreo,
                        ciudad_cliente = vciu,
                        relacionado = vrel, 
                        direccion_cliente = vdir, 
                        telefonos_cliente = vtelf, 
                        mayorista = vmay, 
                        tipo_precio = vpre,                   
                        id_vendedor = vvend,
                        codigo = vcod,
                        credito = vcre,
                        placa_matricula = vplaca
                    WHERE id_cliente = vid;
                    IF vcategcontable != 0 THEN
                        UPDATE clientes SET idcategoriacontable = vcategcontable
                          WHERE id_cliente = vid;
                    ELSE
                        UPDATE clientes SET idcategoriacontable = vcategcontable
                          WHERE id_cliente = NULL;
                    END IF;      
                    select 1;
                  END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for compra_null
-- ----------------------------
DROP PROCEDURE IF EXISTS `compra_null`;
DELIMITER ;;
CREATE PROCEDURE `compra_null`(
vidcompra int, 
vidusu int,
vcausa text
)
BEGIN
  DECLARE EXIT handler for sqlexception select 0;
  
  /*START TRANSACTION;*/
 
  UPDATE compra set estatus = 3 WHERE id_comp = vidcompra;
  
  INSERT INTO compra_anulada (idcompra, idusuario, fecha, causa_anulacion)
    VALUES (vidcompra, vidusu, now(), vcausa);

  UPDATE almapro as a
    INNER JOIN compra_det v on v.id_pro = a.id_pro
    SET existencia = a.existencia - v.cantidad	
    WHERE (v.id_comp = vidcompra);

  UPDATE almapro as a
    SET existencia = 0 	
    WHERE (existencia < 0);
   
  /*COMMIT;*/
  
  select 1;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for con_balance_situacion
-- ----------------------------
DROP PROCEDURE IF EXISTS `con_balance_situacion`;
DELIMITER ;;
CREATE PROCEDURE `con_balance_situacion`(
                vsucursalid int,
                vnivel int,
                vdateto date,
                vpendiente int
                )
BEGIN
                  SET SQL_SAFE_UPDATES = 0;
                  DROP TEMPORARY TABLE IF EXISTS tblsaldo;
                  CREATE TEMPORARY TABLE tblsaldo AS 
                    SELECT c.id, c.codigocuenta, 
                           IFNULL((SELECT SUM(d.valor * (case d.debitocredito when 1 then 1 else -1 end))
                                     FROM con_comprobantedetalle d 
                                        INNER JOIN con_comprobante a on a.id = d.idcomprobante                                         
                                     WHERE d.idcuenta = c.id and
                                           (vsucursalid = 0 or a.idsucursal = vsucursalid) and
                                           a.fechaasiento <= vdateto and 
                                           ((vpendiente = 1 AND a.idestado <= 2)  OR (a.idestado = 2))), 0) as valor                          
                      FROM con_plancuenta c
                      WHERE c.esmovimiento = 1;                          
  
                  DROP TEMPORARY TABLE IF EXISTS tblcuenta;
                  CREATE TEMPORARY TABLE tblcuenta AS 
                    SELECT c.id, c.codigocuenta, g.descripcion AS grupo, c.nivel, c.descripcion,
                           (SELECT SUM(s.valor) FROM tblsaldo s WHERE s.codigocuenta like concat(c.codigocuenta,'%')) as valor
                      FROM con_plancuenta c
                      INNER JOIN con_grupocuenta g on g.id = c.idgrupocuenta
                      WHERE c.nivel <= vnivel;                         
  
                  DELETE FROM tblcuenta WHERE IFNULL(valor, 0) = 0;
  
                  SELECT * FROM tblcuenta ORDER BY codigocuenta;   
            END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for con_balance_sumasaldo
-- ----------------------------
DROP PROCEDURE IF EXISTS `con_balance_sumasaldo`;
DELIMITER ;;
CREATE PROCEDURE `con_balance_sumasaldo`(
            vsucursalid int,
            vdatefrom date,
            vdateto date,
            vpendiente int
            )
BEGIN
            SET SQL_SAFE_UPDATES = 0;
            DROP TEMPORARY TABLE IF EXISTS tblcuenta;
            CREATE TEMPORARY TABLE tblcuenta AS 
                SELECT c.id, c.codigocuenta, c.descripcion,
                        cast(0 as decimal(11,2)) as debito, 
                        cast(0 as decimal(11,2)) as credito, 
                        cast(0 as decimal(11,2)) as saldo,  
                        IFNULL((SELECT SUM(d.valor * (case d.debitocredito when 1 then 1 else -1 end))
                                  FROM con_comprobantedetalle d 
                                  INNER JOIN con_comprobante a on a.id = d.idcomprobante                                         
                                  WHERE d.idcuenta = c.id and
                                        (vsucursalid = 0 or a.idsucursal = vsucursalid) and
                                        a.fechaasiento < vdatefrom and 
                                        ((vpendiente = 1 AND a.idestado <= 2)  OR (a.idestado = 2)) ), 0) as saldoanterior                          
                FROM con_plancuenta c
                WHERE c.esmovimiento = 1                          
                GROUP BY c.id, c.codigocuenta, c.descripcion;

            UPDATE tblcuenta
                SET debito = IFNULL((SELECT SUM(d.valor) 
                                        FROM con_comprobantedetalle d
                                        INNER JOIN con_comprobante c on c.id = d.idcomprobante
                                        WHERE d.debitocredito = 1 
                                        and ((vpendiente = 1 AND c.idestado <= 2)  OR (c.idestado = 2)) 
                                        and d.idcuenta = tblcuenta.id 
                                        and (vsucursalid = 0 or c.idsucursal = vsucursalid)
                                        and c.fechaasiento between vdatefrom and vdateto), 0),
                    credito = IFNULL((SELECT SUM(d.valor) 
                                        FROM con_comprobantedetalle d
                                        INNER JOIN con_comprobante c on c.id = d.idcomprobante
                                        WHERE d.debitocredito = 0 
                                            and ((vpendiente = 1 AND c.idestado <= 2)  OR (c.idestado = 2))  
                                            and d.idcuenta = tblcuenta.id 
                                            and (vsucursalid = 0 or c.idsucursal = vsucursalid)
                                            and c.fechaasiento between vdatefrom and vdateto), 0);

            UPDATE tblcuenta SET saldo = saldoanterior + debito - credito;

            DELETE FROM tblcuenta 
                WHERE saldo = 0 and saldoanterior = 0 and debito = 0 and credito = 0;

            SELECT * FROM tblcuenta ORDER BY codigocuenta;   
            END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for con_lista_operaciones
-- ----------------------------
DROP PROCEDURE IF EXISTS `con_lista_operaciones`;
DELIMITER ;;
CREATE PROCEDURE `con_lista_operaciones`(
            vsucursalid int,
            vaccountid int,
            vdatefrom date,
            vdateto date,
            vpendiente int
            )
BEGIN
            SET SQL_SAFE_UPDATES = 0;
            set @codigocuenta = (SELECT codigocuenta FROM con_plancuenta WHERE id = vaccountid);
            DROP TEMPORARY TABLE IF EXISTS tblcuenta;
            CREATE TEMPORARY TABLE tblcuenta AS 
                SELECT id FROM con_plancuenta
                WHERE codigocuenta like concat(@codigocuenta,'%');
            set @vsaldo = ifnull((select sum(v.valor * (case v.debitocredito when 1 then 1 else -1 end)) 
                                    from con_comprobantedetalle v
                                    inner join con_comprobante t on t.id = v.idcomprobante
                                    inner join tblcuenta c on c.id = v.idcuenta
                                    where ((vpendiente = 1 AND t.idestado <= 2)  OR (t.idestado = 2)) 
                                        and (vsucursalid = 0 or t.idsucursal = vsucursalid)
                                        and t.fechaasiento < vdatefrom),0); 
            DROP TEMPORARY TABLE IF EXISTS tblSaldo;
            CREATE TEMPORARY TABLE tblSaldo AS 
                SELECT t.id, date(fechaasiento) as fecha, numero, descripcion, referencia,
                    case when v.debitocredito = 1 then v.valor else 0 end as debito,
                    case when v.debitocredito = 0 then abs(v.valor) else 0 end as credito,
                    cast(0 as decimal(11,2)) as saldo
                from con_comprobante t 
                inner join con_comprobantedetalle v on v.idcomprobante=t.id
                inner join tblcuenta c on c.id = v.idcuenta
                where ((vpendiente = 1 AND t.idestado <= 2)  OR (t.idestado = 2)) 
                and (vsucursalid = 0 or t.idsucursal = vsucursalid)
                and fechaasiento between vdatefrom and vdateto                    
                order by fecha, numero;
                update tblSaldo set saldo=(@vsaldo:=@vsaldo + debito - credito);   
                select * from tblSaldo order by fecha, numero;   
            END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for correo_upd
-- ----------------------------
DROP PROCEDURE IF EXISTS `correo_upd`;
DELIMITER ;;
CREATE PROCEDURE `correo_upd`(

vusuario varchar(255),
vclave varchar(255),
vpuerto int,
vsmtp varchar(255)

)
BEGIN

  DECLARE EXIT handler for sqlexception select 0; 

  UPDATE correo SET 
	usuario = vusuario,
	clave = vclave,
	puerto = vpuerto,
	smtp = vsmtp;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for facturageneral_ins
-- ----------------------------
DROP PROCEDURE IF EXISTS `facturageneral_ins`;
DELIMITER ;;
CREATE PROCEDURE `facturageneral_ins`(vusu int,
vtipodoc int,
vefectivo decimal(11,2), 
vtarjeta decimal(11,2))
BEGIN

  declare vid int;

  DECLARE EXIT handler for sqlexception select 0; 
  
  UPDATE contador SET valor = valor WHERE id_contador = vtipodoc;

  insert into venta (fecha, area, mesa, mesero, tipo_doc, nro_factura, tipo_ident, nro_ident, nom_cliente, telf_cliente,
                                                     dir_cliente, correo_cliente, ciu_cliente, valiva, subconiva, subsiniva, desc_monto,
                                                     descsubconiva, descsubsiniva, montoiva, montototal, fecharegistro, idusu, estatus, id_cliente)
                                    SELECT fecha, area, mesa, mesero, vtipodoc, 
                                            (select case vtipodoc when 2 
                                                     then concat((select valor from parametros where id=4),'-',(select valor from parametros where id=5),'-',LPAD(valor, 9, '0')) 
                                                     else LPAD(valor, 9, '0') 
                                                    end 
                                              from contador where id_contador=vtipodoc), 
                                           tipo_ident, nro_ident, nom_cliente, telf_cliente,
                                           dir_cliente, correo_cliente, ciu_cliente, valiva, subconiva, subsiniva, desc_monto,
                                           descsubconiva, descsubsiniva, montoiva, 
                                           round(descsubconiva + descsubsiniva + montoiva,2) as montototal, now(), idusu, 1, id_cliente 
                                    FROM venta_tmp
                                    where idusu = vusu;
                                    
  set vid = (select last_insert_id());

  UPDATE contador SET valor = valor + 1 WHERE id_contador = vtipodoc;
  
  INSERT INTO venta_formapago (id_venta, id_formapago, monto) VALUES (vid, 1, vefectivo);
  INSERT INTO venta_formapago (id_venta, id_formapago, monto) VALUES (vid, 2, vtarjeta);
  
  INSERT INTO venta_detalle (id_venta, id_producto, cantidad, precio, subtotal, iva, montoiva, descmonto, descsubtotal, id_almacen, tipprecio)
                                    SELECT vid, d.id_producto, d.cantidad, d.precio, d.subtotal, d.iva, d.montoiva, d.descmonto, d.descsubtotal, d.id_almacen, tipprecio
                                      FROM venta_detalle_tmp d
                                      INNER JOIN venta_tmp v on v.id_venta = d.id_venta
                                      WHERE v.idusu = vusu;
  
  DELETE FROM pedido WHERE id_mesa = (SELECT idmesa FROM venta_tmp where idusu = vusu);
  DELETE FROM pedido_detalle WHERE id_mesa = (SELECT idmesa FROM venta_tmp where idusu = vusu);
  
  DELETE FROM venta_detalle_tmp WHERE id_venta in (select id_venta from venta_tmp where idusu = vusu);
  DELETE FROM venta_tmp where idusu = vusu;
   
  select vid;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for facturageneral_insnew
-- ----------------------------
DROP PROCEDURE IF EXISTS `facturageneral_insnew`;
DELIMITER ;;
CREATE PROCEDURE `facturageneral_insnew`(
          vusu int,
          vtipodoc int,
          vtipcancelacion int
          )
BEGIN

            declare vid int;
            declare vidprof int;
            declare vidreg int;
            declare vidabono int;
            declare done int;
            declare viddetalle int;
            declare vcambio decimal(11,2);
            declare vidservicio int;
            declare vidptoemi int;

            declare curdet cursor for 
             SELECT id_detalle
              FROM venta_detalle_tmp t
              INNER JOIN venta_tmp v on v.id_venta = t.id_venta
              WHERE v.idusu = vusu; 

           
            declare cur1 cursor for 
             SELECT idreg
              FROM formapago_tmp t
              INNER JOIN venta_tmp v on v.id_venta = t.id_venta
              WHERE v.idusu = vusu AND id_tipcancelacion = vtipcancelacion; 

            /*DECLARE EXIT handler for sqlexception select 0; */
            DECLARE EXIT handler for sqlexception
            begin 
              ROLLBACK;
            end;  
            declare continue handler for not found set done=1;                                      
            START TRANSACTION;
            
            SET vidprof = (SELECT id_proforma FROM venta_tmp WHERE idusu = vusu);

            SET vidservicio = (SELECT id_servicio FROM venta_tmp WHERE idusu = vusu);

            SET vidptoemi = IFNULL((SELECT id_puntoemision FROM caja_efectivo c
                                      INNER JOIN venta_tmp t on t.id_caja = c.id_caja
                                      WHERE idusu = vusu LIMIT 1),1);

            SET vcambio = IFNULL((select sum(monto) from formapago_tmp where id_tipcancelacion = vtipcancelacion AND id_venta=(SELECT id_venta FROM venta_tmp WHERE idusu = vusu)),0) -
                          (SELECT descsubconiva + descsubsiniva + montoiva + round((descsubconiva + descsubsiniva) * ifnull((select valor from parametros where id=13),0) / 100 ,2) 
                             FROM venta_tmp WHERE idusu = vusu);
            IF vcambio < 0 THEN
                  SET vcambio = 0;
            END IF;                          
            
            UPDATE punto_emision SET consecutivo_factura = consecutivo_factura 
              WHERE id_puntoemision = IFNULL((SELECT id_puntoemision FROM caja_efectivo c
                                               INNER JOIN venta_tmp t on t.id_caja = c.id_caja
                                               WHERE idusu = vusu),1);           

            insert into venta (fecha, area, mesa, mesero, tipo_doc, nro_factura, tipo_ident, nro_ident, nom_cliente, telf_cliente,
                               dir_cliente, correo_cliente, ciu_cliente, valiva, subconiva, subsiniva, desc_monto,
                               descsubconiva, descsubsiniva, montoiva, montototal, fecharegistro, idusu, estatus, idmesa,
                               id_cliente, id_tipcancelacion, montoimpuestoadicional,
                               id_empresa, id_sucursal, id_puntoemision, id_caja, cambio, nro_orden, id_vendedor,
                               observaciones, placa_matricula)
            SELECT curdate(), area, mesa, mesero, vtipodoc, 
                (case vtipodoc when 2 
                     then concat(cod_establecimiento,'-',cod_puntoemision,'-',LPAD(consecutivo_factura, 9, '0')) 
                     else LPAD(p.consecutivo_notaventa, 9, '0') 
                 end), 
                 tipo_ident, nro_ident, nom_cliente, telf_cliente,
                 dir_cliente, correo_cliente, ciu_cliente, 
                 ifnull((select valor from parametros where id=1),0.12) as valiva, 
                 subconiva, subsiniva, desc_monto,
                 descsubconiva, descsubsiniva, montoiva, 
                 round(descsubconiva + descsubsiniva + montoiva + round((descsubconiva + descsubsiniva) * ifnull((select valor from parametros where id=13),0) / 100 ,2),2) as montototal, now(), 
                 idusu, 1, ifnull(idmesa,0) , id_cliente, vtipcancelacion,
                 round((descsubconiva + descsubsiniva) * ifnull((select valor from parametros where id=13),0) / 100 ,2) as impuestoadicional,
                 s.id_empresa, p.id_sucursal, c.id_puntoemision, t.id_caja, vcambio, t.nro_orden, 
                 ifnull(t.id_vendedor,idusu), t.observaciones, t.placa_matricula
            FROM venta_tmp t
            INNER JOIN caja_efectivo c on c.id_caja = t.id_caja
            INNER JOIN punto_emision p on p.id_puntoemision = c.id_puntoemision
            INNER JOIN sucursal s on s.id_sucursal = p.id_sucursal
            where idusu = vusu;
                                              
            set vid = (select last_insert_id());
/*
            IF vtipodoc = 2 then
              UPDATE punto_emision SET consecutivo_factura = consecutivo_factura + 1
                WHERE id_puntoemision = IFNULL((SELECT id_puntoemision FROM caja_efectivo c
                                                 INNER JOIN venta_tmp t on t.id_caja = c.id_caja
                                                 WHERE idusu = vusu),1);            
            ELSE                                                   
              UPDATE punto_emision SET consecutivo_notaventa = consecutivo_notaventa + 1 
                WHERE id_puntoemision = IFNULL((SELECT id_puntoemision FROM caja_efectivo c
                                                 INNER JOIN venta_tmp t on t.id_caja = c.id_caja
                                                 WHERE idusu = vusu),1);            
            END IF;                                                 
*/
            set done = 0;
            open curdet;
            detLoop: loop
                fetch curdet into viddetalle;
                if done = 1 then leave detLoop; end if;
            
                  INSERT INTO venta_detalle (id_venta, id_producto, cantidad, precio, subtotal, iva, montoiva, descmonto, 
                                             descsubtotal, id_almacen, tipprecio, porcdesc, descripcion, subsidio,
                                             costo_unitario, costo_total)
                    SELECT vid, d.id_producto, d.cantidad, d.precio, d.subtotal, d.iva, d.montoiva, d.descmonto, 
                           d.descsubtotal, d.id_almacen, d.tipprecio, d.porcdesc, d.descripcion,
                           ROUND(IFNULL(p.subsidio,0) * d.cantidad,2),
                           p.pro_preciocompra, round(p.pro_preciocompra * d.cantidad, 2) 
                      FROM venta_detalle_tmp d
                      INNER JOIN venta_tmp v on v.id_venta = d.id_venta
                      INNER JOIN producto p on p.pro_id = d.id_producto
                      WHERE v.idusu = vusu AND d.id_detalle = viddetalle;

                  set vidreg = (select last_insert_id());
                                               
                  UPDATE producto_serie s
                    INNER JOIN venta_detalle_tmp d on d.id_serie = s.id_serie
                    SET s.id_detalleventa = vidreg, id_estado = 2
                    WHERE d.id_detalle = viddetalle;    
            end loop detLoop;
            close curdet;    

            set done = 0;
            open cur1;
            igmLoop: loop
                fetch cur1 into vidreg;
                if done = 1 then leave igmLoop; end if;

              INSERT INTO venta_formapago (id_venta, id_formapago, monto, fecha, nro_comprobante, id_cajapago) 
              SELECT vid, id_formapago, 
                         case when id_tipcancelacion=1 and id_formapago=1 
                           then monto - vcambio
                           else monto
                         end, 
                         now(), 
                         ifnull((select consecutivo_comprobpago from punto_emision e
                                      INNER JOIN caja_efectivo c on c.id_puntoemision = e.id_puntoemision
                                      INNER JOIN venta_tmp t on t.id_caja = c.id_caja
                                      WHERE idusu = vusu LIMIT 1),1),
                         (SELECT id_caja FROM venta_tmp WHERE idusu = vusu)                                      
              FROM formapago_tmp 
              WHERE idreg = vidreg;
                                
              set vidabono = (select last_insert_id());
                
              UPDATE punto_emision set consecutivo_comprobpago=ifnull(consecutivo_comprobpago,1)+1 
                  WHERE id_puntoemision = (SELECT id_puntoemision FROM caja_efectivo c
                                                 INNER JOIN venta_tmp t on t.id_caja = c.id_caja
                                                 WHERE idusu = vusu LIMIT 1);
                                
              INSERT INTO venta_formapagobanco (id_abono, id_banco, fechaemision, fechacobro, numerocuenta, 
                              numerodocumento, descripciondocumento) 
              SELECT vidabono, id_banco, fechaemision, fechacobro, numerocuenta, numerodocumento, descripciondocumento 
              FROM formapago_tmp t
                  INNER JOIN formapago f on f.id_formapago = t.id_formapago
              WHERE idreg = vidreg and esinstrumentobanco = 1;

              INSERT INTO venta_formapagotarjeta (id_abono, id_tarjeta, id_banco, fechaemision, numerotarjeta, 
                                numerodocumento, descripciondocumento) 
              SELECT vidabono, id_tarjeta, id_banco, fechaemision, numerotarjeta, numerodocumento, descripciondocumento 
              FROM formapago_tmp t
                  INNER JOIN formapago f on f.id_formapago = t.id_formapago
              WHERE idreg = vidreg and estarjeta = 1;

              if vtipcancelacion = 2 then 
                  INSERT INTO venta_creditoabonoinicial (id_abono) Values(vidabono); 
              end if;

            end loop igmLoop;
            close cur1;    
                                                  
            if vtipcancelacion = 2 then 
            INSERT INTO venta_credito (id_venta, fechalimite, dias, p100interes_credito, p100interes_mora,
                                         cantidadcuotas, abonoinicial, montobasecredito, montointerescredito,
                                         montocredito, id_estado)
                SELECT vid, fechalimite, dias, p100interes_credito, p100interes_mora,
                       cantidadcuotas, abonoinicial, montobasecredito, montointerescredito,
                       montocredito, 1
                  FROM venta_credito_tmp t                       
                  INNER JOIN venta_tmp v on v.id_venta = t.id_venta
                  where v.idusu = vusu;
                  
            INSERT INTO venta_creditocuota (id_venta, fechalimite, monto)
                SELECT vid, fechalimite, monto
                  FROM venta_creditocuota_tmp t                       
                  INNER JOIN venta_tmp v on v.id_venta = t.id_venta
                  where v.idusu = vusu;
                  
            end if;
            
            /*DELETE FROM pedido WHERE id_mesa = ifnull((SELECT idmesa FROM venta_tmp where idusu = vusu),0);
            DELETE FROM pedido_detalle WHERE id_mesa = ifnull((SELECT idmesa FROM venta_tmp where idusu = vusu),0);*/
            
            DELETE FROM formapago_tmp WHERE id_venta in (select id_venta from venta_tmp where idusu = vusu);
            DELETE FROM venta_creditocuota_tmp WHERE id_venta in (select id_venta from venta_tmp where idusu = vusu);
            DELETE FROM venta_credito_tmp WHERE id_venta in (select id_venta from venta_tmp where idusu = vusu);
            
            DELETE FROM venta_detalle_tmp WHERE id_venta in (select id_venta from venta_tmp where idusu = vusu);
            DELETE FROM venta_tmp where idusu = vusu;
            
            IF vidprof > 0 THEN
              UPDATE proforma SET id_factura = vid WHERE id_proforma = vidprof;
            END IF;  
            
            IF vidservicio > 0 THEN
              UPDATE servicio SET id_venta = vid, id_estado = 5 WHERE id_servicio = vidservicio;
            END IF;  

            IF vtipodoc = 2 then
              UPDATE punto_emision SET consecutivo_factura = consecutivo_factura + 1
                WHERE id_puntoemision = vidptoemi;            
            ELSE                                                   
              UPDATE punto_emision SET consecutivo_notaventa = consecutivo_notaventa + 1 
                WHERE id_puntoemision = vidptoemi;            
            END IF;                                                 


            COMMIT;

            SELECT vid;

          END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for formapago_del
-- ----------------------------
DROP PROCEDURE IF EXISTS `formapago_del`;
DELIMITER ;;
CREATE PROCEDURE `formapago_del`(

vid int

)
BEGIN

  DECLARE EXIT handler for sqlexception select 0; 

  delete from formapago where id_formapago=vid;

  select 1;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for formapago_ins
-- ----------------------------
DROP PROCEDURE IF EXISTS `formapago_ins`;
DELIMITER ;;
CREATE PROCEDURE `formapago_ins`(

vcod varchar(45),

vnom varchar(45)

)
BEGIN

  DECLARE EXIT handler for sqlexception select 0; 

  INSERT INTO formapago(cod_formapago, nombre_formapago) 

    VALUES(vcod,vnom);

  select last_insert_id();

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for formapago_upd
-- ----------------------------
DROP PROCEDURE IF EXISTS `formapago_upd`;
DELIMITER ;;
CREATE PROCEDURE `formapago_upd`(

vid int,

vcod varchar(45),

vnom varchar(45)

)
BEGIN

  DECLARE EXIT handler for sqlexception select 0; 

  update formapago set cod_formapago=vcod, nombre_formapago=vnom 

    where id_formapago=vid;

  select 1;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for gastos_ins
-- ----------------------------
DROP PROCEDURE IF EXISTS `gastos_ins`;
DELIMITER ;;
CREATE PROCEDURE `gastos_ins`(
          vsucursal int,
          vfecha date, 
          vproveedor int,
          vfactura varchar(255), 
          vautorizacion varchar(255), 
          vdescripcion text,
          vtipocompra varchar(255), 
          vapiva tinyint(1),
          vsubtotal double, 
          vsubtotaliva0 double, 
          vdescuento double, 
          vsubtotaldesc double, 
          vsubtotaliva0desc double, 
          vmontoiva double,  
          vtotal double, 
          vidusu int,
          vestatus varchar(255),
          vdias int,
          vfechapago date,
          vcategoria int,
          vtipodoc varchar(6),
          vsustento varchar(6))
BEGIN
            declare vid int;                                                      
            DECLARE EXIT handler for sqlexception select 0; 

            INSERT INTO gastos (fecha, id_proveedor, nro_factura, nro_autorizacion, descripcion, 
                                tipo_compra, apiva, subtotal, subtotalivacero, descuento, subtotaldesc, subtotalivacerodesc,
                                montoiva, total, id_usu, estatus, dias, fecha_pago, categoria, cod_sri_tipo_doc, cod_sri_sust_comprobante, id_sucursal)
                   VALUE (vfecha, vproveedor, vfactura, vautorizacion, vdescripcion, 
                          vtipocompra, vapiva, vsubtotal, vsubtotaliva0, vdescuento, vsubtotaldesc, vsubtotaliva0desc, 
                          vmontoiva, vtotal, vidusu, vestatus, vdias, vfechapago, vcategoria, vtipodoc, vsustento, vsucursal); 

            set vid=(select last_insert_id());
            select vid;

          END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for gastos_upd
-- ----------------------------
DROP PROCEDURE IF EXISTS `gastos_upd`;
DELIMITER ;;
CREATE PROCEDURE `gastos_upd`(
          vsucursal int,
          vfecha date, 
          vproveedor int,
          vfactura varchar(255), 
          vautorizacion varchar(255), 
          vdescripcion text,
          vtipocompra varchar(255), 
          vapiva tinyint(1),
          vsubtotal double, 
          vsubtotaliva0 double, 
          vdescuento double, 
          vsubtotaldesc double, 
          vsubtotaliva0desc double, 
          vmontoiva double,  
          vtotal double, 
          vidusu int,
          vestatus varchar(255),
          vdias int,
          vfechapago date,
          vcategoria int,
          vtipodoc varchar(6),
          vsustento varchar(6),
          vidgastos int)
BEGIN                                                         
            DECLARE EXIT handler for sqlexception select 0; 

            UPDATE gastos SET fecha = vfecha, 
                    id_proveedor = vproveedor, 
                    id_sucursal = vsucursal, 
                    nro_factura = vfactura, 
                    nro_autorizacion = vautorizacion, 
                    descripcion = vdescripcion, 
                    tipo_compra = vtipocompra, 
                    apiva = vapiva, 
                    subtotal = vsubtotal, 
                    subtotalivacero = vsubtotaliva0, 
                    descuento = vdescuento, 
                    subtotaldesc = vsubtotaldesc, 
                    subtotalivacerodesc = vsubtotaliva0desc,
                    montoiva = vmontoiva, 
                    total = vtotal, 
                    id_usu = vidusu, 
                    estatus = vestatus, 
                    dias = vdias, 
                    fecha_pago = vfechapago, 
                    categoria = vcategoria,
                    cod_sri_tipo_doc = vtipodoc, 
                    cod_sri_sust_comprobante = vsustento
                WHERE id_gastos = vidgastos; 

           select 1;

          END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for gasto_null
-- ----------------------------
DROP PROCEDURE IF EXISTS `gasto_null`;
DELIMITER ;;
CREATE PROCEDURE `gasto_null`(
vidgasto int, 
vidusu int,
vcausa text
)
BEGIN
  DECLARE EXIT handler for sqlexception select 0;
  
  /*START TRANSACTION;*/
 
  UPDATE gastos set estatus = 3 WHERE id_gastos = vidgasto;
  
  INSERT INTO gasto_anulado (idgasto, idusuario, fecha, causa_anulacion)
    VALUES (vidgasto, vidusu, now(), vcausa);

  /*COMMIT;*/
  
  select 1;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for gen_altertable
-- ----------------------------
DROP PROCEDURE IF EXISTS `gen_altertable`;
DELIMITER ;;
CREATE PROCEDURE `gen_altertable`(
vtabla text, 
vcolumna text,
vtipodato text,
vconsulta text
)
BEGIN
  DECLARE EXIT handler for sqlexception select 0;
  
  /*START TRANSACTION;*/
  
  SET @s = CONCAT('ALTER TABLE `',vtabla,'`',' ADD `',vcolumna,'` ',vtipodato);
  PREPARE stmtd FROM @s;
  EXECUTE stmtd;  
  
  select 1;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for inventariomovimiento_guardar
-- ----------------------------
DROP PROCEDURE IF EXISTS `inventariomovimiento_guardar`;
DELIMITER ;;
CREATE PROCEDURE `inventariomovimiento_guardar`(
          vidmov int,
          vfecha datetime,
          vtipodoc int)
BEGIN
          
            declare vid int;                                                      
          
            DECLARE EXIT handler for sqlexception select 0; 
            
            UPDATE contador SET valor = valor WHERE id_contador = vtipodoc;
          
            INSERT INTO inventariodocumento (id_tipodoc, id_usu, fecha, nro_documento, descripcion, total, 
                                             estatus, fecharegistro, id_almacen, idcategoriacontable) 
              SELECT id_tipodoc, id_usu, vfecha, 
                     (select concat(prefijo,'-',LPAD(valor, 9, '0')) from contador where id_contador=vtipodoc) as nro,
                     descripcion, montototal, 1, now(), id_almacen, idcategoriacontable 
                FROM  tmp_movinv WHERE id_mov = vidmov;
          
            set vid=(select last_insert_id());
            
              UPDATE contador SET valor = valor + 1 WHERE id_contador = vtipodoc;
            
            INSERT INTO inventariodocumento_detalle (id_documento, id_pro, precio_compra, cantidad, id_unimed, montototal, id_serie)
              SELECT vid, id_pro, precio_compra, cantidad, id_unimed, montototal, id_serie
                FROM  tmp_movinv_det WHERE id_mov = vidmov;
                
            INSERT INTO almapro (id_pro, id_alm, existencia, id_unimed)
              select p.pro_id, t.id_almacen, 0, p.pro_idunidadmedida from producto p
                inner join tmp_movinv_det d on d.id_pro = p.pro_id
                inner join tmp_movinv t on t.id_mov = d.id_mov
                where t.id_mov = vidmov and
                      not exists (select * from almapro where id_pro = pro_id and id_alm = t.id_almacen);               
                     
            select vid;
          
          END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for kardexegreso_ins
-- ----------------------------
DROP PROCEDURE IF EXISTS `kardexegreso_ins`;
DELIMITER ;;
CREATE PROCEDURE `kardexegreso_ins`(
            vidpro int, 
            vdocumento varchar(255), 
            vdetalle varchar(255), 
            vcantidad decimal(11,2),
            vvalorunitario decimal(15,6), 
            vcostototal decimal(11,2), 
            vunidad int,
            vidusu int)
BEGIN
              declare vsaldocant decimal(11,2);  
              declare vsaldovalorunit decimal(11,2);  
              declare vsaldocosto decimal(11,2);  
              declare vid int;                                                      

              DECLARE EXIT handler for sqlexception select 0; 

              if (vcantidad != 0) then
                set vvalorunitario = round(vcostototal / vcantidad, 6); 
              else  
                set vvalorunitario = 0;
              end if;
              
              set vsaldocant = 0;
              set vsaldovalorunit = 0;
              set vsaldocosto = 0;
              
              set @maxid = ifnull((select max(id_kardex) as maxid from kardex where id_producto = vidpro), 0);
              if (@maxid > 0) then
                set vsaldocant  = ifnull((select saldocantidad from kardex where id_kardex = @maxid),0);                                                      
                set vsaldovalorunit = ifnull((select saldovalorunitario from kardex where id_kardex = @maxid),0);                                                      
                set vsaldocosto  = ifnull((select saldocostototal from kardex where id_kardex = @maxid),0);                                                      
              end if;  

              set vsaldocant = vsaldocant - vcantidad;
              set vsaldocosto = vsaldocosto - vcostototal;
              if (vsaldocant > 0) then
                  set vsaldovalorunit = round(vsaldocosto / vsaldocant,2);
              else 
                  set vsaldocant = 0;
                  set vsaldovalorunit = 0;
                  set vsaldocosto = 0;
              end if;  
                
              INSERT INTO kardex (id_producto, documento, detalle, tipomovimiento, 
                                 cantidad, valorunitario, costototal, saldocantidad, 
                                 saldovalorunitario, saldocostototal, idunidadstock, idusuario)
                  VALUE (vidpro, vdocumento, vdetalle, 0, vcantidad, 
                           vvalorunitario, vcostototal, vsaldocant, 
                       vsaldovalorunit, vsaldocosto, vunidad, vidusu); 

              set vid=(select last_insert_id());

              select vid;

            END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for kardexingreso_ins
-- ----------------------------
DROP PROCEDURE IF EXISTS `kardexingreso_ins`;
DELIMITER ;;
CREATE PROCEDURE `kardexingreso_ins`(
            vidpro int, 
            vdocumento varchar(255), 
            vdetalle varchar(255), 
            vcantidad decimal(11,2),
            vvalorunitario decimal(15,6), 
            vcostototal decimal(11,2), 
            vunidad int,
            vidusu int)
BEGIN
              declare vsaldocant decimal(11,2);  
              declare vsaldovalorunit decimal(11,2);  
              declare vsaldocosto decimal(11,2);  
              declare vid int;                                                      

              DECLARE EXIT handler for sqlexception select 0; 
              
              if (vcantidad != 0) then
                set vvalorunitario = round(vcostototal / vcantidad, 6); 
              else  
                set vvalorunitario = 0;
              end if;

              set vsaldocant = 0;
              set vsaldovalorunit = 0;
              set vsaldocosto = 0;
              
              set @maxid = ifnull((select max(id_kardex) as maxid from kardex  where id_producto = vidpro), 0);
              if (@maxid > 0) then
                set vsaldocant  = ifnull((select saldocantidad from kardex where id_kardex = @maxid),0);                                                      
                set vsaldovalorunit = ifnull((select saldovalorunitario from kardex where id_kardex = @maxid),0);                                                      
                set vsaldocosto  = ifnull((select saldocostototal from kardex where id_kardex = @maxid),0);                                                      
              end if;  

              set vsaldocant = vsaldocant + vcantidad;
              set vsaldocosto = vsaldocosto + vcostototal;
              set vsaldovalorunit = vsaldovalorunit + vvalorunitario;
              if (vsaldocant > 0) then
                  set vsaldovalorunit = round(vsaldocosto / vsaldocant,2);
              else 
                  set vsaldocant = 0;
                  set vsaldovalorunit = 0;
                  set vsaldocosto = 0;
              end if;  
                
              INSERT INTO kardex (id_producto, documento, detalle, tipomovimiento, 
                                 cantidad, valorunitario, costototal, saldocantidad, 
                                 saldovalorunitario, saldocostototal, idunidadstock, idusuario)
                  VALUE (vidpro, vdocumento, vdetalle, 1, vcantidad, 
                           vvalorunitario, vcostototal, vsaldocant, 
                       vsaldovalorunit, vsaldocosto, vunidad, vidusu); 

              set vid=(select last_insert_id());

              select vid;

            END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for login
-- ----------------------------
DROP PROCEDURE IF EXISTS `login`;
DELIMITER ;;
CREATE PROCEDURE `login`(vlogusu varchar(255), vpasusu varchar(255))
BEGIN
                      DECLARE vidusu INT;
                      DECLARE vdias INT;
                      DECLARE vtiempo INT;
                        DECLARE EXIT handler for sqlexception select 0;
                      
                      SET vidusu = IFNULL((SELECT id_usu FROM usu_sistemas WHERE log_usu = vlogusu AND pwd_usu = MD5(vpasusu)), 0);
                      SET vdias = IFNULL((SELECT DATEDIFF(NOW(),ultimoacceso) FROM usu_sistemas WHERE id_usu = vidusu), 0);    
                      SET vtiempo = 0;
                      IF vdias <= 1 THEN
                              SET vtiempo = IFNULL((SELECT TIME_TO_SEC(TIMEDIFF(NOW(),ultimoacceso)) AS difseg FROM usu_sistemas WHERE id_usu = vidusu), 0);    
                      END IF;
                      IF vidusu <> 0 THEN 
                              IF (vdias > 1) OR (vtiempo > 12) THEN     
                                    SELECT *, 1 AS val FROM usu_sistemas WHERE log_usu = vlogusu AND pwd_usu = MD5(vpasusu); 
                              ELSE 
                                    SELECT 999999999 AS val;
                              END IF;
                        ELSE 
                              SELECT 0 AS val;
                        END IF;     
                  END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for mesa_del
-- ----------------------------
DROP PROCEDURE IF EXISTS `mesa_del`;
DELIMITER ;;
CREATE PROCEDURE `mesa_del`(

vid int

)
BEGIN

  DECLARE EXIT handler for sqlexception select 0; 

  delete from mesa where id_mesa=vid;

  select 1;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for mesa_ins
-- ----------------------------
DROP PROCEDURE IF EXISTS `mesa_ins`;
DELIMITER ;;
CREATE PROCEDURE `mesa_ins`(

vnom varchar(255),

varea int,

vcap varchar(255),

vimp int

)
BEGIN

  DECLARE EXIT handler for sqlexception select 0; 

  INSERT INTO mesa (nom_mesa, id_area, capacidad, id_comanda)

    VALUES(vnom, varea, vcap, vimp);

  select last_insert_id();

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for mesa_sel
-- ----------------------------
DROP PROCEDURE IF EXISTS `mesa_sel`;
DELIMITER ;;
CREATE PROCEDURE `mesa_sel`()
BEGIN

  SELECT m.id_mesa, m.nom_mesa, m.capacidad, a.nom_area 

                     FROM mesa m

                     INNER JOIN area a ON a.id_area = m.id_area;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for mesa_upd
-- ----------------------------
DROP PROCEDURE IF EXISTS `mesa_upd`;
DELIMITER ;;
CREATE PROCEDURE `mesa_upd`(

vid int,

vnom varchar(255),

varea int,

vcap varchar(255),

vimp int

)
BEGIN

  DECLARE EXIT handler for sqlexception select 0; 

  update mesa set nom_mesa=vnom, id_area=varea, capacidad=vcap, id_comanda=vimp

    where id_mesa=vid;

  select 1;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for mesero_del
-- ----------------------------
DROP PROCEDURE IF EXISTS `mesero_del`;
DELIMITER ;;
CREATE PROCEDURE `mesero_del`(

vid int

)
BEGIN

  DECLARE EXIT handler for sqlexception select 0; 

  delete from mesero where id_mesero=vid;

  select 1;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for mesero_ins
-- ----------------------------
DROP PROCEDURE IF EXISTS `mesero_ins`;
DELIMITER ;;
CREATE PROCEDURE `mesero_ins`(

vtipide varchar(100), 

vnroide varchar(255), 

vnombre varchar(100), 

vtelf varchar(100), 

vcorreo varchar(100), 

vdir varchar(100), 

vfot longblob, 

vest varchar(3))
BEGIN

  DECLARE EXIT handler for sqlexception select 0; 

  INSERT INTO mesero (tipo_ident_mesero, ced_mesero, nom_mesero, telf_mesero,

                      correo_mesero, direccion_mesero, foto_mesero, estatus_mesero) 

    VALUES (vtipide, vnroide, vnombre, vtelf, vcorreo, vdir, vfot, vest);

  select last_insert_id();

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for mesero_upd
-- ----------------------------
DROP PROCEDURE IF EXISTS `mesero_upd`;
DELIMITER ;;
CREATE PROCEDURE `mesero_upd`(

vid int,

vtipide varchar(100), 

vnroide varchar(255), 

vnombre varchar(100), 

vtelf varchar(100), 

vcorreo varchar(100), 

vdir varchar(100), 

vfot longblob, 

vest varchar(3))
BEGIN

  DECLARE EXIT handler for sqlexception select 0; 

  update mesero set

    tipo_ident_mesero=vtipide, ced_mesero=vnroide, 

    nom_mesero=vnombre, telf_mesero=vtelf,

    correo_mesero=vcorreo, direccion_mesero=vdir, 

    foto_mesero=vfot, estatus_mesero=vest

    where id_mesero=vid;

  select 1;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pedido_det_ins
-- ----------------------------
DROP PROCEDURE IF EXISTS `pedido_det_ins`;
DELIMITER ;;
CREATE PROCEDURE `pedido_det_ins`(
    vidpro int,
    vidalm int,
    vid_mesa int
)
BEGIN

  declare vid int;                                                      

  DECLARE EXIT handler for sqlexception select 0; 

	INSERT INTO pedido_detalle (id_mesa, id_producto, cantidad, precio, estatus, variante, id_almacen)

	SELECT vid_mesa, pro_id, 1, pro_precioventa, '0', habilitavariante, vidalm 
      FROM producto WHERE pro_id = vidpro ;

  set vid=(select last_insert_id());

  select vid;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for proforma_del
-- ----------------------------
DROP PROCEDURE IF EXISTS `proforma_del`;
DELIMITER ;;
CREATE PROCEDURE `proforma_del`(vid INT)
BEGIN

  DECLARE EXIT handler for sqlexception select 0 as res; 
  
  DELETE FROM proforma_detalle WHERE id_proforma = vid; 

  DELETE FROM proforma WHERE id_proforma = vid; 
  
  SELECT 1 as res;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for proforma_facturar
-- ----------------------------
DROP PROCEDURE IF EXISTS `proforma_facturar`;
DELIMITER ;;
CREATE PROCEDURE `proforma_facturar`(idprof INT, vidusu INT, caja INT)
BEGIN
                        declare vid int;
                        DECLARE EXIT handler for sqlexception select 0 as vid; 
                      set vid = 999999;

                      DELETE FROM venta_tmp WHERE idusu = vidusu;

                      INSERT INTO venta_tmp (fecha,mesa,mesero,tipo_doc,nro_factura,tipo_ident,
                                             nro_ident,nom_cliente,telf_cliente,dir_cliente,correo_cliente,
                                             ciu_cliente,valiva,subconiva,subsiniva,desc_monto,descsubconiva,
                                             descsubsiniva,montoiva,montototal,fecharegistro,idusu,idmesa,id_cliente, 
                                             id_proforma, id_caja, id_vendedor, observaciones)
                          SELECT p.fecha, nom_mesa, nom_mesero, 2, '', c.tipo_ident_cliente, c.ident_cliente, c.nom_cliente, 
                                 c.telefonos_cliente, c.direccion_cliente, c.correo_cliente, c.ciudad_cliente,
                                   p.valiva, p.subconiva, p.subsiniva, p.desc_monto, p.descsubconiva, p.descsubsiniva, 
                                   p.montoiva, p.montototal, now(), vidusu, p.id_puntoventa, p.id_cliente, p.id_proforma, 
                                   caja, p.id_vendedor, p.observaciones
                        FROM proforma p
                        LEFT JOIN mesa m on m.id_mesa = p.id_puntoventa
                        LEFT JOIN mesero s on s.id_mesero = p.id_vendedor
                        LEFT JOIN clientes c on c.id_cliente = p.id_cliente
                          WHERE id_proforma = idprof; 
                                                                  
                      set vid = (select last_insert_id());                            
                                                  
                        INSERT INTO venta_detalle_tmp (id_venta, id_producto, cantidad, precio, subtotal, iva, montoiva, 
                                                       descmonto, descsubtotal, id_almacen, tipprecio, precio_base, porcdesc, 
                                                       descripcion)
                          SELECT  vid, id_producto, cantidad, precio, subtotal, iva, pd.montoiva, descmonto, 
                                      descsubtotal, id_almacen, tipprecio, precio, porcdesc, descripcion
                                FROM proforma_detalle pd
                                WHERE id_proforma = idprof;    
                                      

                    SELECT vid;

                  END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for proforma_ins
-- ----------------------------
DROP PROCEDURE IF EXISTS `proforma_ins`;
DELIMITER ;;
CREATE PROCEDURE `proforma_ins`(vusu INT)
BEGIN
                    DECLARE vid INT;
                    DECLARE vcont INT;

                    DECLARE EXIT handler for sqlexception select 0; 
                    
                        SET vcont = (SELECT valor FROM contador WHERE id_contador = 6);
                    
                        INSERT INTO proforma (fecha, nro_proforma, id_cliente, id_vendedor, id_puntoventa, valiva, subconiva, 
                                                        subsiniva, desc_monto, descsubconiva, descsubsiniva, montoiva, montototal, 
                                                        fecharegistro, idusu, id_factura, observaciones, id_sucursal)
                        SELECT date(Now()), vcont, id_cliente, id_vendedor, id_puntoventa, valiva, subconiva, 
                                           subsiniva, desc_monto, descsubconiva, descsubsiniva, montoiva, montototal, fecharegistro, 
                                           idusu, id_factura, observaciones, id_sucursal 
                        FROM proforma_tmp
                        WHERE idusu = vusu;
                                                                        
                        SET vid = (SELECT last_insert_id());
                      
                        INSERT INTO proforma_detalle (id_proforma, id_producto, cantidad, precio, subtotal, iva, montoiva, descmonto, 
                                                    descsubtotal, id_almacen, tipprecio, descripcion, porcdesc)
                                                    SELECT  vid, id_producto, cantidad, precio, subtotal, iva, pd.montoiva, descmonto, 
                                                            descsubtotal, id_almacen, tipprecio, descripcion, porcdesc
                                                    FROM proforma_detalle_tmp pd
                                                    INNER JOIN proforma_tmp pt ON pt.id_proforma = pd.id_proforma
                                                    WHERE pt.idusu = vusu ;   
                       
                      UPDATE contador SET valor = valor + 1 WHERE id_contador = 6;   
                      
                        DELETE FROM proforma_detalle_tmp WHERE id_proforma IN (SELECT id_proforma from proforma_tmp WHERE idusu = vusu);
                      DELETE FROM proforma_tmp WHERE idusu = vusu;    
                      SELECT vid;
                 END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for proforma_sel_id
-- ----------------------------
DROP PROCEDURE IF EXISTS `proforma_sel_id`;
DELIMITER ;;
CREATE PROCEDURE `proforma_sel_id`(vusu INT, idprof INT)
BEGIN
                        DECLARE vid INT;
                        DECLARE EXIT handler for sqlexception select 0; 
                    
                        DELETE FROM proforma_detalle_tmp WHERE id_proforma IN (SELECT id_proforma from proforma_tmp WHERE idusu = vusu);
                      DELETE FROM proforma_tmp WHERE idusu = vusu;      
                    
                        INSERT INTO proforma_tmp (id_proftmp, fecha, nro_proforma, id_cliente, id_vendedor, id_puntoventa, valiva, subconiva, 
                                                        subsiniva, desc_monto, descsubconiva, descsubsiniva, montoiva, montototal, 
                                                        fecharegistro, idusu, id_factura, observaciones, id_sucursal)
                        SELECT id_proforma, fecha, nro_proforma, id_cliente, id_vendedor, id_puntoventa, valiva, subconiva, 
                                           subsiniva, desc_monto, descsubconiva, descsubsiniva, montoiva, montototal, fecharegistro, 
                                           vusu, id_factura, observaciones, id_sucursal 
                        FROM proforma
                        WHERE id_proforma = idprof;
                      
                      SET vid = (SELECT last_insert_id());
                                                                        
                        INSERT INTO proforma_detalle_tmp (id_proforma, id_producto, cantidad, precio, subtotal, iva, montoiva, descmonto, 
                                                    descsubtotal, id_almacen, tipprecio, descripcion, porcdesc)
                                                    SELECT vid, id_producto, cantidad, precio, subtotal, iva, pd.montoiva, descmonto, 
                                                            descsubtotal, id_almacen, tipprecio, descripcion, porcdesc
                                                    FROM proforma_detalle pd
                                                    INNER JOIN proforma pt ON pt.id_proforma = pd.id_proforma
                                                    WHERE pt.id_proforma = idprof;    
                      
                      SELECT idprof;
                  END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for proforma_upd_id
-- ----------------------------
DROP PROCEDURE IF EXISTS `proforma_upd_id`;
DELIMITER ;;
CREATE PROCEDURE `proforma_upd_id`(vusu INT, idprof INT)
BEGIN
                        DECLARE EXIT handler for sqlexception select 0; 
  
                        UPDATE proforma p
                        INNER JOIN proforma_tmp pt ON pt.idusu = vusu
                        SET p.fecha = pt.fecha,
                              p.id_cliente = pt.id_cliente, 
                              p.id_vendedor = pt.id_vendedor, 
                              p.id_puntoventa = pt.id_puntoventa, 
                              p.valiva = pt.valiva, 
                              p.subconiva = pt.subconiva, 
                              p.subsiniva = pt.subsiniva, 
                              p.desc_monto = pt.desc_monto, 
                              p.descsubconiva = pt.descsubconiva, 
                              p.descsubsiniva = pt.descsubsiniva, 
                              p.montoiva = pt.montoiva, 
                              p.montototal = pt.montototal, 
                              p.fecharegistro = pt.fecharegistro, 
                              p.id_sucursal = pt.id_sucursal, 
                              p.idusu = pt.idusu,
                          p.observaciones = pt.observaciones
                        WHERE p.id_proforma = idprof; 
                      
                      DELETE FROM proforma_detalle WHERE id_proforma = idprof;
                                                                        
                        INSERT INTO proforma_detalle (id_proforma, id_producto, cantidad, precio, subtotal, iva, montoiva, descmonto, 
                                                    descsubtotal, id_almacen, tipprecio, descripcion, porcdesc)
                                                    SELECT  pt.id_proftmp, id_producto, cantidad, precio, subtotal, iva, pd.montoiva, descmonto, 
                                                            descsubtotal, id_almacen, tipprecio, descripcion, porcdesc
                                                    FROM proforma_detalle_tmp pd
                                                    INNER JOIN proforma_tmp pt ON pt.id_proforma = pd.id_proforma
                                                    WHERE pt.idusu = vusu/*pt.id_proftmp = idprof*/;    
                                                    
                        DELETE FROM proforma_detalle_tmp WHERE id_proforma IN (SELECT id_proforma from proforma_tmp WHERE idusu = vusu);
                      DELETE FROM proforma_tmp WHERE idusu = vusu;                                                      
                      
                      SELECT idprof;
                  END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for proveedor_del
-- ----------------------------
DROP PROCEDURE IF EXISTS `proveedor_del`;
DELIMITER ;;
CREATE PROCEDURE `proveedor_del`(

vid int

)
BEGIN

  DECLARE EXIT handler for sqlexception select 0; 

  delete from proveedor where id_proveedor=vid;        

  select 1;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for proveedor_ins
-- ----------------------------
DROP PROCEDURE IF EXISTS `proveedor_ins`;
DELIMITER ;;
CREATE PROCEDURE `proveedor_ins`(
            vnombre varchar(255),
            vtipo varchar(3),
            videntificador varchar(255),
            vrazonsocial varchar(255),
            vtelefono varchar(255),
            vcorreo varchar(255),
            vciudad varchar(255),
            vdireccion longtext,
            vrelacionada tinyint,
            vcategoriacontable int
            )
BEGIN
              DECLARE EXIT handler for sqlexception select 0; 

              insert into proveedor (nom_proveedor, tip_ide_proveedor, nro_ide_proveedor,
                                     razon_social, telf_proveedor, correo_proveedor,
                                     ciudad_proveedor, direccion_proveedor, relacionada,
                                     idcategoriacontable) 
                values (vnombre, vtipo, videntificador, vrazonsocial, vtelefono,
                        vcorreo, vciudad, vdireccion, vrelacionada, vcategoriacontable);

              select last_insert_id();
            END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for proveedor_sel
-- ----------------------------
DROP PROCEDURE IF EXISTS `proveedor_sel`;
DELIMITER ;;
CREATE PROCEDURE `proveedor_sel`()
BEGIN

  DECLARE EXIT handler for sqlexception select 0; 

  select nom_proveedor, tip_ide_proveedor, nro_ide_proveedor,

         razon_social, telf_proveedor, correo_proveedor,

         ciudad_proveedor, direccion_proveedor, relacionada

     from proveedor;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for proveedor_upd
-- ----------------------------
DROP PROCEDURE IF EXISTS `proveedor_upd`;
DELIMITER ;;
CREATE PROCEDURE `proveedor_upd`(
            vid int,
            vnombre varchar(255),
            vtipo varchar(3),
            videntificador varchar(255),
            vrazonsocial varchar(255),
            vtelefono varchar(255),
            vcorreo varchar(255),
            vciudad varchar(255),
            vdireccion longtext,
            vrelacionada tinyint,
            vcategoriacontable int
            )
BEGIN

              DECLARE EXIT handler for sqlexception select 0; 

              update proveedor set
                nom_proveedor=vnombre, 
                tip_ide_proveedor=vtipo, 
                nro_ide_proveedor=videntificador,
                razon_social=vrazonsocial, 
                telf_proveedor=vtelefono, 
                correo_proveedor=vcorreo,
                ciudad_proveedor=vciudad, 
                direccion_proveedor=vdireccion, 
                relacionada=vrelacionada
                where id_proveedor=vid;        

              IF vcategoriacontable != 0 THEN
                  update proveedor set
                        idcategoriacontable=vcategoriacontable 
                    where id_proveedor=vid;        
              ELSE
                  update proveedor set
                        idcategoriacontable=NULL 
                    where id_proveedor=vid;        
              END IF;    

              select 1;
            END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for servicio_facturar
-- ----------------------------
DROP PROCEDURE IF EXISTS `servicio_facturar`;
DELIMITER ;;
CREATE PROCEDURE `servicio_facturar`(idservicio INT, vidusu INT, vcaja INT)
BEGIN
                      declare vid int;
                      declare vgrabaiva int;
                      declare factoriva decimal(11,2);
                      declare valprodiva decimal(11,2);
                      declare valprodnoiva decimal(11,2);
                      declare costoestimado decimal(11,2);
                      declare vdatoequipo varchar(255);     
                      declare vincluirproducto int;

                      DECLARE EXIT handler for sqlexception select 0 as vid; 
                      set vid = 999999;

                      SET vgrabaiva = IFNULL((SELECT p.pro_grabaiva FROM servicio_config_general g 
                                               LEFT JOIN producto p on p.pro_id = g.producto_servicio_factura LIMIT 1), 0);

                      SET vincluirproducto = IFNULL((SELECT habilita_productofactura FROM servicio_config_general LIMIT 1), 1);
                      
                      SET factoriva = ifnull((select valor from parametros where id=1),0.12);                                               

                      SET valprodiva = ROUND(IFNULL((SELECT SUM(p.pro_precioventa * s.cantidad) FROM servicio_producto s 
                                                 INNER JOIN servicio_detalle d on d.id_detalle = s.id_detalle
                                                 INNER JOIN producto p on p.pro_id = s.id_producto
                                                 WHERE d.id_servicio = idservicio AND p.pro_grabaiva = 1), 0),2);
                      SET valprodnoiva = ROUND(IFNULL((SELECT SUM(p.pro_precioventa * s.cantidad) FROM servicio_producto s 
                                                 INNER JOIN servicio_detalle d on d.id_detalle = s.id_detalle
                                                 INNER JOIN producto p on p.pro_id = s.id_producto
                                                 WHERE d.id_servicio = idservicio AND p.pro_grabaiva = 0), 0),2);

                      SET vdatoequipo = IFNULL((SELECT concat(c.nombre_configdetalle,' ',s.valor) 
                                                 FROM servicio_subdetalle s
                                                 INNER JOIN servicio_detalle d on d.id_detalle = s.id_detalle
                                                 INNER JOIN servicio_config_detalle c on c.id_config = s.id_config
                                                 WHERE d.id_servicio = idservicio
                                                 ORDER BY c.id_config
                                                 LIMIT 1),'');

                      SET costoestimado = IFNULL((SELECT costo_estimado FROM servicio WHERE id_servicio = idservicio), 0);

                      DELETE FROM venta_tmp WHERE idusu = vidusu; 
            
                      IF vincluirproducto = 1 THEN  
                        INSERT INTO venta_tmp (fecha,mesa,mesero,tipo_doc,nro_factura,tipo_ident,
                                             nro_ident,nom_cliente,telf_cliente,dir_cliente,correo_cliente,
                                             ciu_cliente,valiva,subconiva,subsiniva,desc_monto,descsubconiva,descsubsiniva,
                                             montoiva,montototal,fecharegistro,idusu,idmesa,id_cliente, id_caja, id_servicio,
                                             observaciones)
                          SELECT date(NOW()), '', '', 2, '', c.tipo_ident_cliente, c.ident_cliente, c.nom_cliente, c.telefonos_cliente,
                                 c.direccion_cliente, c.correo_cliente, c.ciudad_cliente,
                                 factoriva, 
                                 (vgrabaiva * s.costo_estimado + valprodiva) as subconiva, 
                                 ((1 - vgrabaiva) * s.costo_estimado + valprodnoiva) as subsiniva, 
                                 0, 
                                 (vgrabaiva * s.costo_estimado + valprodiva) as descsubconiva, 
                                 ((1 - vgrabaiva) * s.costo_estimado + valprodnoiva) as descsubsiniva, 
                                 round((vgrabaiva * s.costo_estimado + valprodiva) * factoriva,2) as montoiva, 
                                 s.costo_estimado + valprodiva + valprodnoiva + round((vgrabaiva * s.costo_estimado + valprodiva) * factoriva,2), 
                                 now(), vidusu, 0, s.id_cliente, vcaja, s.id_servicio,
                                 concat('Orden de Servicio: ',s.numero_orden,'   ',vdatoequipo) 
                        FROM servicio s
                        LEFT JOIN clientes c on c.id_cliente = s.id_cliente
                        LEFT JOIN servicio_config_general g on IFNULL(g.producto_servicio_factura,0) <> 0 
                        LEFT JOIN producto p on p.pro_id = g.producto_servicio_factura
                          WHERE id_servicio = idservicio; 
                      ELSE
                        INSERT INTO venta_tmp (fecha,mesa,mesero,tipo_doc,nro_factura,tipo_ident,
                                             nro_ident,nom_cliente,telf_cliente,dir_cliente,correo_cliente,
                                             ciu_cliente,valiva,subconiva,subsiniva,desc_monto,descsubconiva,descsubsiniva,
                                             montoiva,montototal,fecharegistro,idusu,idmesa,id_cliente, id_caja, id_servicio,
                                             observaciones)
                          SELECT date(NOW()), '', '', 2, '', c.tipo_ident_cliente, c.ident_cliente, c.nom_cliente, c.telefonos_cliente,
                                 c.direccion_cliente, c.correo_cliente, c.ciudad_cliente,
                                 factoriva, 
                                 (vgrabaiva * (s.costo_estimado + valprodiva + valprodnoiva)) as subconiva, 
                                 ((1 - vgrabaiva) * (s.costo_estimado + valprodiva + valprodnoiva)) as subsiniva, 
                                 0, 
                                 (vgrabaiva * (s.costo_estimado + valprodiva + valprodnoiva)) as descsubconiva, 
                                 ((1 - vgrabaiva) * (s.costo_estimado + valprodiva + valprodnoiva)) as descsubsiniva, 
                                 round((vgrabaiva * (s.costo_estimado + valprodiva + valprodnoiva)) * factoriva,2) as montoiva, 
                                 s.costo_estimado + valprodiva + valprodnoiva + round((vgrabaiva * (s.costo_estimado + valprodiva + valprodnoiva)) * factoriva,2), 
                                 now(), vidusu, 0, s.id_cliente, vcaja, s.id_servicio,
                                 concat('Orden de Servicio: ',s.numero_orden,'   ',vdatoequipo) 
                        FROM servicio s
                        LEFT JOIN clientes c on c.id_cliente = s.id_cliente
                        LEFT JOIN servicio_config_general g on IFNULL(g.producto_servicio_factura,0) <> 0 
                        LEFT JOIN producto p on p.pro_id = g.producto_servicio_factura
                          WHERE id_servicio = idservicio; 
                      END IF;    
                                                                  
                      set vid = (select last_insert_id());                            
                                                 
                      IF vincluirproducto = 1 THEN  
                        INSERT INTO venta_detalle_tmp (id_venta, id_producto, cantidad, precio, subtotal, iva, montoiva, 
                                                     descmonto, descsubtotal, id_almacen, tipprecio, descripcion)
                          SELECT  vid, s.producto_servicio_factura, 1, costoestimado, costoestimado,
                                  vgrabaiva, round(vgrabaiva * costoestimado * factoriva,2), 0, 
                                  costoestimado, 0, 0, pro_nombre
                             FROM servicio_config_general s    
                             INNER JOIN producto p on p.pro_id = s.producto_servicio_factura;
                      ELSE
                        INSERT INTO venta_detalle_tmp (id_venta, id_producto, cantidad, precio, subtotal, iva, montoiva, 
                                                     descmonto, descsubtotal, id_almacen, tipprecio, descripcion)
                          SELECT  vid, s.producto_servicio_factura, 1, 
                                  (costoestimado + valprodiva + valprodnoiva),
                                  (costoestimado + valprodiva + valprodnoiva),
                                  vgrabaiva, round(vgrabaiva * (costoestimado + valprodiva + valprodnoiva) * factoriva,2), 0, 
                                  (costoestimado + valprodiva + valprodnoiva), 0, 0, pro_nombre
                             FROM servicio_config_general s    
                             INNER JOIN producto p on p.pro_id = s.producto_servicio_factura;
                      END IF;       
                                      
                      IF vincluirproducto = 1 THEN  
                            INSERT INTO venta_detalle_tmp (id_venta, id_producto, cantidad, precio, subtotal, iva, montoiva, 
                                                           descmonto, descsubtotal, id_almacen, tipprecio, descripcion )
                                SELECT vid, s.id_producto, s.cantidad, s.precio, 
                                       round(s.cantidad * s.precio,2) as subtotal, p.pro_grabaiva,
                                       round(p.pro_grabaiva * s.cantidad * s.precio * factoriva,2) as montoiva,
                                       0, round(s.cantidad * s.precio,2) as descsubtotal,
                                       s.id_almacen, 0, pro_nombre
                                   FROM servicio_producto s   
                                   INNER JOIN servicio_detalle d on d.id_detalle = s.id_detalle
                                   INNER JOIN producto p on p.pro_id = s.id_producto
                                   WHERE d.id_servicio = idservicio;
                      END IF;             

                      SELECT vid;

                  END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for usuario_upd_acceso
-- ----------------------------
DROP PROCEDURE IF EXISTS `usuario_upd_acceso`;
DELIMITER ;;
CREATE PROCEDURE `usuario_upd_acceso`(vidusu int)
BEGIN
                      SET time_zone = '-5:00';
                      update usu_sistemas set ultimoacceso = now() where id_usu = vidusu;
                 END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for venta_ins
-- ----------------------------
DROP PROCEDURE IF EXISTS `venta_ins`;
DELIMITER ;;
CREATE PROCEDURE `venta_ins`(vfecha date, 

varea varchar(255), 

vmesa varchar(255), 

vmesero varchar(11), 

vtipo_doc int,

vnro_factura varchar(255), 

vtipo_ident varchar(255), 

vnro_ident varchar(255), 

vnom_cliente varchar(255), 

vtelf_cliente varchar(255), 

vdir_cliente varchar(255), 

vvaliva double, 

vsubconiva double, 

vsubsiniva double, 

vdesc_monto double,

vdescsubconiva double, 

vdescsubsiniva double, 

vmontoiva double, 

vmontototal double,

vidmesa int,

vidusu int)
BEGIN

  declare vid int;                                                      

  DECLARE EXIT handler for sqlexception select 0; 

  INSERT INTO venta (fecha, area, mesa, mesero, tipo_doc, nro_factura, tipo_ident, nro_ident, nom_cliente,

											telf_cliente, dir_cliente, valiva, subconiva, subsiniva, desc_monto,

											descsubconiva, descsubsiniva, montoiva, montototal, idusu, estatus)

							 VALUE (vfecha, varea, vmesa, vmesero, vtipo_doc, vnro_factura, vtipo_ident, vnro_ident, 

											vnom_cliente, vtelf_cliente, vdir_cliente, vvaliva, 

											vsubconiva, vsubsiniva, vdesc_monto,

											vdescsubconiva, vdescsubsiniva, vmontoiva, vmontototal, vidusu, 1); 

  set vid=(select last_insert_id());

  select vid;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for venta_ins_copy
-- ----------------------------
DROP PROCEDURE IF EXISTS `venta_ins_copy`;
DELIMITER ;;
CREATE PROCEDURE `venta_ins_copy`(

vfecha date, 

varea varchar(255), 

vmesa varchar(255), 

vmesero varchar(11), 

vnro_factura varchar(255), 

vtipo_ident varchar(255), 

vnro_ident varchar(255), 

vnom_cliente varchar(255), 

vtelf_cliente varchar(255), 

vdir_cliente varchar(255), 

vformapago varchar(255), 

vvaliva double, 

vsubconiva double, 

vsubsiniva double, 

vdesc_monto double,

vdescsubconiva double, 

vdescsubsiniva double, 

vmontoiva double, 

vmontototal double,

vidmesa int,

vidusu int

)
BEGIN

  declare vid int;                                                      

  DECLARE EXIT handler for sqlexception select 0; 

  INSERT INTO venta (fecha, area, mesa, mesero, nro_factura, tipo_ident, nro_ident, nom_cliente,

                                                      telf_cliente, dir_cliente, formapago, valiva, subconiva, subsiniva, desc_monto,

                                                      descsubconiva, descsubsiniva, montoiva, montototal, idusu)

                                               VALUE (vfecha, varea, vmesa, vmesero, vnro_factura, vtipo_ident, vnro_ident, 

                                                      vnom_cliente, vtelf_cliente, vdir_cliente, vformapago, vvaliva, 

                                                      vsubconiva, vsubsiniva, vdesc_monto,

                                                      vdescsubconiva, vdescsubsiniva, vmontoiva, vmontototal, vidusu); 

  set vid=(select last_insert_id());

  INSERT INTO venta_detalle (id_venta, id_producto, cantidad, precio, subtotal)

                                   SELECT vid, id_producto, cantidad, precio, (cantidad * precio) AS subtotal 

                                   FROM pedido_detalle WHERE id_mesa = vidmesa;

  select vid;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for venta_newfromnull
-- ----------------------------
DROP PROCEDURE IF EXISTS `venta_newfromnull`;
DELIMITER ;;
CREATE PROCEDURE `venta_newfromnull`(
vidventaanulada int,
vcausaanulacion text,
vfecha date, 
vtipo_doc int,
vnro_factura varchar(255), 
vtipo_ident varchar(255), 
vnro_ident varchar(255), 
vnom_cliente varchar(255), 
vtelf_cliente varchar(255), 
vdir_cliente varchar(255), 
vidusu int)
BEGIN
  declare vid int;                                                      
  DECLARE EXIT handler for sqlexception select 0; 
  
  UPDATE venta set estatus = 3 WHERE id_venta = vidventaanulada;
  
  INSERT INTO venta_anulada (idventa, idusuario, fecha, causa_anulacion)
    VALUES (vidventaanulada, vidusu, now(), vcausaanulacion);
  

  INSERT INTO venta (fecha, area, mesa, mesero, tipo_doc, nro_factura, tipo_ident, nro_ident, nom_cliente,
					 telf_cliente, dir_cliente, valiva, subconiva, subsiniva, desc_monto,
					 descsubconiva, descsubsiniva, montoiva, montototal, idusu, estatus, montoimpuestoespecial)
	SELECT vfecha, area, mesa, mesero, vtipo_doc, vnro_factura, vtipo_ident, 
           vnro_ident, vnom_cliente, vtelf_cliente, vdir_cliente, 
           valiva, subconiva, subsiniva, desc_monto,
		   descsubconiva, descsubsiniva, montoiva, montototal, vidusu, 1, montoimpuestoespecial
      FROM venta where id_venta = vidventaanulada;     

  set vid=(select last_insert_id());

  INSERT INTO venta_detalle (id_venta, id_producto, cantidad, precio, subtotal,
                             iva, montoiva, descmonto, descsubtotal)
    SELECT vid, id_producto, cantidad, precio, subtotal,
           iva, montoiva, descmonto, descsubtotal
      FROM venta_detalle WHERE id_venta = vidventaanulada;       
      

  INSERT INTO venta_formapago (id_venta, id_formapago, monto)
    SELECT vid, id_formapago, monto
      FROM venta_formapago WHERE id_venta = vidventaanulada;        

  select vid;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for venta_null
-- ----------------------------
DROP PROCEDURE IF EXISTS `venta_null`;
DELIMITER ;;
CREATE PROCEDURE `venta_null`(
vidventa int, 
vidusu int,
vcausa text
)
BEGIN
  DECLARE EXIT handler for sqlexception select 0;
  
  /*START TRANSACTION;*/
 
  UPDATE venta set estatus = 3 WHERE id_venta = vidventa;
  
  INSERT INTO venta_anulada (idventa, idusuario, fecha, causa_anulacion)
    VALUES (vidventa, vidusu, now(), vcausa);

  UPDATE almapro as a
    INNER JOIN venta_detalle v on v.id_producto = a.id_pro and v.id_almacen = a.id_alm
    INNER JOIN producto p on p.pro_id = a.id_pro
    SET existencia = a.existencia + v.cantidad	
    WHERE (v.id_venta = vidventa) AND (IFNULL(p.preparado, 0) = 0);

  UPDATE almapro as a
    INNER JOIN producto_ingrediente i on i.id_proing = a.id_pro
    INNER JOIN producto p on p.pro_id = a.id_pro
    INNER JOIN venta_detalle v on v.id_producto = i.id_pro and v.id_almacen = a.id_alm
    INNER JOIN producto p1 on p1.pro_id = v.id_producto
    left join unidadfactorconversion fd on fd.idunidad1 = i.unimed and fd.idunidadequivale = p.pro_idunidadmedida 
    left join unidadfactorconversion fi on fi.idunidad1 = p.pro_idunidadmedida and fi.idunidadequivale = i.unimed 
    SET existencia = a.existencia + 
					 round(case when i.unimed = p.pro_idunidadmedida then 1
                                when ifnull(fd.idunidad1,0) != 0 then fd.cantidadequivalente
                                when ifnull(fi.idunidad1,0) != 0 then 1/fi.cantidadequivalente
                                else 0
                           end * i.cantidad * v.cantidad,2)                     
    WHERE (v.id_venta = vidventa) AND (IFNULL(p1.preparado, 0) = 1);
    
  /*COMMIT;*/
  
  select 1;
END
;;
DELIMITER ;
SET FOREIGN_KEY_CHECKS=1;
