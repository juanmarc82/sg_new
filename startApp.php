 <?php
 //Conn param defined
define("HOST_BBDD","localhost");
define("USER_BBDD","root");
define("PASS_BBDD","");
define("NAME_BBDD","stopgo");

$conexion = mysqli_connect(HOST_BBDD, USER_BBDD, PASS_BBDD, NAME_BBDD);
// Checking conn.
if($conexion === false){
    die("ERROR: Error de conexión " . mysqli_connect_error());
}

$root='/sg_new/';

$template_seccion = "templates/home.php"; 
?>