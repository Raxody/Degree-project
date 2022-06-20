<?php
require 'vendor/autoload.php';
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
<h1> Probando que si imprima mano</h1>
<p> Probando que si imprima manoasdadasdadadsadsasdas</p>
</body>
</html>
';

use Dompdf\Dompdf;
$dompdf = new Dompdf();
$dompdf->load_html($html);
$dompdf->render();
$dompdf->stream("Documento.pdf",array('Attachment'=>'0'));

?>