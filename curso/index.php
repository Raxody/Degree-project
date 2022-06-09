<?php
	require 'conexion.php';
	
	$where = "";
	
	if(!empty($_POST))
	{
		$codigo = $_POST['codigo'];
		if( !empty($codigo)){
			$where = "WHERE codigo LIKE '%$codigo%' or descripcion LIKE '%$codigo%'";
		}
	}
	$sql = "SELECT * FROM res_didactica $where";
	$resultado = $mysqli->query($sql);
	
?>



<html lang="es">

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/styleIndex.css">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-theme.css" rel="stylesheet">
    <script src="js/jquery-3.1.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>

</head>

<body>

    <div class="container">
        <br>
        <br>
        <br>
        <br>
        <div class="imagen">
            <img src="../images/metodologiaDidacticaHorizontal.png" class="img-fluid" alt="Ingresar didáctica">
        </div>

        <br>
        <div class="row">
            <form action="<?php $_SERVER['PHP_SELF']; ?>" method="POST">
                <div class="col-sm-8">
                    <input type="text" id="codigo" name="codigo" class="form-control" />
                </div>
                <div class="col-sm-2">
                    <input type="image" id="enviar" name="enviar" value="Buscar" src="../images/buscar.png"
                        alt="Ingresar didáctica" />
                </div>
                <div class="col-sm-2">
                    <a href="nuevo.php"><img src="../images/agregar.png" alt=""></a>
                </div>
            </form>

        </div>

        <br>

        <div class="row table-responsive">
            <table class="table table-striped table-hover ">
                <thead>
                    <tr class="">
                        <th>Codigo</th>
                        <th>Nombre didáctica</th>
                    </tr>
                </thead>

                <tbody>
                    <?php while($row = $resultado->fetch_array(MYSQLI_ASSOC)) { ?>
                    <tr>
                        <td><?php echo $row['codigo']; ?></td>
                        <td><?php echo $row['descripcion']; ?></td>
                        <td><a href="modificar.php?codigo=<?php echo $row['codigo']; ?>"><span
                                    class="glyphicon glyphicon-pencil"></span></a></td>
                        <td><a href="#" data-href="eliminar.php?codigo=<?php echo $row['codigo']; ?>"
                                data-toggle="modal" data-target="#confirm-delete"><span
                                    class="glyphicon glyphicon-trash"></span></a></td>
                    </tr>
                    <?php } ?>
                </tbody>
            </table>
        </div>
    </div>

    <!-- Modal -->
    <div class="modal fade" id="confirm-delete" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
        aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">

                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel">Eliminar registro</h4>
                </div>

                <div class="modal-body">
                    ¿Desea eliminar esta didactica?
                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-danger btn-ok">Delete</a>
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