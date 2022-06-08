<?php
include("conexion.php");
$con=conectar();

$codigo=$_POST['codigo'];
$descripcion=$_POST['descripcion'];
$detalle=$_POST['detalle'];


$sql="INSERT INTO res_didactica VALUES($codigo,'$descripcion','$detalle')";
$query= mysqli_query($con,$sql);

if($query){
    Header("Location: registrarDidactica.php");    
}

?>