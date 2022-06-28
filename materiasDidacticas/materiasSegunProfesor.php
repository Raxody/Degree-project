<?php

require '../environmentConexion.php';

$codigoMateria = $_GET['codigo'];

$sql="SELECT DISTINCT p.nombre AS profesor, p.apellido profesorApellido, p.codigo AS codigoProfesor,
e.codigo AS codigoMateria FROM res_espacio AS e
JOIN res_asignacion_didactica AS a ON (e.codigo = a.codigo_espacio)
JOIN res_profesor AS p ON (p.codigo = a.codigo_profesor) WHERE e.codigo = $codigoMateria";

$resultado = $mysqli->query($sql);
?>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../materiasDidacticas/css/styleCargarMaterias.css">
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
    
    <div class="container-fluid d-flex justify-content-center">
    <form class="form-horizontal" method="POST" action="./didacticasSegunProfesor.php" autocomplete="off">
        <div class="row col-lg-10 d-flex justify-content-center">
            <?php while($row = $resultado->fetch_array(MYSQLI_ASSOC)) {?>
                <div class="card" style="width: 18rem;">
                        <img class="card-img-top" src="../images/estrategiasDidacticas.png" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title" >
                                <?php  echo $row['profesor']," ", $row['profesorApellido']?></h5>
                            <input type="hidden" id="codigoMateria" name="codigoMateria" value="<?php echo $codigoMateria?>">
                            <div class="centrarBoton">
                                    <a  class="btn btn-danger" href="./didacticasSegunProfesor.php?codigoMateria=<?php echo $codigoMateria;?>&codigoProfesor=<?php  echo $row['codigoProfesor'];?>"
                               >VER</a>
                            </div>
                        </div>
                    </div>
            <?php } ?>
            </form>
            <div class="card" style="width: 18rem;">
                <img class="card-img-top" src="../images/estrategiasDidacticas.png" alt="Card image cap">
                <div class="card-body">
                    <h5 class="card-title">Didácticas reunidas</h5>
                    <div class="centrarBoton">
                        <a  class="btn btn-danger" href="./didacticasSegunMateria.php?codigoMateria=<?php echo $codigoMateria?>"
                               >VER</a>
               
                        
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>