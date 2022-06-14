<?php	
   require '../environmentConexion.php';

	$codigoProfesor = $_GET['codigoProfesor'];
    $codigoEspacio = $_GET['codigoEspacio'];
    $didactica = $_GET['didactica'];
	
	$sql = "DELETE FROM res_asignacion_didactica WHERE codigo_profesor = $codigoProfesor AND
    codigo_espacio = $codigoEspacio AND descripcion_didactica = '$didactica'";
	$resultado = $mysqli->query($sql);
	
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
                <h3>DIDÁCTICA ELIMINADA</h3>
                <?php } else { ?>
                <h3>ERROR AL ELIMINAR LA DIDÁCTICA</h3>
                <?php } ?>
                <a href="index.php" class="btn btn-primary">Regresar</a>
            </div>
        </div>
    </div>
</body>

</html>