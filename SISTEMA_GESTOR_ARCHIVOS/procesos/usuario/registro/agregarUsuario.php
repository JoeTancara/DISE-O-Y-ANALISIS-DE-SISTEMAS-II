<?php
    require_once "../../../clases/Usuario.php";
    
    $password = sha1($_POST['password']); // Corregido shal a sha1
    $datos = array(
        "nombre" => $_POST['nombre'], // Corregido nombre a 'nombre'
        "fechaNacimiento" => $_POST['fechaNacimiento'], // Corregido fechaNacimiento a 'fechaNacimiento'
        "email" => $_POST['email'], // Corregido email a 'email'
        "usuario" => $_POST['usuario'], // Corregido usuario a 'usuario'
        "password" => $password
    );
    $usuario =  new Usuario();
    echo $usuario->agregarUsuario($datos);
?>
