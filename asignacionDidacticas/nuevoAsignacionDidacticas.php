<?php
	require '../environmentConexion.php';

	$sqlProfesores = "SELECT * FROM res_profesor ORDER BY nombre ASC";
	$resultadoProfesores = $mysqli->query($sqlProfesores);

	
	$sqlDidacticas = "SELECT * FROM res_didactica ORDER BY descripcion ASC";
	$resultadoDidacticas = $mysqli->query($sqlDidacticas);

	$sqlEspacio = "SELECT * FROM res_espacio ORDER BY nombre ASC";
	$resultadoEspacio = $mysqli->query($sqlEspacio);
?>

<html lang="es">

<head> 

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./css/styleNuevoAsignacionDidacticas.css">
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
              

    <div class="container">
        <img src="../images/ingresarDidactica.png" class="img-fluid" alt="Ingresar didáctica">
        <form class="form-horizontal" method="POST" action="./guardarAsignacionDidacticas.php" autocomplete="off">

            <div class="input-group mb-3">
                <div class="input-group-prepend">
                    <label class="input-group-text" for="profesor">Escoge profesor</label>
                </div>
                <select  class="custom-select" id="profesor" name="profesor" require>
                    <?php while($row = $resultadoProfesores->fetch_array(MYSQLI_ASSOC)) { ?>
                    <option value="<?php echo $row['codigo'];?>"><?php echo $row['nombre']," ", $row['apellido']?></option>
                    <?php } ?>
                </select>
            </div>
            <br>
            <div class="input-group mb-3">
                <div class="input-group-prepend">
                    <label class="input-group-text" for="inputGroupSelect01">Escoge didáctica</label>
                </div>
                <select class="custom-select" id="didactica" name="didactica" require>
                    <?php while($row = $resultadoDidacticas->fetch_array(MYSQLI_ASSOC)) { ?>
                    <option value="<?php echo $row['descripcion'];?>"><?php echo $row['descripcion']; ?></option>
                    <?php } ?>
                </select>
            </div>
            <br>
            <div class="input-group mb-3">
                <div class="input-group-prepend">
                    <label class="input-group-text" for="espacio">Escoge materia</label>
                </div>
                <select class="custom-select" id="espacio" name="espacio" require>
                    <?php while($row = $resultadoEspacio->fetch_array(MYSQLI_ASSOC)) { ?>
                    <option value="<?php echo $row['codigo'];?>"><?php echo $row['nombre']; ?></option>
                    <?php } ?>
                </select>
            </div>
            <br>
            <form class="form-floating">
                <div class="form-group">
                    <a href="../estrategiasDidacticas/estrategiasDidacticas.php" class="btn btn-default">VER DESCRIPCIONES DIDÁCTICAS</a>
                    &nbsp&nbsp&nbsp&nbsp
                    <a href="./asignacionDidacticas.php" class="btn btn-default">Regresar</a>
                    &nbsp&nbsp&nbsp&nbsp
                    <button type="submit" class="btn btn-success">Guardar</button>
                </div>
            </form>
    </div>
</body>

</html>