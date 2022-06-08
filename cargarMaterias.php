<?php
if($_SERVER['REQUEST_METHOD'] == 'GET'){
include('./conexion.php');
$link=conectar();

$sql="SELECT * FROM res_asignatura";
$query=mysqli_query($link,$sql);
}
?>


<!DOCTYPE html>
<html>

<head>
    <!--Import Google Icon Font-->
    <link href="../../../icon?family=Material+Icons" rel="stylesheet" />
    <!--Import materialize.css-->
    <link type="text/css" rel="stylesheet" href="./css/materialize.min.css" media="screen,projection" />
    <!--<link type="text/css" rel="stylesheet" href="../css/estilo.css"/>-->
    <script src="../../../npm/chart.js%402.9.4/dist/Chart.min.js"></script>
    <!--Let browser know website is optimized for mobile-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <meta charset="UTF-8">
    <title>Document</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="css/styleCargarMaterias.css">
</head>

<body>
    <!--JavaScript at end of body for optimized loading-->
    <script type="text/javascript" src="../js/materialize.min.js"></script>
    <!--<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>-->
    <nav>
        <div class="nav-wrapper">
            <!--- <a href="#" class="brand-logo">Tecno</a>  --->
            <img src="./images/logofinal.jpg" alt="" class="circle responsive-img brand-logo" width="50" height="50" />
            <ul id="nav-mobile" class="right hide-on-med-and-down">
                <li><a href="../resumen/llevo04.php">Resumen</a></li>
                <li><a href="../cronograma/cro02.php">Cronograma</a></li>
                <li><a href="plantilla_pensamientos.php.html">Pensamientos</a></li>
                <li>
                    <a href="../gra_pens_espacio/graficapensamientosporespacio.php">Perfil Pensamientos</a>
                </li>
                <li>
                    <a href="../circulos_pensamientos/circulo9.php">Map Saberes</a>
                </li>
                <li><a href="../jerarquia/jerarquia6.php">Map Curriculo</a></li>
                <li><a href="../teoria/teoria6.php">Teoria</a></li>
                <li><a href="../pdf/e.php?id=1">Descargar Docos</a></li>
                <li><a href="../gra/grafo02.php">CBasicas</a></li>
                <li><a href="../mermaid/eje06.php">AProfesional</a></li>
                <li>
                    <a
                        href="https://udistritaleduco-my.sharepoint.com/:p:/g/personal/lwanumen_udistrital_edu_co/ETlq6HP7_FFFquANLo8yrkcBh-t8ueHYb70shZI797XpBA?rtime=P-E6y80i2kg">Con
                        Curriculares</a>
                </li>
                <li>
                    <a
                        href="https://udistritaleduco-my.sharepoint.com/:x:/g/personal/lwanumen_udistrital_edu_co/EUbAFHIBBNlNp164tADJa0EBz7sNiU0oYTxB2HTobWGbzw">ObjetosEstudio</a>
                </li>
            </ul>
        </div>
    </nav>
    <br />

   

  <div class="container-fluid d-flex justify-content-center">

    <div class="row col-lg-10 d-flex justify-content-center">    
            <?php while($row=mysqli_fetch_array($query)){?>
                
            
      <div class="card" style="width: 18rem;">
                <img class="card-img-top" src="./images/metodologiaDidactica.png" alt="Card image cap">
                <div class="card-body">
                    <h5 class="card-title"><?php  echo $row['codigo_condor'],": ", $row['nombre']?></h5>
                    <p class="card-text"><?php ?></p>
                        <div class="centrarBoton">
                        <a href="#" class="btn btn-primary" value="<?php  echo $row['codigo_condor']?> ">Juantito papi rico</a>
                        </div>                                            
                </div>
            </div>
            <?php } ?>
        </div>
    </div>





    <!--
    <div id="modal1" class="modal">
      <div class="modal-content">
        <h4>Modal Header</h4>
        <p>A bunch of text</p>
      </div>
      <div class="modal-footer">
        <a href="#!" class="modal-close waves-effect waves-green btn-flat"
          >Agree</a
        >
      </div>
    </div>
    -->
</body>

</html>