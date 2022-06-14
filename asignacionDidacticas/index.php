<?php
    require '../environmentConexion.php';
	
	$where = "";
	
	if(!empty($_POST))
	{
		$criterio = $_POST['criterio'];
		if( !empty($criterio)){
			$where = "WHERE e.nombre LIKE '%$criterio%' or p.nombre LIKE '%$criterio%'
            or a.descripcion_didactica LIKE '%$criterio%'";
		}
	}
	$sql = "SELECT e.nombre AS espacio,p.nombre AS profesor,a.descripcion_didactica AS didactica,
     e.codigo AS codigoEspacio,p.codigo AS codigoProfesor FROM res_espacio AS e
     JOIN res_asignacion_didactica AS a ON (e.codigo = a.codigo_espacio)
     JOIN res_profesor AS p ON (p.codigo = a.codigo_profesor) $where";
	$resultado = $mysqli->query($sql);
?>



<html lang="es">

<head>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-theme.css" rel="stylesheet">
    <script src="js/jquery-3.1.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>

</head>

<body>

    <div class="container" style ="text-align: center; ">
        <br>
        <br>
        <br>
        <br>
        <div class="imagen">
            <img src="../images/asignarEstrategiasDidacticas.png" class="img-fluid" alt="Ingresar didáctica">
        </div>

        <br>
        <div class="row">
            <form action="<?php $_SERVER['PHP_SELF']; ?>" method="POST">
                    <div class="col-sm-8">
                        <input type="text" id="criterio" name="criterio" class="form-control" />
                    </div>
                    <div class="col-sm-2">
                        <input type="image" id="enviar" name="enviar" value="Buscar" src="../images/buscar.png"
                            alt="Ingresar didáctica" />
                    </div>

                <div class="col-sm-2">
                    <a href="nuevo.php"><img src="../images/agregar.png" alt=""  ></a>
                </div>
            </form>

        </div>

        <br>

        

        <div class="table-responsive">
            <table class="table table-striped table-hover ">
                <thead>
                    <tr>
                        <th>Espacio</th>
                        <th>Profesor</th>
                        <th>didactica</th>
                    </tr>
                </thead>

                <tbody>
                    <?php while($row = $resultado->fetch_array(MYSQLI_ASSOC)) { ?>
                    <tr>

                        <td><?php echo $row['espacio']; ?></td>
                        <td><?php echo $row['profesor']; ?></td>
                        <td><?php echo $row['didactica']; ?></td>
                        <td><a href="#" data-href="eliminar.php?codigoProfesor=<?php echo $row['codigoProfesor'];?>&codigoEspacio=<?php echo $row['codigoEspacio'];?>&didactica=<?php echo $row['didactica'];?>"
                                data-toggle="modal" data-target="#confirm-delete"><span
                                    class="glyphicon glyphicon-trash"></span></a></td>
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