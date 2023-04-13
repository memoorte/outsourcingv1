<?php
$alert = '';

session_start();
if(!empty($_SESSION['active'])){
    header('location: indexEmpresa.php');
}else{

if(!empty($_POST)){
    if(empty($_POST['correo_empresa']) || empty($_POST['contrasena_empresa'])){

        $alert = 'Ingrese su nombre de correo y su contraseña';
    }else{

        include("conexion.php");

        $correoE = $_POST['correo_empresa'];
        $contrasenaE     = $_POST['contrasena_empresa'];

        $consulta = mysqli_query($conexion, "SELECT * FROM empresas WHERE correo = '$correoE' AND contrasena = '$contrasenaE'");
        $result = mysqli_num_rows($consulta);

        if($result > 0){
            $data = mysqli_fetch_array($consulta);
            $_SESSION['active'] = true;
            $_SESSION['id'] = $data['id'];
            $_SESSION['nombreE'] = $data['nombre'];
            $_SESSION['apellido_paterno'] = $data['apellido_paterno'];
            $_SESSION['apellido_materno'] = $data['apellido_materno'];
            $_SESSION['nombre_empresa'] = $data['nombre_empresa'];
            $_SESSION['correoE'] = $data['correo'];
            $_SESSION['contrasenaE'] = $data['contrasena'];
            $_SESSION['giro'] = $data['giro'];
            $_SESSION['tamano'] = $data['tamano'];

            header('location: indexEmpresa.php');
        }else{
            $alert = 'El correo y/o la contraseña son incorrectos';
            session_destroy();
        }

    }
}
}
?>