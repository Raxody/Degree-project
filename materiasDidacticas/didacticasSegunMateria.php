<?php

require '../environmentConexion.php';

$codigoMateria = $_GET['codigoMateria'];

$sql="SELECT DISTINCT d.* FROM res_didactica AS d,res_espacio AS e,res_asignacion_didactica AS a,res_profesor AS p  
WHERE e.codigo = a.codigo_espacio AND p.codigo = a.codigo_profesor AND d.descripcion = a.descripcion_didactica
AND e.codigo = $codigoMateria";

$resultado = $mysqli->query($sql);
?>

<html lang="es">

<head>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <link rel="stylesheet" href="./css/styleEstrategiasDidacticas.css">
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
        
		<script src="js/bootstrap.min.js"></script>	


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
    <?php while($row = $resultado->fetch_array(MYSQLI_ASSOC)) {?>
    <h1> <?php  echo $row['descripcion']?>/////////////</h1>
    <h1> <?php  echo $row['detalle']?></h1>
    <?php } ?>
    </form>
</body>

</html>