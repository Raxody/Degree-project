<?php
	require '../environmentConexion.php';

	$descripcion = $_POST['descripcion'];
	$detalle = $_POST['detalle'];
	
	if(!empty($detalle)){
		$sql = "UPDATE res_didactica SET detalle='$detalle' WHERE descripcion = '$descripcion'";
		$resultado = $mysqli->query($sql);
	}
?>

<html lang="es">

<head>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
        integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous">
    </script>
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"
        integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>

    </script>


    <div class="menu"></div>
    <script>
    $(function() {
        $(".menu").load("../navbar.php");
    });
    </script>

</head>

	<body>
    <div class="container">
        <div class="row">
            <div class="row" style="text-align:center">

			<?php if(empty($detalle)) { ?>
                <script>
                swal("¡ERROR!", "No hagas trampa, ve y completa todos los campos...", "error")
                    .then(() => {
                        window.location = "/didacticas/estrategiasDidacticas/estrategiasDidacticas.php";
                    });
                </script>
                <?php }else if($resultado) { ?>
                <script>
                swal("¡GENIAL!", "Didáctica modificada con exito", "success")
                    .then(() => {
                        window.location = "/didacticas/estrategiasDidacticas/estrategiasDidacticas.php";
                    });
                </script>
                <?php } ?>
            </div>
        </div>
    </div>
</body>







</html>
