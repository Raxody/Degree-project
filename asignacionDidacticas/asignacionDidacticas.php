<?php
    require '../environmentConexion.php';
	
	$where = "";
	
	if(!empty($_POST))
	{
		$criterio = $_POST['criterio'];
		if( !empty($criterio)){
			$where = "WHERE e.nombre LIKE '%$criterio%' or p.nombre LIKE '%$criterio%'
            or a.descripcion_didactica LIKE '%$criterio%' ";
		}
	}
	$sql = "SELECT e.nombre AS espacio,p.nombre AS profesor,a.descripcion_didactica AS didactica,
     e.codigo AS codigoEspacio,p.codigo AS codigoProfesor FROM res_espacio AS e
     JOIN res_asignacion_didactica AS a ON (e.codigo = a.codigo_espacio)
     JOIN res_profesor AS p ON (p.codigo = a.codigo_profesor) $where ORDER BY p.codigo ASC, e.codigo ASC";
	$resultado = $mysqli->query($sql);
?>



<html lang="es">

<head>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <link rel="stylesheet" href="./css/styleAsignacionDidacticas.css">
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

    <div class="container" style="text-align: center; ">
        <br>
        <br>
        <div class="imagen">
            <img src="../images/asignarEstrategiasDidacticas.png" class="img-fluid" alt="Ingresar didáctica">
        </div>

        <br>
            <form action="<?php $_SERVER['PHP_SELF']; ?>" method="POST">

                <div class="row">
                    <div class="col">
                        <input type="text" id="criterio" name="criterio" class="form-control" />
                    </div>
                    <div class="col">
                    <input type="image" id="enviar" name="enviar" value="Buscar" src="../images/buscar.png"
                        alt="Ingresar didáctica" />
                    </div>
                    <div class="col">
                    <a href="./nuevoAsignacionDidacticas.php"><img src="../images/agregar.png" alt=""></a>
                    </div>
                </div>
     
            </form>


        <br>



        <div class="table-responsive">
            <table class="table table-striped table-hover ">
                <thead>
                    <tr>
                        <th>Espacio</th>
                        <th>Profesor</th>
                        <th>didactica</th>
                        <th></th>
                    </tr>
                </thead>

                <tbody>
                    <?php while($row = $resultado->fetch_array(MYSQLI_ASSOC)) { ?>
                    <tr>

                        <td><?php echo $row['espacio']; ?></td>
                        <td><?php echo $row['profesor']; ?></td>
                        <td><?php echo $row['didactica']; ?></td>
                        <td><a href="#"
                                data-href="./eliminarAsignacionDidacticas.php?codigoProfesor=<?php echo $row['codigoProfesor'];?>&codigoEspacio=<?php echo $row['codigoEspacio'];?>&didactica=<?php echo $row['didactica'];?>"
                                data-toggle="modal" data-target="#confirm-delete"><img src="../images/delete.png" alt=""
                                    width="40" height="40"></a></td>
                    </tr>
                    <?php } ?>
                </tbody>
            </table>
        </div>
    </div>

    <!-- Modal -->
    <div class="modal fade" id="confirm-delete" tabindex="1" role="dialog" aria-labelledby="myModalLabel"
        aria-hidden="true" name="aaa">
        <div class="modal-dialog">
            <div class="modal-content">

                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel">Eliminar didáctica</h4>
                </div>

                <div class="modal-body">
                    ¿Desea eliminar esta didactica?
                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                    <a class="btn btn-danger btn-ok">Eliminar</a>
                </div>
            </div>
        </div>
    </div>

    <script>
    $('#confirm-delete').on('show.bs.modal', function(e) {
        $(this).find('.btn-ok').attr('href', $(e.relatedTarget).data('href'));

        $('.debug-url').html('Delete URL: <strong>' + $(this).find('.btn-ok').attr('href') + '</strong>');
    });
    </script>

</body>

</html>