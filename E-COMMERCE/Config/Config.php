<?php 
	
	//define("BASE_URL", "http://localhost/tienda_virtual/");
	// AQUI SE CAMBIA PARA SUBIR A PRODUCCION
	// CAMNBIAR LA RUTA DE ARCHIVOS EN EL SERVIDOR
	const BASE_URL = "http://localhost/Tienda";

	//Zona horaria
	date_default_timezone_set('America/La_Paz');

	//Datos de conexión a Base de Datos
	const DB_HOST = "localhost";
	const DB_NAME = "db_tiendavirtual";
	const DB_USER = "root";
	const DB_PASSWORD = "";
	const DB_CHARSET = "utf8";

	//Deliminadores decimal y millar Ej. 24,1989.00
	const SPD = ".";
	const SPM = ",";

	//Simbolo de moneda
	const SMONEY = "Bs";
	const CURRENCY = "USD";
	//Api PayPal
	//SANDBOX PAYPAL
	const URLPAYPAL = "https://api-m.sandbox.paypal.com";
	const IDCLIENTE = "AYcF2p8R-9gV_iUQ1AGdOz_6vOAc_jwwUSfCC4FQr6bWLT_7_d4mbDFrv1ulNnelVZcicrJwgwVwJIRF";
	const SECRET = "EIhyWpvOuPhIBhTKG54dyTJ2HtFc-EbegpQgsyqQkHKqRzZTu0zzdHr9_M7A7u25hNG0o_NySx8wBuCt";
 
	//Datos envio de correo
	const NOMBRE_REMITENTE = "Technologial World";
	const EMAIL_REMITENTE = "no-reply@JOE.com";
	const NOMBRE_EMPESA = "Technologial World";
	const WEB_EMPRESA = "www.JoeTancara.com";
	const DESCRIPCION = "La mejor tienda en línea con artículos de tecnologia.";
	const SHAREDHASH = "TiendaVirtual";
	//Datos Empresa
	const DIRECCION = "Zona Villa Aroma #235";
	const TELEMPRESA = "+591 69803449";
	const WHATSAPP = "+591 69803449";
	const EMAIL_PEDIDOS = "tancarajoe@gmail.com";
	const EMAIL_EMPRESA = "tancarajoe@gmail.com";
	const EMAIL_SUSCRIPCION = "tancarajoe@gmail.com";
	const EMAIL_CONTACTO = "tancarajoe@gmail.com";
	
	const CAT_SLIDER = "1,2,3";
	const CAT_BANNER = "4,5,6";
	const CAT_FOOTER = "1,2,3,4,5";

	//Datos para Encriptar / Desencriptar
	const KEY = 'joedev';
	const METHODENCRIPT = "AES-128-ECB";

	//Envío
	const COSTOENVIO = 10;

	//Módulos
	const MDASHBOARD = 1;
	const MUSUARIOS = 2;
	const MCLIENTES = 3;
	const MPRODUCTOS = 4;
	const MPEDIDOS = 5;
	const MCATEGORIAS = 6;
	const MSUSCRIPTORES = 7;
	const MDCONTACTOS = 8;
	const MDPAGINAS = 9;

	//Páginas
	const PINICIO = 1;
	const PTIENDA = 2;
	const PCARRITO = 3;
	const PNOSOTROS = 4;
	const PCONTACTO = 5;
	const PPREGUNTAS = 6;
	const PTERMINOS = 7;
	const PSUCURSALES = 8;
	const PERROR = 9;

	//Roles
	const RADMINISTRADOR = 1;
	const RSUPERVISOR = 2;
	const RCLIENTES = 7;
	

	const STATUS = array('Completo','Aprobado','Cancelado','Reembolsado','Pendiente','Entregado');

	//Productos por página
	const CANTPORDHOME = 8;
	const PROPORPAGINA = 4;
	const PROCATEGORIA = 4;
	const PROBUSCAR = 4;

	//REDES SOCIALES
	const FACEBOOK = "https://www.facebook.com/";
	const INSTAGRAM = "https://www.instagram.com/";
		


 ?>