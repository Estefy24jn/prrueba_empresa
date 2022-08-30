<?php
/*******************************************************************************
* FacturaSRI SRI                                                              *
*                                                                              *
* Version: 1.0                                                                 *
* Date:    08-Nov-2017                                                         *
* Author:  Pavel Oramas                                                        *
*******************************************************************************/

require_once(APPPATH.'helpers/ComprobanteSRI.php');

class FacturaSRI extends ComprobanteSRI{

  function CrearArchivoXML()
  {
        /*********** DATOS DE LA FACTURA **********/   

        $idfactura = $this->id;
        $registro = $this->objmodel->datosfactura($idfactura);
        $tipoAmbiente = $registro->ambiente_factura;
        $emision = "1";
        $razonS = $registro->raz_soc_emp;
        $nombreC = $registro->nom_emp;
        $rucEmp = $registro->ruc_emp; 
        $razoncliente = $registro->nom_cliente;
        $ruccliente = $registro->nro_ident; 
        $tipoidcliente = $registro->codsri_venta;
        $modelConfig = "";
        $cod_establecimiento = $registro->cod_establecimiento;
        $cod_pto_emi = $registro->cod_puntoemision;
        $sec_fact = $registro->nro_factura;
        $direccionMatriz = $registro->dir_emp;
        $subtotal = "";
        $dirEstab = $registro->dir_sucursal;
        if ($registro->obligadocontabilidad == 1){
            $obligadoContab = "SI";
        }
        else{
            $obligadoContab = "NO";
        }    
        if ($tipoAmbiente == 1){
          //$fechaEmisionFac = date("Y-m-d");
          $fechaEmisionFac = $registro->fecha;
        }
        else{
          //$fechaEmisionFac = date("Y-m-d");
          $fechaEmisionFac = $registro->fecha;              
        }

        $desc_monto = $registro->subconiva + $registro->subsiniva - $registro->descsubconiva - $registro->descsubsiniva;
        $descsubconiva = $registro->descsubconiva;
        $descsubsiniva = $registro->descsubsiniva;
        $montoiva = $registro->montoiva;
        $montototal = $registro->montototal;
             
        //  Creando la clave de acceso          
        $nombreArch = $this->claveAcceso("01",$rucEmp, $fechaEmisionFac, $tipoAmbiente, $cod_establecimiento,
                                  $cod_pto_emi, $sec_fact, $emision);

        $digVerifi = $this->modulo11($this->invertirCadena($nombreArch));
        $nombreArch = $nombreArch.$digVerifi;

        $xml = new DomDocument("1.0","UTF-8");

        $raiz = $xml->createElement('factura');
        $raiz->setAttribute("id","comprobante");
        $raiz->setAttribute("version","1.1.0");
        $raiz = $xml->appendChild($raiz);

        $infoTribu=$xml->createElement("infoTributaria");
        $infoTribu=$raiz->appendChild($infoTribu);

        $ambiente=$xml->createElement("ambiente", $tipoAmbiente);            
        $ambiente=$infoTribu->appendChild($ambiente);

        $tipoEmision=$xml->createElement("tipoEmision", $emision);
        $tipoEmision=$infoTribu->appendChild($tipoEmision);

        $razonSocial=$xml->createElement("razonSocial", trim($razonS));
        $razonSocial=$infoTribu->appendChild($razonSocial);

        $nombreComercial=$xml->createElement("nombreComercial", trim($nombreC));
        $nombreComercial=$infoTribu->appendChild($nombreComercial);

        $ruc=$xml->createElement("ruc", trim($rucEmp));
        $ruc=$infoTribu->appendChild($ruc);

        $claveAcceso = $xml->createElement("claveAcceso", $nombreArch);
        $claveAcceso = $infoTribu->appendChild($claveAcceso);

        $codDoc = $xml->createElement("codDoc", "01");
        $codDoc = $infoTribu->appendChild($codDoc);

        $estab = $xml->createElement("estab", $cod_establecimiento);            
        $estab=$infoTribu->appendChild($estab);

        $ptoEmi=$xml->createElement("ptoEmi", $cod_pto_emi);            
        $ptoEmi=$infoTribu->appendChild($ptoEmi);
        
        // Revisar el incremental de serie de la factura 
        //$secuencial=$xml->createElement("secuencial",str_pad(($sec_fact)+1,9,"0",STR_PAD_LEFT));
        $secuencial=$xml->createElement("secuencial",str_pad(($sec_fact),9,"0",STR_PAD_LEFT));
        $secuencial=$infoTribu->appendChild($secuencial);

        $dirMatriz=$xml->createElement("dirMatriz", trim($direccionMatriz));
        $dirMatriz=$infoTribu->appendChild($dirMatriz);

        /* $agenteMicroempresa=$xml->createElement("regimenMicroempresas","CONTRIBUYENTE RÉGIMEN MICROEMPRESAS");
        $agenteMicroempresa=$infoTribu->appendChild($agenteMicroempresa); */

        /* $agenteRetencion=$xml->createElement("agenteRetencion", trim(1));
        $agenteRetencion=$infoTribu->appendChild($dirMatriz); */

        $infoFactura=$xml->createElement("infoFactura");
        $infoFactura=$raiz->appendChild($infoFactura);

        //$fechaEmision=$xml->createElement("fechaEmision", date("d/m/Y"));
        $strfecha = explode("-", $fechaEmisionFac);
        $strfecha = str_pad($strfecha[2],2,"0",STR_PAD_LEFT).'/'.str_pad($strfecha[1],2,"0",STR_PAD_LEFT).'/'.$strfecha[0];
        $fechaEmision=$xml->createElement("fechaEmision", $strfecha);
        $fechaEmision=$infoFactura->appendChild($fechaEmision);

        $dirEstablecimiento=$xml->createElement("dirEstablecimiento",trim($dirEstab));
        $dirEstablecimiento=$infoFactura->appendChild($dirEstablecimiento);

        $obligadoContabilidad=$xml->createElement("obligadoContabilidad", $obligadoContab);
        $obligadoContabilidad=$infoFactura->appendChild($obligadoContabilidad);

        $tipoIdentificacionComprador=$xml->createElement("tipoIdentificacionComprador", $tipoidcliente);       
        $tipoIdentificacionComprador = $infoFactura->appendChild($tipoIdentificacionComprador);
        
        // DATOS DEL CLIENTE 
        $razonSocialComprador=$xml->createElement("razonSocialComprador", trim($razoncliente));
        $razonSocialComprador=$infoFactura->appendChild($razonSocialComprador);

        $identificacionComprador=$xml->createElement("identificacionComprador", $ruccliente);       
        $identificacionComprador = $infoFactura->appendChild($identificacionComprador);

        $totalSinImpuestos = $xml->createElement("totalSinImpuestos", number_format($descsubconiva + $descsubsiniva,2,'.',''));
        $totalSinImpuestos = $infoFactura->appendChild($totalSinImpuestos);

        if ($registro->totalsubsidio > 0){
            $tmptotalsubsidio = $xml->createElement("totalSubsidio", number_format($registro->totalsubsidio,2,'.',''));
            $infoFactura->appendChild($tmptotalsubsidio);
        }

        $totalDescuento = $xml->createElement("totalDescuento", number_format($desc_monto,2,'.',''));
        $totalDescuento = $infoFactura->appendChild($totalDescuento);

        $totalConImpuestos = $xml->createElement("totalConImpuestos");
        $totalConImpuestos = $infoFactura->appendChild($totalConImpuestos);
        
        if ($descsubconiva > 0){
            $totalImpuesto = $xml->createElement("totalImpuesto");
            $totalImpuesto = $totalConImpuestos->appendChild($totalImpuesto);

            $codigo = $xml->createElement("codigo","2");
            $codigo = $totalImpuesto->appendChild($codigo);

            if ($montoiva == 0){
              $strcodp100 = "0";
            } 
            else{
              $strcodp100 = ($registro->valiva == 0.14) ? "3" : "2" ;
            } 
            $codigoPorcentaje = $xml->createElement("codigoPorcentaje",$strcodp100);
            $codigoPorcentaje = $totalImpuesto->appendChild($codigoPorcentaje);

            $descuentoAdicional = $xml->createElement("descuentoAdicional",number_format(0,2,'.',''));
            $descuentoAdicional = $totalImpuesto->appendChild($descuentoAdicional);

            $baseImponible=$xml->createElement("baseImponible", number_format($descsubconiva,2,'.',''));
            $baseImponible=$totalImpuesto->appendChild($baseImponible);

            $valor=$xml->createElement("valor",number_format($montoiva,2,'.',''));
            $valor=$totalImpuesto->appendChild($valor);
        }    
        if ($descsubsiniva > 0){
            $totalImpuesto = $xml->createElement("totalImpuesto");
            $totalImpuesto = $totalConImpuestos->appendChild($totalImpuesto);

            $codigo = $xml->createElement("codigo","2");
            $codigo = $totalImpuesto->appendChild($codigo);

            $strcodp100 = "0";
            $codigoPorcentaje = $xml->createElement("codigoPorcentaje",$strcodp100);
            $codigoPorcentaje = $totalImpuesto->appendChild($codigoPorcentaje);

            $descuentoAdicional = $xml->createElement("descuentoAdicional",number_format(0,2,'.',''));
            $descuentoAdicional = $totalImpuesto->appendChild($descuentoAdicional);

            $baseImponible=$xml->createElement("baseImponible", number_format($descsubsiniva,2,'.',''));
            $baseImponible=$totalImpuesto->appendChild($baseImponible);

            $valor=$xml->createElement("valor",number_format(0,2,'.',''));
            $valor=$totalImpuesto->appendChild($valor);
        }    

        // propina
        $propina=$xml->createElement("propina","0.00");
        $propina=$infoFactura->appendChild($propina);

        $importeTotal=$xml->createElement("importeTotal",number_format($montototal,2,'.',''));
        $importeTotal=$infoFactura->appendChild($importeTotal);

        $moneda=$xml->createElement("moneda","DOLAR");
        $monedaTotal=$infoFactura->appendChild($moneda);

        //  formas de pago         
        $objpagos = $this->objmodel->datosfacturaformapago($idfactura);
        if (count($objpagos) > 0){
            $pagos=$xml->createElement("pagos");
            $pagos=$infoFactura->appendChild($pagos);

            foreach($objpagos as $pago)
            {               
                    $detalle = $xml->createElement("pago");
                    $detalle = $pagos->appendChild($detalle);

                    $codigo = $xml->createElement("formaPago", trim($pago->cod_formapago));
                    $codigo = $detalle->appendChild($codigo);

                    $monto = $xml->createElement("total", trim($pago->monto));
                    $monto = $detalle->appendChild($monto);
            }        
        }    
        
        //  DETALLE FACTURA 
        $detalles=$xml->createElement("detalles");
        $detalles=$raiz->appendChild($detalles);
        
        $totalsubsidio = 0;
        //$totalsubsidio = 20.0;

        // BUCLE DETALLE 
        $objdetalles = $this->objmodel->datosfacturadetalle($idfactura);
        foreach($objdetalles as $producto)
        {               
                $detalle = $xml->createElement("detalle");
                $detalle = $detalles->appendChild($detalle);

                if(trim($producto->pro_codigoauxiliar) != '')
                    $codigoproducto = trim($producto->pro_codigoauxiliar);
                else{
                    if (trim($producto->pro_codigobarra) != '')
                        $codigoproducto = trim($producto->pro_codigobarra);
                    else
                        $codigoproducto = '1';
                }

                $codigoPrincipal = $xml->createElement("codigoPrincipal", $codigoproducto);
                $codigoPrincipal = $detalle->appendChild($codigoPrincipal );
                $codigoAuxiliar = $xml->createElement("codigoAuxiliar", $codigoproducto);
                $codigoAuxiliar = $detalle->appendChild($codigoAuxiliar);

                $nombreproducto = $producto->pro_nombre; 
                $nombreproducto = str_replace("\r\n", " ", $nombreproducto); 
                $nombreproducto = str_replace("\n", " ", $nombreproducto); 
                $nombreproducto = str_replace("\r", " ", $nombreproducto); 
                $nombreproducto = str_replace("&", " ", $nombreproducto); 
                $nombreproducto = substr(trim($nombreproducto),0,300);

                $descripcion = $xml->createElement("descripcion", $nombreproducto);
                $descripcion = $detalle->appendChild($descripcion);
                $cantidad = $xml->createElement("cantidad",number_format($producto->cantidad,4,'.',''));
                $cantidad = $detalle->appendChild($cantidad);
                $precioUnitario = $xml->createElement("precioUnitario",number_format($producto->precio,6,'.',''));
                $precioUnitario = $detalle->appendChild($precioUnitario);
                if ($producto->subsidio > 0){
                    $tmppreciosubsidio = 0;
                    if ($producto->cantidad > 0){
                        $tmppreciosubsidio = round($producto->subsidio / $producto->cantidad, 6);
                    }
                    $precioSinSubsidio = $producto->precio + $tmppreciosubsidio;
                    $tmpsubsidio = $xml->createElement("precioSinSubsidio",number_format($precioSinSubsidio,6,'.',''));
                    $detalle->appendChild($tmpsubsidio);
                }
                $descuento = $xml->createElement("descuento",number_format($producto->descmonto,2,'.',''));
                $descuento = $detalle->appendChild($descuento);
                $precioTotalSinImpuesto = $xml->createElement("precioTotalSinImpuesto",number_format($producto->descsubtotal,2,'.',''));
                $precioTotalSinImpuesto = $detalle->appendChild($precioTotalSinImpuesto);
/*
                $detallesadicionales = $xml->createElement("detallesAdicionales");
                $detalle->appendChild($detallesadicionales);
                $detalleAdicional = $xml->createElement("detAdicional");
                $detalleAdicional->setAttribute("nombre","Subsidio");
                $detalleAdicional->setAttribute("valor",number_format($producto->subsidio,2,'.',''));
                $detallesadicionales->appendChild($detalleAdicional);
*/
                $totalsubsidio += $producto->subsidio;
                
                $impuestos = $xml->createElement("impuestos");
                $impuestos = $detalle->appendChild($impuestos);
                $impuesto = $xml->createElement("impuesto");
                $impuesto = $impuestos->appendChild($impuesto);
                $codigo =  $xml->createElement("codigo","2");
                $codigo = $impuesto->appendChild($codigo);
                if ($producto->iva == 0){
                  $strcodp100 = "0";
                } 
                else{
                  $strcodp100 = ($registro->valiva == 0.14) ? "3" : "2" ;
                } 
                $codigoPorcentaje =  $xml->createElement("codigoPorcentaje",$strcodp100);
                $codigoPorcentaje = $impuesto->appendChild($codigoPorcentaje);
                $tarifa = 0;
                if ($producto->iva != 0){
                  $tarifa =  round($registro->valiva * 100,2);
                }
                $tarifa =  $xml->createElement("tarifa",$tarifa);
                $tarifa = $impuesto->appendChild($tarifa);
                $baseImponible =  $xml->createElement("baseImponible",number_format($producto->descsubtotal,2,'.',''));
                $baseImponible = $impuesto->appendChild($baseImponible);
                $valor =  $xml->createElement("valor",number_format($producto->montoiva,2,'.',''));
                $valor = $impuesto->appendChild($valor);
        }

        //  ADICIONAL
        $infoAdicional=$xml->createElement("infoAdicional");
        $infoAdicional= $raiz->appendChild($infoAdicional);

        $stradic = trim($registro->telefonos_cliente) != '' ? trim($registro->telefonos_cliente) : ' ';
        $campoAdicional = $xml->createElement("campoAdicional",$stradic);
        $campoAdicional->setAttribute("nombre","NÚMERO CLIENTE");
        $campoAdicional= $infoAdicional->appendChild($campoAdicional);

        $stradic = trim($registro->correo_cliente) != '' ? trim($registro->correo_cliente) : ' ';
        $campoAdicional = $xml->createElement("campoAdicional",$stradic);
        $campoAdicional->setAttribute("nombre","CORREO CLIENTE");
        $campoAdicional= $infoAdicional->appendChild($campoAdicional);

        $stradic = trim($registro->dir_cliente) != '' ? trim($registro->dir_cliente) : ' ';
        $campoAdicional = $xml->createElement("campoAdicional",$stradic);
        $campoAdicional->setAttribute("nombre","DIRECCIÓN CLIENTE");
        $campoAdicional= $infoAdicional->appendChild($campoAdicional);

        $stradic = trim($registro->nom_cancelacion) != '' ? trim($registro->nom_cancelacion) : ' ';
        $campoAdicional = $xml->createElement("campoAdicional",$stradic);
        $campoAdicional->setAttribute("nombre","TIPO CANCELACIÓN");
        $campoAdicional= $infoAdicional->appendChild($campoAdicional);
        //Si tiene subsidio imprima 
        if ($totalsubsidio > 0){
          $stradic = number_format($totalsubsidio,2,'.','');
          //$stradic = number_format(0.80,2,'.','');
          $campoAdicional = $xml->createElement("campoAdicional",$stradic);
          $campoAdicional->setAttribute("nombre","SUBSIDIO");
          $campoAdicional= $infoAdicional->appendChild($campoAdicional);
        }
        if (trim($registro->placa_matricula) != ''){
            $stradic = trim($registro->placa_matricula);
            $campoAdicional = $xml->createElement("campoAdicional",$stradic);
            $campoAdicional->setAttribute("nombre","PLACA/MATRÍCULA");
            $campoAdicional= $infoAdicional->appendChild($campoAdicional);
        }

        if (trim($registro->observaciones) != ''){
            $stradic = trim($registro->observaciones);
            $campoAdicional = $xml->createElement("campoAdicional",$stradic);
            $campoAdicional->setAttribute("nombre","OBSERVACIONES");
            $campoAdicional= $infoAdicional->appendChild($campoAdicional);
        }
         //iNFORMACION ADICIONAL REGIMEN RIMPE
         if (1==1){
           //CONTRIBUYENTE RÉGIMEN RIMPE
           //CONTRIBUYENTE NEGOCIO POPULAR - RÉGIMEN RIMPE
          $stradic = trim("CONTRIBUYENTE NEGOCIO POPULAR - RÉGIMEN RIMPE");
          $campoAdicional = $xml->createElement("campoAdicional",$stradic);
          $campoAdicional->setAttribute("nombre","RÉGIMEN");
          $campoAdicional= $infoAdicional->appendChild($campoAdicional);
        }
        
        // BUCLE Datos adicionales
        $objadicional = $this->objmodel->lst_venta_datoadicional($idfactura);
        foreach($objadicional as $dato)
        {               
            if (trim($dato->datoadicional) != ''){
                $strdatonombre = trim($dato->nombre_datoadicional);
                $strdatovalor = trim($dato->datoadicional);
                $campoAdicional = $xml->createElement("campoAdicional",$strdatovalor);
                $campoAdicional->setAttribute("nombre", $strdatonombre);
                $campoAdicional= $infoAdicional->appendChild($campoAdicional);
            }    
        }
      
        $xml->formatOut=true;
        //Header('Content-type: text/xml');
        $strings_xml = $xml->saveXML();
        $strings_xml=str_replace("\r\n", "\n", $strings_xml);
        $xml2 = new DOMDocument();
        $xml2->loadXML($strings_xml);
        
        if($xml2->save(FCPATH."public/archivos/generados/$nombreArch.xml"))
        {
            return $nombreArch;
        }
        else
        {
            return "ERROR";
        }

  }

  function CreaDivParaPDF($objXml="", $pdf){
    $xmlFact = simplexml_load_string($objXml->comprobante);
    $divstr='<html>';
      $divstr.='<body>';
      $divstr.='<table border="1" cellspacing="2" cellpadding="3">
      <tr>
          <td>';    
      $divstr.='<div class="cuadro_logo" style="height:145px; ">';
      $imagen = $this->objmodel->sel_logoempresaventa($this->id);
      if (trim($imagen) != ''){
        $divstr.='<img src="'.FCPATH.'/public/img/sucursal/'.$imagen.'" alt="" />';
        //$divstr.='<img src="'.FCPATH.'/public/img/empresa/'.$imagen.'" alt="" />';
      }  
      $divstr.='</div>';
      $divstr.='&nbsp;' . $xmlFact->infoTributaria->razonSocial . '<br />';
      $divstr.='&nbsp;EMPRESA: '.$xmlFact->infoTributaria->nombreComercial. '<br />';      
      $divstr.='&nbsp;DIRECCIÓN: '.$xmlFact->infoTributaria->dirMatriz. '<br />';
      //$divstr.='&nbsp;SUCURSALES: '.$xmlFact->infoFactura->dirEstablecimiento. '<br />';
      $divstr.='&nbsp;OBLIGADO A LLEVAR CONTABILIDAD: '.$xmlFact->infoFactura->obligadoContabilidad. '<br />'; 
      //Cierra primera columna y abre td segunda columna
      $divstr.='</td>';
      //Segunda columna abierta
      $divstr.='<td>';
      $divstr.='<span style="font-size: x-large;">R.U.C: '.$xmlFact->infoTributaria->ruc.' &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; FACTURA</span><br />';
      //$divstr.='R.U.C: '.$xmlFact->infoTributaria->ruc.' &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; FACTURA'. '<br />'; 
        $facNumber = substr($xmlFact->infoTributaria->claveAcceso,24,15);
        $facNumber = substr($facNumber,0,3).'-'.substr($facNumber,3,3).'-'.substr($facNumber,6,9);  
      $divstr.='<span style="font-size: large;">NÚMERO DE FACTURA: &nbsp;&nbsp;&nbsp;&nbsp;'.$facNumber.'</span><br />';
      //$divstr.='NÚMERO DE FACTURA: &nbsp;&nbsp;&nbsp;'.$facNumber. '<br />';
      //$divstr.='AUTORIZACIÓN:' . $objXml->numeroAutorizacion;
      $divstr.='<br />';
      $divstr.='FECHA Y HORA DE AUTORIZACIÓN:'. '<br />';
      $divstr.=$objXml->fechaAutorizacion. '<br />';
        $tipoemision = ($xmlFact->infoTributaria->tipoEmision == 1) ? "NORMAL":"INDISPONIBILIDAD DEL SISTEMA";
        $ambiente = ($xmlFact->infoTributaria->ambiente == 1) ? "PRUEBAS":"PRODUCCIÓN";
      $divstr.='AMBIENTE: '.$ambiente.' EMISIÓN: '.$tipoemision. '<br /><br />';
      $divstr.='AUTORIZACIÓN'. '<br />';
        $facNumber = substr($xmlFact->infoTributaria->claveAcceso,0,49);
        $params = $pdf->serializeTCPDFtagParameters(array($facNumber, 'CODE11', '', '', 85, 18, 0.4, array('position'=>'S','stretch' => true, 'border'=>false, 'padding'=>0.5, 'fgcolor'=>array(0,0,0), 'bgcolor'=>array(255,255,255), 'text'=>true, 'font'=>'helvetica', 'fontsize'=>12, 'stretchtext'=>4), 'N'));
      $divstr.='<tcpdf method="write1DBarcode" params="'.$params.'" /> ';
      $divstr.='</td>
      </tr>
      </table>';
      //Cierra tabla de encabezado
      //Otra Tabla del cliente
      $divstr.='<div clas="datos_cliente" style="border-left:1px double #000; border-bottom:1px double #000; border-right: 1px solid #000;">';
        $divstr.='<table border="0" cellspacing="1" cellpadding="1">';
          $divstr.='<tr>';
          $divstr.='<td style="font-size:12px;">&nbsp;&nbsp;CLIENTE / RAZÓN SOCIAL: '.$xmlFact->infoFactura->razonSocialComprador.
          '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
          IDENTIFICACIÓN: '.$xmlFact->infoFactura->identificacionComprador.
          '<br />&nbsp;&nbsp;FECHA EMISIÓN: '.$xmlFact->infoFactura->fechaEmision.'</td>';
          $divstr.='</tr>';
        $divstr.='</table>';
      $divstr.='</div>';   
      //Tabla de productos
      $divstr.='<table style="border: 1px solid #000; border-collapse: collapse;" >';
      $divstr.='<tr>';
          $divstr.='<th width="65" style="font-size:10px;padding:0px 3px;border: 1px solid #000;text-align:center;font-weight: bold;">Código<br/>Principal</th>';
          $divstr.='<th width="65" style="font-size:10px;padding:0px 3px;border: 1px solid #000;text-align:center;font-weight: bold;">Código <br/> Auxiliar</th>';
          $divstr.='<th width="60" style="font-size:10px;padding:0px 3px;border: 1px solid #000;text-align:center;font-weight: bold;">Cantidad</th>';
          $divstr.='<th width="242" style="font-size:10px;border: 1px solid #000;text-align:center;font-weight: bold;">Descripción</th>';
          $divstr.='<th width="65" style="font-size:10px;border: 1px solid #000;text-align:center;font-weight: bold;">Precio<br/>Unitario</th>';
          /*$divstr.='<th width="60" style="font-size:10px;border: 1px solid #000;text-align:center;font-weight: bold;">Subsidio</th>';*/
          $divstr.='<th width="70" style="font-size:10px;border: 1px solid #000;text-align:center;font-weight: bold;">Descuento</th>';
          $divstr.='<th width="71" style="font-size:10px;border: 1px solid #000;text-align:center;font-weight: bold;">Precio Total</th>';
        $divstr.='</tr>';
      
      $parametro = &get_instance();
      $parametro->load->model("Parametros_model");     
      $decimalesprecio = $parametro->Parametros_model->sel_decimalesprecio();    
      $decimalescantidad = $parametro->Parametros_model->sel_decimalescantidad();    

      $totalsubsidio = 0;
      for ($i=0; $i < count($xmlFact->detalles->detalle); $i++) 
      {
          $divstr.='<tr>';
          $divstr.='<td style="font-size:9px;border: 1px solid #000;text-align:center; ">'.$xmlFact->detalles->detalle[$i]->codigoPrincipal.'</td>';
          $divstr.='<td style="font-size:9px;border: 1px solid #000;text-align:center; ">'.$xmlFact->detalles->detalle[$i]->codigoAuxiliar.'</td>';
          $divstr.='<td style="font-size:9px;border: 1px solid #000;text-align:center; ">'.number_format((double)$xmlFact->detalles->detalle[$i]->cantidad, $decimalescantidad).'</td>';
          $divstr.='<td style="font-size:9px;border: 1px solid #000;text-align:left; ">'.$xmlFact->detalles->detalle[$i]->descripcion.'</td>';
          $divstr.='<td style="font-size:9px;border: 1px solid #000;text-align:right; ">'.number_format((double)$xmlFact->detalles->detalle[$i]->precioUnitario, $decimalesprecio).'</td>';
          /*$divstr.='<td style="font-size:9px;border: 1px solid #000;text-align:right; ">'.number_format($subsidio,2).'</td>';*/
          $divstr.='<td style="font-size:9px;border: 1px solid #000;text-align:right ; ">'.$xmlFact->detalles->detalle[$i]->descuento.'</td>';
          $divstr.='<td style="font-size:9px;border: 1px solid #000;text-align:right; ">'.$xmlFact->detalles->detalle[$i]->precioTotalSinImpuesto.'</td>';
          $divstr.='</tr>';
      }             
      $divstr.='</table>';
      //MAS DATOS

      $divstr.='<table cellspacing="1"  style="border-spacing: 3px 0;" cellpadding="0" border="0">';
      $divstr.='<tr>';

        $divstr.='<td width="295px">';

        $divstr.='<div class="adicional" style="">';
          $divstr.='<div style="border: 1px solid #000;">';
          $divstr.='<div style="font-size:11px;">&nbsp;INFORMACIÓN ADICIONAL</div>';
          for ($i=0; $i < count($xmlFact->infoAdicional->campoAdicional); $i++) {
            if ($xmlFact->infoAdicional->campoAdicional[$i]['nombre'] != 'Subsidio'){
                $divstr.='&nbsp;&nbsp;'.$xmlFact->infoAdicional->campoAdicional[$i]['nombre'].': '.$xmlFact->infoAdicional->campoAdicional[$i].'<br />';
            }
            else{
                $totalsubsidio = $xmlFact->infoAdicional->campoAdicional[$i];
                //alert($totalsubsidio);
            }                
          }
          
          $formaPago=$xmlFact->infoFactura->pagos->pago->formaPago;
          if($formaPago=="01"){$mostrarFormaPago="EFECTIVO ";}
          if($formaPago=="20"){$mostrarFormaPago="CHEQUE ";}
          if($formaPago=="19"){$mostrarFormaPago="TARJETA DE CREDITO ";}
          if($formaPago=="16"){$mostrarFormaPago="TARJETA DE DEBITO ";}
          if($formaPago=="18"){$mostrarFormaPago="TARJETA PREPAGO ";}
          if($formaPago=="20"){$mostrarFormaPago="TRANSFERENCIA ";}
          if($formaPago=="17"){$mostrarFormaPago="DINERO ELECTRONICO ";}
          if($formaPago=="20"){$mostrarFormaPago="OTROS ";}

        $divstr.='&nbsp;&nbsp;FORMA DE PAGO:'.$mostrarFormaPago.'<br />';

          $divstr.='</div>';
        $divstr.='</div>';        

        $divstr.='</td>';

        $divstr.='<td width="22px">';
        $divstr.='<div>';
        $divstr.='</div>';
        $divstr.='</td>';

        $divstr.='<td width="255px">';
        

        $divstr.='<div class="impuestos" style="">';
        $divstr.='<div style="margin-left: 90px;">';
          $divstr.='<table style="border: 1px solid #000; ">';
            $divstr.='<tr>';

            $baseiva = 0;
            $montoiva = 0;
            for ($i=0; $i < count($xmlFact->infoFactura->totalConImpuestos->totalImpuesto); $i++) {
              if (($xmlFact->infoFactura->totalConImpuestos->totalImpuesto[$i]->codigo == '2') &&
                 ($xmlFact->infoFactura->totalConImpuestos->totalImpuesto[$i]->codigoPorcentaje != '0')){
                $base = (double)$xmlFact->infoFactura->totalConImpuestos->totalImpuesto[$i]->baseImponible;
                $baseiva += $base;

                $montoiva += (double)$xmlFact->infoFactura->totalConImpuestos->totalImpuesto[$i]->valor;
              }
            }
            $totalSinImpuestos = (double)$xmlFact->infoFactura->totalSinImpuestos;
            $basenoiva = $totalSinImpuestos - $baseiva;
            $descuento = (double)$xmlFact->infoFactura->totalDescuento;
  
            $divstr.='<td width="248" style="font-size:11px;border: 1px solid #000;text-align:left;">&nbsp;SUBTOTAL 12%</td>';
            $divstr.='<td width="70" style="font-size:11px;border: 1px solid #000;text-align:right;">'.number_format($baseiva,2).'</td>';
            $divstr.='</tr>';
            $divstr.='<tr>';
            $divstr.='<td style="font-size:11px;border: 1px solid #000;text-align:left;">&nbsp;SUBTOTAL 0%</td>';
            $divstr.='<td style="font-size:11px;border: 1px solid #000;text-align:right;">'.number_format($basenoiva,2).'</td>';
            $divstr.='</tr>';
            $divstr.='<tr>';
            $divstr.='<td style="font-size:11px;border: 1px solid #000;text-align:left;">&nbsp;SUBTOTAL No objeto de IVA</td>';
            $divstr.='<td style="font-size:11px;border: 1px solid #000;text-align:right;">0.00</td>';
            $divstr.='</tr>';
            $divstr.='<tr>';
            $divstr.='<td style="font-size:11px;border: 1px solid #000;text-align:left;">&nbsp;SUBTOTAL Exento de IVA</td>';
            $divstr.='<td style="font-size:11px;border: 1px solid #000;text-align:right;">0.00</td>';
            $divstr.='</tr>';
            $divstr.='<tr>';
            $divstr.='<td style="font-size:11px;border: 1px solid #000;text-align:left;">&nbsp;SUBTOTAL SIN IMPUESTOS</td>';
            $divstr.='<td style="font-size:11px;border: 1px solid #000;text-align:right;">'.number_format($totalSinImpuestos,2).'</td>';
            $divstr.='</tr>';
            $divstr.='<tr>';
            $divstr.='<td style="font-size:11px;border: 1px solid #000;text-align:left;">&nbsp;TOTAL Descuento</td>';
            $divstr.='<td style="font-size:11px;border: 1px solid #000;text-align:right;">'.number_format($descuento,2).'</td>';
            $divstr.='</tr>';
            $divstr.='<tr>';
            $divstr.='<td style="font-size:11px;border: 1px solid #000;text-align:left;">&nbsp;ICE</td>';
            $divstr.='<td style="font-size:11px;border: 1px solid #000;text-align:right;">0.00</td>';
            $divstr.='</tr>';
            $divstr.='<tr>';
            $divstr.='<td style="font-size:11px;border: 1px solid #000;text-align:left;">&nbsp;IVA 12%</td>';
            $divstr.='<td style="font-size:11px;border: 1px solid #000;text-align:right;">'.number_format($montoiva,2).'</td>';
            $divstr.='</tr>';
            $divstr.='<tr>';
            $divstr.='<td style="font-size:11px;border: 1px solid #000;text-align:left;">&nbsp;IRBPNR</td>';
            $divstr.='<td style="font-size:11px;border: 1px solid #000;text-align:right;">0.00</td>';
            $divstr.='</tr>';
            /* $divstr.='<tr>';
            $divstr.='<td style="font-size:11px;border: 1px solid #000;text-align:left;">   PROPINA</td>';
            $divstr.='<td style="font-size:11px;border: 1px solid #000;text-align:right;">'.number_format((double)$xmlFact->infoFactura->propina,2).'</td>';
            $divstr.='</tr>'; */
            $divstr.='<tr>';
            $divstr.='<td style="font-size:11px;border: 1px solid #000;text-align:left;">&nbsp;VALOR TOTAL</td>';
            $divstr.='<td style="font-size:11px;border: 1px solid #000;text-align:right;">'.number_format((double)$xmlFact->infoFactura->importeTotal,2).'</td>';
            $divstr.='</tr>';
          $divstr.='</table>';
          $divstr.='</div>';
          $parametro = &get_instance();
          $parametro->load->model("Parametros_model");
          $impresionsubsidio = $parametro->Parametros_model->sel_impresionsubsidio();
          //$totalsubsidio= (double)15;
          if ($impresionsubsidio == 1){
            $impSubsidio = number_format((double)$totalsubsidio,2);
            $impTotal = number_format((double)$xmlFact->infoFactura->importeTotal,2);

            
              $divstr.='<div style="margin-left:10px; ">';
              $divstr.='<table style="margin-left:10px; border-collapse: collapse;padding-left:10px;">';
                $divstr.='<tr>'; 
                $divstr.='<th width="248" style="font-size:10px;padding:0px 3px;border: 1px solid #000;text-align:left;">VALOR TOTAL SIN SUBSIDIO</th>';            
                //$divstr.='<th width="102" style="font-size:10px;padding:0px 3px;border: 1px solid #000;text-align:right;">'.number_format((double)$xmlFact->infoFactura->importeTotal + $totalsubsidio,2).'</th>';            
                $divstr.='<th width="70" style="font-size:10px;padding:0px 3px;border: 1px solid #000;text-align:right;">'.($impSubsidio + $impTotal) .'</th>';            
                $divstr.='</tr>';
                $divstr.='<tr>'; 
                $divstr.='<td style="font-size:10px;padding:0px 3px;border: 1px solid #000;text-align:left;">AHORRO POR SUBSIDIO</td>';            
                $divstr.='<td style="font-size:10px;padding:0px 3px;border: 1px solid #000;text-align:right;">'.number_format((double)$totalsubsidio,2).'</td>';            
                $divstr.='</tr>';
              $divstr.='</table>';
              $divstr.='</div>';
              
              //Nueva parte para logo
              $divstr.='<div class="cuadro_logo" style="height:100px; padding-right:40px;" align="right" >';
              $imagen = 'subsidioEcuador.png';
              if (trim($imagen) != ''){
                $divstr.='<img src="'.FCPATH.'/public/img/'.$imagen.'" alt="" />';
                //$divstr.='<img src="'.FCPATH.'/public/img/empresa/'.$imagen.'" alt="" />';
              }  

            $divstr.='</div>';
          }

        $divstr.='</div>';   


        $divstr.='</td>';
      $divstr.='</tr>';
      $divstr.='</table>';

      //Original
      /* $divstr.='<table width:100% style="padding: 1px; border:1px solid #000;" cellspacing="0" cellpadding="2px" border="0">';
      $divstr.='<tr>';

        $divstr.='<td width:47%>';

        $divstr.='<div class="cuadro_izq" style="float:left;">';
            $divstr.='<div class="cuadro_logo" style="height:145px; ">';
            
              $imagen = $this->objmodel->sel_logoempresaventa($this->id);
              if (trim($imagen) != ''){
                $divstr.='<img src="'.FCPATH.'/public/img/sucursal/'.$imagen.'" alt="" />';
                //$divstr.='<img src="'.FCPATH.'/public/img/empresa/'.$imagen.'" alt="" />';
              }  

            $divstr.='</div>';
            $divstr.='<div style="border:1px solid #0445a2; font-size:11px">';
              $divstr.='<table style="padding: 1px;">';
              $divstr.='<tr>';
              $divstr.='<td style="font-size:11px;"> '.$xmlFact->infoTributaria->razonSocial.'</td>';
              $divstr.='</tr>';
              $divstr.='<tr>';
              $divstr.='<td style="font-size:11px;"> '.$xmlFact->infoTributaria->nombreComercial .'</td>';
              $divstr.='</tr>';
              $divstr.='<tr>';
              $divstr.='<td style="font-size:3px;"> </td>';
              $divstr.='</tr>';
              $divstr.='<tr>';
              $divstr.='<td style="font-size:11px;"> Dirección Matriz: '.$xmlFact->infoTributaria->dirMatriz.'</td>';
              $divstr.='</tr>';
              $divstr.='<tr>';
              $divstr.='<td style="font-size:3px;"> </td>';
              $divstr.='</tr>';
              $divstr.='<tr>';
              $divstr.='<td style="font-size:11px;"> OBLIGADO A LLEVAR CONTABILIDAD: '.$xmlFact->infoFactura->obligadoContabilidad.'</td>';
              $divstr.='</tr>';
              $divstr.='</table>';
            $divstr.='</div>';
        $divstr.='</div>';

        $divstr.='</td>';

        $divstr.='<td>';
        //$divstr.='<div clas="cuadro_der" style="clear:left;border:1px solid #000; margin:0px 0px;">';
        $divstr.='<div clas="cuadro_der">';
        $divstr.='<table style="padding: 1px;">';
          $divstr.='<tr>';
          $divstr.='<td style="font-size:16px;"> R.U.C: '.$xmlFact->infoTributaria->ruc.' &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; FACTURA </td>';
          $divstr.='</tr>';
          $divstr.='<tr>';
          $divstr.='<td style="font-size:0px;"> </td>';
          $divstr.='</tr>';
          $divstr.='<tr>';
            $facNumber = substr($xmlFact->infoTributaria->claveAcceso,24,15);
            $facNumber = substr($facNumber,0,3).'-'.substr($facNumber,3,3).'-'.substr($facNumber,6,9);   
          $divstr.='<td style="font-size:14px;"> NÚMERO DE FACTURA: &nbsp;&nbsp;&nbsp;'.$facNumber.'</td>';
          $divstr.='</tr>';
          $divstr.='<tr>';
          $divstr.='<td style="font-size:3px;"> </td>';
          $divstr.='</tr>';
          $divstr.='<tr>';
          $divstr.='<td style="font-size:11px;"> NÚMERO DE AUTORIZACIÓN: </td>';
          $divstr.='</tr>';
          $divstr.='<tr>';
          $divstr.='<td style="font-size:11px;"> '.$objXml->numeroAutorizacion.'</td>';
          $divstr.='</tr>';
          $divstr.='<tr>';
          $divstr.='<td style="font-size:0px;"> </td>';
          $divstr.='</tr>';
          $divstr.='<tr>';
          $divstr.='<td style="font-size:11px;"> FECHA Y HORA DE AUTORIZACIÓN: </td>';
          $divstr.='</tr>';
          $divstr.='<tr>';
          $divstr.='<td style="font-size:11px;"> '.$objXml->fechaAutorizacion.'</td>';
          $divstr.='</tr>';
          $divstr.='<tr>';
            $tipoemision = ($xmlFact->infoTributaria->tipoEmision == 1) ? "NORMAL":"INDISPONIBILIDAD DEL SISTEMA";
            $ambiente = ($xmlFact->infoTributaria->ambiente == 1) ? "PRUEBAS":"PRODUCCIÓN";
          $divstr.='<td style="font-size:11px;"> AMBIENTE: '.$ambiente.' EMISIÓN: '.$tipoemision.'</td>';
          $divstr.='</tr>';
          $divstr.='<tr>';
          $divstr.='<td style="font-size:11px;"> CLAVE DE ACCESO: </td>';
          $divstr.='</tr>';
          $divstr.='<tr>';
            $facNumber = substr($xmlFact->infoTributaria->claveAcceso,0,49);
            $params = $pdf->serializeTCPDFtagParameters(array($facNumber, 'CODE11', '', '', 85, 18, 0.4, array('position'=>'S','stretch' => true, 'border'=>false, 'padding'=>0.5, 'fgcolor'=>array(0,0,0), 'bgcolor'=>array(255,255,255), 'text'=>true, 'font'=>'helvetica', 'fontsize'=>12, 'stretchtext'=>4), 'N'));
            $divstr.='<td style="font-size:2px;"> <tcpdf method="write1DBarcode" params="'.$params.'" /> </td>';
          $divstr.='</tr>';
        $divstr.='</table>';
      $divstr.='</div>'; 

        $divstr.='</td>';

      $divstr.='</tr>';
      $divstr.='</table>';

          
      $divstr.='<div clas="datos_cliente" style="clear:left;border:1px solid #000; margin:3px 0px">';
        $divstr.='<table>';
          $divstr.='<tr>';
          $divstr.='<td style="font-size:12px;">Razón Social / Nombres y Apellidos: '.$xmlFact->infoFactura->razonSocialComprador.'</td>';
          $divstr.='</tr>';
          $divstr.='<tr>';
          $divstr.='<td style="font-size:12px;">Identificación: '.$xmlFact->infoFactura->identificacionComprador.'</td>';
          $divstr.='</tr>';
          $divstr.='<tr>';
          $divstr.='<td style="font-size:12px;">Fecha Emisión: '.$xmlFact->infoFactura->fechaEmision.'</td>';
          $divstr.='</tr>';
        $divstr.='</table>';
      $divstr.='</div>';          
         
      $divstr.='<table style="border: 1px solid #000; border-collapse: collapse;" >';
      $divstr.='<tr>';
          $divstr.='<th width="65" style="font-size:10px;padding:0px 3px;border: 1px solid #000;text-align:center;font-weight: bold;">Código<br/>Principal</th>';
          $divstr.='<th width="65" style="font-size:10px;padding:0px 3px;border: 1px solid #000;text-align:center;font-weight: bold;">Código <br/> Auxiliar</th>';
          $divstr.='<th width="60" style="font-size:10px;padding:0px 3px;border: 1px solid #000;text-align:center;font-weight: bold;">Cantidad</th>';
          $divstr.='<th width="242" style="font-size:10px;border: 1px solid #000;text-align:center;font-weight: bold;">Descripción</th>';
          $divstr.='<th width="65" style="font-size:10px;border: 1px solid #000;text-align:center;font-weight: bold;">Precio<br/>Unitario</th>';
          //$divstr.='<th width="60" style="font-size:10px;border: 1px solid #000;text-align:center;font-weight: bold;">Subsidio</th>';
          $divstr.='<th width="70" style="font-size:10px;border: 1px solid #000;text-align:center;font-weight: bold;">Descuento</th>';
          $divstr.='<th width="71" style="font-size:10px;border: 1px solid #000;text-align:center;font-weight: bold;">Precio Total</th>';
        $divstr.='</tr>';
      
      $parametro = &get_instance();
      $parametro->load->model("Parametros_model");     
      $decimalesprecio = $parametro->Parametros_model->sel_decimalesprecio();    
      $decimalescantidad = $parametro->Parametros_model->sel_decimalescantidad();    

      $totalsubsidio = 0;
      for ($i=0; $i < count($xmlFact->detalles->detalle); $i++) 
      {
          $divstr.='<tr>';
          $divstr.='<td style="font-size:9px;border: 1px solid #000;text-align:center; ">'.$xmlFact->detalles->detalle[$i]->codigoPrincipal.'</td>';
          $divstr.='<td style="font-size:9px;border: 1px solid #000;text-align:center; ">'.$xmlFact->detalles->detalle[$i]->codigoAuxiliar.'</td>';
          $divstr.='<td style="font-size:9px;border: 1px solid #000;text-align:center; ">'.number_format((double)$xmlFact->detalles->detalle[$i]->cantidad, $decimalescantidad).'</td>';
          $divstr.='<td style="font-size:9px;border: 1px solid #000;text-align:left; ">'.$xmlFact->detalles->detalle[$i]->descripcion.'</td>';
          $divstr.='<td style="font-size:9px;border: 1px solid #000;text-align:right; ">'.number_format((double)$xmlFact->detalles->detalle[$i]->precioUnitario, $decimalesprecio).'</td>';
          //$divstr.='<td style="font-size:9px;border: 1px solid #000;text-align:right; ">'.number_format($subsidio,2).'</td>';
          $divstr.='<td style="font-size:9px;border: 1px solid #000;text-align:right ; ">'.$xmlFact->detalles->detalle[$i]->descuento.'</td>';
          $divstr.='<td style="font-size:9px;border: 1px solid #000;text-align:right; ">'.$xmlFact->detalles->detalle[$i]->precioTotalSinImpuesto.'</td>';
          $divstr.='</tr>';
      }             
      $divstr.='</table>';

      $divstr.='<table cellspacing="1"  style=" border-spacing: 3px 0;" cellpadding="0" border="0">';
      $divstr.='<tr>';

        $divstr.='<td width="295px">';

        $divstr.='<div class="adicional" style="">';
          $divstr.='<div style="border: 1px solid #000;">';
          $divstr.='<div style="font-size:11px;">Información Adicional</div>';
          for ($i=0; $i < count($xmlFact->infoAdicional->campoAdicional); $i++) {
            if ($xmlFact->infoAdicional->campoAdicional[$i]['nombre'] != 'Subsidio'){
                $divstr.='<div class="row" style="font-size:11px; padding: 0; margin: 0; "> '.$xmlFact->infoAdicional->campoAdicional[$i]['nombre'].': '.$xmlFact->infoAdicional->campoAdicional[$i].'</div>';
            }
            else{
                $totalsubsidio = $xmlFact->infoAdicional->campoAdicional[$i];
                //alert($totalsubsidio);
            }                
          }
          
          $formaPago=$xmlFact->infoFactura->pagos->pago->formaPago;
          if($formaPago=="01"){$mostrarFormaPago="EFECTIVO ";}
          if($formaPago=="20"){$mostrarFormaPago="CHEQUE ";}
          if($formaPago=="19"){$mostrarFormaPago="TARJETA DE CREDITO ";}
          if($formaPago=="16"){$mostrarFormaPago="TARJETA DE DEBITO ";}
          if($formaPago=="18"){$mostrarFormaPago="TARJETA PREPAGO ";}
          if($formaPago=="20"){$mostrarFormaPago="TRANSFERENCIA ";}
          if($formaPago=="17"){$mostrarFormaPago="DINERO ELECTRONICO ";}
          if($formaPago=="20"){$mostrarFormaPago="OTROS ";}

        $divstr.='<div class="row" style="font-size:11px;"> Forma de Pago:'.$mostrarFormaPago.'</div>';

          $divstr.='</div>';
        $divstr.='</div>';        

        $divstr.='</td>';

        $divstr.='<td width="22px">';
        $divstr.='<div>';
        $divstr.='</div>';
        $divstr.='</td>';

        $divstr.='<td width="255px">';
        

        $divstr.='<div class="impuestos" style="">';
        $divstr.='<div style="margin-left: 90px;">';
          $divstr.='<table style="border: 1px solid #000; ">';
            $divstr.='<tr>';

            $baseiva = 0;
            $montoiva = 0;
            for ($i=0; $i < count($xmlFact->infoFactura->totalConImpuestos->totalImpuesto); $i++) {
              if (($xmlFact->infoFactura->totalConImpuestos->totalImpuesto[$i]->codigo == '2') &&
                 ($xmlFact->infoFactura->totalConImpuestos->totalImpuesto[$i]->codigoPorcentaje != '0')){
                $base = (double)$xmlFact->infoFactura->totalConImpuestos->totalImpuesto[$i]->baseImponible;
                $baseiva += $base;

                $montoiva += (double)$xmlFact->infoFactura->totalConImpuestos->totalImpuesto[$i]->valor;
              }
            }
            $totalSinImpuestos = (double)$xmlFact->infoFactura->totalSinImpuestos;
            $basenoiva = $totalSinImpuestos - $baseiva;
            $descuento = (double)$xmlFact->infoFactura->totalDescuento;
  
            $divstr.='<td width="248" style="font-size:11px;border: 1px solid #000;text-align:left;">SUBTOTAL 12%</td>';
            $divstr.='<td width="70" style="font-size:11px;border: 1px solid #000;text-align:right;">'.number_format($baseiva,2).'</td>';
            $divstr.='</tr>';
            $divstr.='<tr>';
            $divstr.='<td style="font-size:11px;border: 1px solid #000;text-align:left;">SUBTOTAL 0%</td>';
            $divstr.='<td style="font-size:11px;border: 1px solid #000;text-align:right;">'.number_format($basenoiva,2).'</td>';
            $divstr.='</tr>';
            $divstr.='<tr>';
            $divstr.='<td style="font-size:11px;border: 1px solid #000;text-align:left;">SUBTOTAL No objeto de IVA</td>';
            $divstr.='<td style="font-size:11px;border: 1px solid #000;text-align:right;">0.00</td>';
            $divstr.='</tr>';
            $divstr.='<tr>';
            $divstr.='<td style="font-size:11px;border: 1px solid #000;text-align:left;">SUBTOTAL Exento de IVA</td>';
            $divstr.='<td style="font-size:11px;border: 1px solid #000;text-align:right;">0.00</td>';
            $divstr.='</tr>';
            $divstr.='<tr>';
            $divstr.='<td style="font-size:11px;border: 1px solid #000;text-align:left;">SUBTOTAL SIN IMPUESTOS</td>';
            $divstr.='<td style="font-size:11px;border: 1px solid #000;text-align:right;">'.number_format($totalSinImpuestos,2).'</td>';
            $divstr.='</tr>';
            $divstr.='<tr>';
            $divstr.='<td style="font-size:11px;border: 1px solid #000;text-align:left;">TOTAL Descuento</td>';
            $divstr.='<td style="font-size:11px;border: 1px solid #000;text-align:right;">'.number_format($descuento,2).'</td>';
            $divstr.='</tr>';
            $divstr.='<tr>';
            $divstr.='<td style="font-size:11px;border: 1px solid #000;text-align:left;">ICE</td>';
            $divstr.='<td style="font-size:11px;border: 1px solid #000;text-align:right;">0.00</td>';
            $divstr.='</tr>';
            $divstr.='<tr>';
            $divstr.='<td style="font-size:11px;border: 1px solid #000;text-align:left;">IVA 12%</td>';
            $divstr.='<td style="font-size:11px;border: 1px solid #000;text-align:right;">'.number_format($montoiva,2).'</td>';
            $divstr.='</tr>';
            $divstr.='<tr>';
            $divstr.='<td style="font-size:11px;border: 1px solid #000;text-align:left;">IRBPNR</td>';
            $divstr.='<td style="font-size:11px;border: 1px solid #000;text-align:right;">0.00</td>';
            $divstr.='</tr>';
            $divstr.='<tr>';
            $divstr.='<td style="font-size:11px;border: 1px solid #000;text-align:left;">   PROPINA</td>';
            $divstr.='<td style="font-size:11px;border: 1px solid #000;text-align:right;">'.number_format((double)$xmlFact->infoFactura->propina,2).'</td>';
            $divstr.='</tr>';
            $divstr.='<tr>';
            $divstr.='<td style="font-size:11px;border: 1px solid #000;text-align:left;">VALOR TOTAL</td>';
            $divstr.='<td style="font-size:11px;border: 1px solid #000;text-align:right;">'.number_format((double)$xmlFact->infoFactura->importeTotal,2).'</td>';
            $divstr.='</tr>';
          $divstr.='</table>';
          $divstr.='</div>';

          $parametro = &get_instance();
          $parametro->load->model("Parametros_model");
          $impresionsubsidio = $parametro->Parametros_model->sel_impresionsubsidio();
          //$totalsubsidio= (double)15;
          if ($impresionsubsidio == 1){
            $impSubsidio = number_format((double)$totalsubsidio,2);
            $impTotal = number_format((double)$xmlFact->infoFactura->importeTotal,2);

            
              $divstr.='<div style="margin-left:10px; ">';
              $divstr.='<table style="margin-left:10px; border-collapse: collapse;padding-left:10px;">';
                $divstr.='<tr>'; 
                $divstr.='<th width="248" style="font-size:10px;padding:0px 3px;border: 1px solid #000;text-align:left;">VALOR TOTAL SIN SUBSIDIO</th>';            
                //$divstr.='<th width="102" style="font-size:10px;padding:0px 3px;border: 1px solid #000;text-align:right;">'.number_format((double)$xmlFact->infoFactura->importeTotal + $totalsubsidio,2).'</th>';            
                $divstr.='<th width="70" style="font-size:10px;padding:0px 3px;border: 1px solid #000;text-align:right;">'.($impSubsidio + $impTotal) .'</th>';            
                $divstr.='</tr>';
                $divstr.='<tr>'; 
                $divstr.='<td style="font-size:10px;padding:0px 3px;border: 1px solid #000;text-align:left;">AHORRO POR SUBSIDIO</td>';            
                $divstr.='<td style="font-size:10px;padding:0px 3px;border: 1px solid #000;text-align:right;">'.number_format((double)$totalsubsidio,2).'</td>';            
                $divstr.='</tr>';
              $divstr.='</table>';
              $divstr.='</div>';
              
              //Nueva parte para logo
              $divstr.='<div class="cuadro_logo" style="height:100px; padding-right:40px;" align="right" >';
              $imagen = 'subsidioEcuador.png';
              if (trim($imagen) != ''){
                $divstr.='<img src="'.FCPATH.'/public/img/'.$imagen.'" alt="" />';
              }  

            $divstr.='</div>';
          }

        $divstr.='</div>';   


        $divstr.='</td>';
      $divstr.='</tr>';
      $divstr.='</table>'; */

      $divstr.='</body>';
    $divstr.='</html>';
      
    return $divstr;    
  }
  //function obtenerMensajeCorreo($objfac, $claveAcceso){
  function obtenerMensajeCorreo($objfac){
    $msg = "<!DOCTYPE html>
            <html lang='es'>
            <head>
                <meta charset='UTF-8'>
            </head>
            <body>
            <div style='margin: 0 auto; background-color: white; width:800px; overflow-y:auto;'>
                <h4>Estimado(a)  $objfac->nom_cliente </h4>
                <hr>
                <p>
                    <strong>Esta es una notificación automática de la emisión de un documento tributario electrónico emitido por $objfac->nom_emp</strong>
                    <br/>
                    <br/>
                    <strong>Tipo de Comprobante: </strong> FACTURA
                    <br/>
                    <strong>Nro. de Comprobante: </strong> $objfac->cod_establecimiento-$objfac->cod_puntoemision-$objfac->nro_factura
                    <br/>
                    <strong>Clave de Acceso: </strong> $objfac->cod_establecimiento-$objfac->cod_puntoemision-$objfac->nro_factura
                    <br/>
                    <p>En cumplimiento con la Resolución NAC-DGERCGC12-00105 emitida por el SRI, adjunto a este correo 
                    se encuentra su comprobante electrónico(a) en formato XML, así como su interpretación en formato PDF.</p>
                    <br/>
                    <p>Atentamente,</p>
                    <strong>$objfac->nom_emp</strong>
                </p>
                <br>

            </div>
        </body>
     </html>";
    return $msg;
  }  

  function actualiza_enviado($claveacceso){
    $this->objmodel->actualiza_enviadoVenta($this->id, $claveacceso);
  }

  function actualiza_autorizado($fechaautorizo){
    $this->objmodel->actualiza_autorizadoVenta($this->id, $fechaautorizo);
  }

  function actualiza_rechazado($claveacceso){
    $this->objmodel->actualiza_rechazadoVenta($this->id, $claveacceso);
  }

  function sel_claveacceso(){
    return $this->objmodel->sel_claveaccesoVenta($this->id);
  }

  function datoscomprobante(){
    return $this->objmodel->datosfactura($this->id);
  }

  function actualiza_correoenviado(){
    $this->objmodel->actualiza_correoenviadoVenta($this->id);
  }

}

?>
