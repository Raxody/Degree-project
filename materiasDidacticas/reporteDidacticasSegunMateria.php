<?php

require '../environmentConexion.php';

$codigoMateria = $_GET['codigoMateria'];

$sql="SELECT DISTINCT d.* FROM res_didactica AS d,res_espacio AS e,res_asignacion_didactica AS a,res_profesor AS p  
WHERE e.codigo = a.codigo_espacio AND p.codigo = a.codigo_profesor AND d.descripcion = a.descripcion_didactica
AND e.codigo = $codigoMateria";

$resultado = $mysqli->query($sql);


$sql2 = "SELECT nombre FROM res_espacio WHERE codigo = $codigoMateria";

$resultado2 = $mysqli->query($sql2);
?>

<head>
    <style>
    h2 {
        text-align: center;
        color: black;
        font-size: 3em;
        font-family: 'Quicksand', sans-serif;
    }
    .container{
        
        text-align: center;
    }
    table{
        border-collapse: collapse;
    }
    </style>
</head>

<?php while($row = $resultado2->fetch_array(MYSQLI_ASSOC)) {?>
<h2>Reporte de didácticas de la materia <?php echo $row['nombre']?></h2>
<?php } ?>
<br>

<body>
    <div class="container">
        <table width="730px" cellpadding="1px" cellspacing="1px" border="1">
            <tr bgcolor="#fdeaeb" style="text-align: center;font-family: 'Quicksand', sans-serif;">
                <td>Descripción</td>
                <td>Detalle</td>
            </tr>
            <?php while($row = $resultado->fetch_array(MYSQLI_ASSOC)) {?>
            <tr  style="font-family: 'Quicksand';">
                <td><?php echo $row['descripcion']?> </td>
                <td><?php echo $row['detalle']?></td>

            </tr>
            <?php } ?>
        </table>
    </div>

</body>

<?php
require_once '../vendor/autoload.php';
use Dompdf\Dompdf;
$dompdf = new DOMPDF();
$dompdf->load_html(ob_get_clean());
$dompdf->render();
$pdf = $dompdf->output();
$filename = "Reporte didcácticas.pdf";
file_put_contents($filename, $pdf);
$dompdf->stream($filename);
?>