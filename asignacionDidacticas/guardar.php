<?php
	require '../environmentConexion.php';
	
	$descripcion = $_POST['descripcion'];
	$detalle = $_POST['detalle'];
	
	$sql = "INSERT INTO res_didactica (descripcion, detalle) VALUES ('$descripcion', '$detalle')";
	$resultado = $mysqli->query($sql);

	$sqlProfesores = "SELECT * FROM res_profesor"
	$resultadoProfesores = $mysqli->query($sqlProfesores);

	$sqlDidacticas = "SELECT * FROM res_didactica"
	$resultadoDidacticas = $mysqli->query($resultadoDidacticas);

	$sqlEspacio = "SELECT * FROM res_espacio"
	$resultadoEspacio = $mysqli->query($sqlEspacio);
	
?>

<html lang="es">
	<head>
		
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link href="css/bootstrap.min.css" rel="stylesheet">
		<link href="css/bootstrap-theme.css" rel="stylesheet">
		<script src="js/jquery-3.1.1.min.js"></script>
		<script src="js/bootstrap.min.js"></script>	
	</head>
	
	<body>
		<div class="container">
			<div class="row">
				<div class="row" style="text-align:center">
					<?php if($resultado) { ?>
						<h3>DIDÁCTICA GUARDADO</h3>
						<?php } else { ?>
						<h3>ERROR AL GUARDAR LA DIDÁCTICA</h3>
					<?php } ?>
					
					<a href="index.php" class="btn btn-primary">Regresar</a>
					<script> index.php.reload();</script>
					<script> index.reload();</script>
				</div>
			</div>
		</div>
	</body>
</html>
