
<?php
require '../vendor/autoload.php';
$html = '
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>

<div >
<img src="http://www.domain.com/path/to/image/image.png"   width="200" height="200">
<img src="../images/ud.png"   width="200" height="200">

</div>
<h1> Probando que si imprima mano</h1>
<p> Probando que si imprima manoasdadasdadadsadsasdas</p>
</body>
</html>
';

use Dompdf\Dompdf;
use Dompdf\Options;
//Aquí se crea el objeto a utilizar
$options = new Options();

ob_start();
//Y debes activar esta opción "TRUE"
$options->set('isRemoteEnabled', TRUE);

$dompdf = new DOMPDF($options);

?>
<?php


ob_start();
include "../images/ud.png";
$html = ob_get_clean();
$dompdf->loadHtml($html);
$dompdf->render();
header("Content-type: application/pdf");
header("Content-Disposition: inline; filename=documento.pdf");
echo $dompdf->output();
