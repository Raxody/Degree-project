<?php

require '../environmentConexion.php';

$codigoProfesor = $_GET['codigoProfesor'];
$codigoMateria = $_GET['codigoMateria'];


$sql="SELECT d.* FROM res_didactica AS d,res_espacio AS e,res_asignacion_didactica AS a,res_profesor AS p  
WHERE e.codigo = a.codigo_espacio AND p.codigo = a.codigo_profesor AND d.descripcion = a.descripcion_didactica
AND e.codigo = $codigoMateria and p.codigo = $codigoProfesor";

$resultado = $mysqli->query($sql);

$sql2 = "SELECT DISTINCT p.nombre AS profesor,p.apellido AS apellido, e.nombre AS materia FROM res_didactica AS d,res_espacio AS e,res_asignacion_didactica AS a,res_profesor AS p 
WHERE e.codigo = a.codigo_espacio AND p.codigo = a.codigo_profesor AND d.descripcion = a.descripcion_didactica
AND e.codigo = $codigoMateria and p.codigo = $codigoProfesor";

$resultado2 = $mysqli->query($sql2);
?>

<html lang="es">

<head>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <link rel="stylesheet" href="../materiasDidacticas/css/styleMostrarParaPDFS.css">
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
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@500&family=Raleway:ital,wght@0,700;1,400&display=swap" rel="stylesheet">


    <div class="menu"></div>
    <script>
    $(function() {
        $(".menu").load("../navbar.php");
    });
    </script>

</head>

<body>
    <div class="container">
        <br>
        <?php while($row = $resultado2->fetch_array(MYSQLI_ASSOC)) {?>
        <h2>Reporte de didácticas de la materia <?php echo $row['materia']?> que dicta el profesor <?php echo $row['profesor']?> <?php echo $row['apellido']?> </h2>
        <?php } ?>
        <div class="row">
            <div id="content" class="col-lg-12">
                <a class="nada" href="./reporteDidacticasSegunProfesor.php?codigoMateria=<?php echo $codigoMateria?>&codigoProfesor=<?php  echo $codigoProfesor ?>">
                    <img src="../images/pdf.png" alt="" width="40" height="40">
                </a>
            </div>
           
            <br>
            <div class="table-responsive">
                <table class="table table-striped table-hover ">


                    <thead>
                        <th>Descripcion</th>
                        <th>Detalle</th>
                    </thead>
                    <?php while($row = $resultado->fetch_array(MYSQLI_ASSOC)) {?>
                    <tr>
                        <td><?php echo $row['descripcion']?> </td>
                        <td><?php echo $row['detalle']?></td>
                    </tr>
                    <?php } ?>
                </table>
            </div>
        </div>
</body>

</html>
