<?php
$alert = '';

session_start();
if(!empty($_SESSION['active'])){
    header('location: indexA.php');
}else{

if(!empty($_POST)){
    if(empty($_POST['correo_admin']) || empty($_POST['contrasena_admin'])){

        $alert = 'Ingrese su nombre de correo y su contraseña';
    }else{

        include("conexion.php");

        $correoA = $_POST['correo_admin'];
        $contrasenaA     = $_POST['contrasena_admin'];

        $consulta = mysqli_query($conexion, "SELECT * FROM administrador WHERE correo = '$correoA' AND contrasena = '$contrasenaA'");
        $result = mysqli_num_rows($consulta);

        if($result > 0){
            $data = mysqli_fetch_array($consulta);
            $_SESSION['active'] = true;
            $_SESSION['id'] = $data['id'];
            $_SESSION['nombre'] = $data['nombre'];
            $_SESSION['correo'] = $data['correo'];
            $_SESSION['contrasena'] = $data['contrasena'];

            header('location: indexA.php');
        }else{
            $alert = 'El correo y/o la contraseña son incorrectos';
            session_destroy();
        }

    }
}
}
?>