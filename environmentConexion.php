<?php
	$host = "localhost";
	$user = "root";
	$pass = "";
	$db_name = "sistematizaciondatos_com";

	$mysqli = new mysqli($host, $user, $pass, $db_name);
	
	if($mysqli->connect_error){		
		die('Error en la conexion' . $mysqli->connect_error);		
	}
?>