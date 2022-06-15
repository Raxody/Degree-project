<?php
    require '../environmentConexion.php';
	
	$where = "";
	
	if(!empty($_POST))
	{
		$descripcion = $_POST['descripcion'];
		if( !empty($descripcion)){
			$where = "WHERE descripcion LIKE '%$descripcion%'";
		}
	}
	$sql = "SELECT * FROM res_didactica $where";
	$resultado = $mysqli->query($sql);
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

    <div class="menu"></div>
    <script>
    $(function() {
        $(".menu").load("../navbar.php");
    });
    </script>

</head>

<body>

    <div class="container" style ="text-align: center; ">
        <br>
        <br>
        <br>
        <br>
        <div class="imagen">
            <img src="../images/estrategiasDidacticasHorizonal.png" class="img-fluid" alt="Ingresar didáctica">
        </div>

        <br>
        <div class="row">
            <form action="<?php $_SERVER['PHP_SELF']; ?>" method="POST">
                    <div class="col-sm-8">
                        <input type="text" id="descripcion" name="descripcion" class="form-control" />
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
                        <th>Nombre didáctica</th>
                    </tr>
                </thead>

                <tbody>
                    <?php while($row = $resultado->fetch_array(MYSQLI_ASSOC)) { ?>
                    <tr>

                        <td><?php echo $row['descripcion']; ?></td>
                        <td><a href="modificar.php?descripcion=<?php echo $row['descripcion']; ?>">
                        <img src="../images/editar.png" alt="" width="40" height="40"></a></td>
                        <td><a href="#" data-href="eliminar.php?descripcion=<?php echo $row['descripcion']; ?>"
                                data-toggle="modal" data-target="#confirm-delete">
                                <img src="../images/delete.png" alt=""  width="40" height="40"></a></td>
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