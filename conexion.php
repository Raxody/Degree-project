<?php
    function conectar() 
    {
        $host = "localhost";
        $user = "root";
        $pass = "";
        $db_name = "sistematizaciondatos_com";

        //crear la conexion 
        $link = mysqli_connect($host, $user, $pass) or die("No se pudo conectar a la base de datos".mysqli_error($link));

        //seleccionar la base de datos
        mysqli_select_db($link, $db_name) or die("No se encontro ninguna base de datos".mysqli_error($link));
        return $link;
    }
?>