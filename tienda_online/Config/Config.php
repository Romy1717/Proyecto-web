<?php

	const BASE_URL = "http://localhost/tienda_online/";

	//Zona horaria
	date_default_timezone_set('America/Mexico_City');

	//Datos de conexión a Base de Datos
	const DB_HOST = "localhost";
	const DB_NAME = "db_store";
	const DB_USER = "root";
	const DB_PASSWORD = "";
	const DB_CHARSET = "utf8";

	//Deliminadores decimal y millar Ej. 24,1989.00
	const SPD = ".";
	const SPM = ",";

	//Simbolo de moneda
	const SMONEY = "MXN";

	//Datos envio de correo
	const NOMBRE_REMITENTE = "AXW Store";
	const EMAIL_REMITENTE = "no-reply@axw.com";
	const NOMBRE_EMPESA = "AXW Store";
	const WEB_EMPRESA = "www.axw.com";

	const CAT_SLIDER = "1,2,3";
	const CAT_BANNER = "4,5,6";

	//Datos para Encriptar / Desencriptar
	const KEY = 'axw';
	const METHODENCRIPT = "AES-128-ECB";

	//Envío
	const COSTOENVIO = 50;


 ?>