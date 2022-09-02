<?php

require '../environmentConexion.php';

$descripcion = $_GET['descripcion'];

$sql="SELECT DISTINCT p.nombre AS profesor, p.apellido profesorApellido, d.descripcion AS descripcion,
d.detalle AS detalle,e.nombre AS espacio FROM res_espacio AS e, res_didactica AS d, 
res_asignacion_didactica AS a, res_profesor AS p WHERE a.descripcion_didactica = d.descripcion
 AND a.codigo_espacio = e.codigo AND p.codigo = a.codigo_profesor AND d.descripcion = '$descripcion'";

$resultado = $mysqli->query($sql);



$sql2="SELECT p.detalle FROM res_didactica AS p WHERE p.descripcion = '$descripcion'";

$resultado2 = $mysqli->query($sql2);


?>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../didacticasMaterias/css/styleCargarDidacticas.css">
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
        <?php while($row2 = $resultado2->fetch_array(MYSQLI_ASSOC)) {?>
        <div class="centrarBoton">
        <h2 style="text-transform: uppercase; font-size: 35px;"><?php echo $descripcion?></h2>
        </div>
        
        <p>La didáctica <?php echo $descripcion?> consiste en <?php echo $row2['detalle']?>
            la utilizan los siguientes profesores con sus respectivos espacios:</p>
        <?php } ?>
        <br>
        <div class="table-responsive">
            <table class="table table-striped table-hover ">
                <thead>
                    <th>Profesor</th>
                    <th>Espacio</th>
                </thead>
                <?php while($row = $resultado->fetch_array(MYSQLI_ASSOC)) {?>
                <tr>
                    <td><?php echo $row['profesor']," ",$row['profesorApellido']?> </td>
                    <td><?php echo $row['espacio']?></td>
                </tr>
                <?php } ?>
            </table>
        </div>

    </div>

</body>