<?php 

class modeloEmpresa{
    private $nombre;
    private $apellido_paterno;
    private $apellido_materno;
    private $nombre_empresa;
    private $correo;
    private $giro;
    private $tamano;

    function inicializar($a,$b,$c,$d,$e,$f,$g){
        $this->nombre            = $a;
        $this->apellido_paterno  = $b;
        $this->apellido_materno  = $c;
        $this->nombre_empresa    = $d;
        $this->correo            = $e;
        $this->giro              = $f;
        $this->tamano            = $g;
    }

    function conectarBD(){
        $conexion = mysqli_connect("localhost","root","","outsourcing") 
        or die ("Problemas en la conexion a la base de datos");
        return $conexion;
    }

    function listarEmpresas(){

        $registro=mysqli_query($this->conectarBD(), "SELECT id, nombre, apellido_paterno, apellido_materno, 
        nombre_empresa, correo, giro, tamano FROM empresas") 
        or die("Problemas con la comsulta".mysqli_error($this->conectarBD()));

    echo "<table class='table table-hover table-striped table-responsive'>";
    echo "<thead>
    <tr>
    <th scope='col'>Id</th>
    <th scope='col'>Nombre</th>
    <th scope='col'>Apellido Paterno</th>
    <th scope='col'>Apellido Materno</th>
    <th scope='col'>Nombre Empresa</th>
    <th scope='col'>Correo</th>
    <th scope='col'>Giro</th>
    <th scope='col'>Tamaño</th>
    </tr>
    </thead>";
        while($reg=mysqli_fetch_array($registro)){
            echo '<tr><td>'.$reg['id'].'</td>';
            echo '<td>'.$reg['nombre'].'</td>';
            echo '<td>'.$reg['apellido_paterno'].'</td>';
            echo '<td>'.$reg['apellido_materno'].'</td>';
            echo '<td>'.$reg['nombre_empresa'].'</td>';
            echo '<td>'.$reg['correo'].'</td>';
            echo '<td>'.$reg['giro'].'</td>';  
            echo '<td>'.$reg['tamano'].'</td>';     
    }
    echo "</table>";
    
    }


    function cerrarBD(){
        mysqli_close($this->conectarBD());
    }

}
?>