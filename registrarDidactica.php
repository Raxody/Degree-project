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
    <link rel="stylesheet" href="css/style.css">
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

    <div class="container mt-5">
        <form action="insertarDidacticasMaterias.php" method="POST">

            <div class="form-group">
                <label for="codigo">Codigo didáctica</label>
                <input type="text" class="form-control" id="codigo" placeholder="Codigo didactica">
            </div>

            <div class="form-group">
                <label for="inputAddress">Address</label>
                <input type="text" class="form-control" id="descripcion" placeholder="1234 Main St">
            </div>

            <div class="form-group">
                <label for="inputAddress2">Address 2</label>
                <input type="text" class="form-control" id="inputAddress2" placeholder="Apartment, studio, or floor">
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="inputCity">City</label>
                    <input type="text" class="form-control" id="inputCity">
                </div>
                <div class="form-group col-md-4">
                    <label for="inputState">State</label>
                    <select id="inputState" class="form-control">
                        <option selected>Choose...</option>
                        <option>...</option>
                    </select>
                </div>
                <div class="form-group col-md-2">
                    <label for="inputZip">Zip</label>
                    <input type="text" class="form-control" id="inputZip">
                </div>
            </div>
            <div class="form-group">
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" id="gridCheck">
                    <label class="form-check-label" for="gridCheck">
                        Check me out
                    </label>
                </div>
            </div>
            <button type="submit" class="btn btn-primary">Sign in</button>
        </form>
    </div>
</body>

</html>