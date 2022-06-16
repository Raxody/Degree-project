<?php
	require '../environmentConexion.php';
    if(!empty($_POST) )
	{
	$descripcion = $_POST['descripcion'];
	$detalle = $_POST['detalle'];
    $sql = "INSERT INTO res_didactica (descripcion, detalle) VALUES ('$descripcion', '$detalle')";
	$resultado = $mysqli->query($sql);

    }
	
	
?>

<html lang="es">


    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link rel="stylesheet" href="./css/styleNuevo.css">
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
        
        <div class="menu"></div>
        <script>
        $(function() {
            $(".menu").load("../navbar.php");
        });
        </script>

    </head>

<body>


    <br>
    <br>
    <div class="container">
        <img src="../images/ingresarDidactica.png" class="img-fluid" alt="Ingresar didáctica">
        <br>
        <br>
        <form class="form-horizontal" method="POST" action="<?php $_SERVER['PHP_SELF']; ?>" autocomplete="off">

            <div class="row">
                <div class="col-sm-2">
                    <label for="descripcion" class="labels">*Nombre:</label>
                </div>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="descripcion" name="descripcion"
                        placeholder="Ingresa el nombre de la didactica" required>
                </div>
            </div>
            <br>
            <div class="row">
                <div class="col-sm-2">
                    <label for="detalle" class="labels">*Detalle:</label>
                </div>
                <div class="col-sm-10">
                    <textarea class="form-control" placeholder="Digita una descripción detallada sobre la didactica"
                        id="detalle" name="detalle"></textarea>
                </div>
            </div>
            <br>
            <form class="form-floating">
                <div class="form-group">
                    <a href="index.php" class="btn btn-default">Regresar</a>
                    &nbsp&nbsp&nbsp&nbsp
                    <button type="submit" class="btn btn-success" onclick="hizoClick()">Guardar</button>
                </div>
            </form>
    </div>

    <script>
    function hizoClick() {
        var descripcion = document.getElementById("descripcion").value;
        var detalle = document.getElementById("detalle").value;
        if (descripcion == "" || detalle == "") {
          
        } else {
            
        alert("dvsvxcv")
            swal("Perfecto!", "Didáctica agregada con exito", "success")

    }
}

    </script>
</body>

</html>