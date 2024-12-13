<?php

require_once "Conexion.php";

class Usuario extends Conectar {

    public function agregarUsuario($datos) {
        $conexion = Conectar::conexion();
    
        if ($this->buscarUsuarioRepetido($datos['usuario'])) {
            return 2; // Usuario repetido
        } else {
            $sql = "INSERT INTO t_usuarios (nombre, fechaNacimiento, email, usuario, password) 
                    VALUES(?, ?, ?, ?, ?)";
            $query = $conexion->prepare($sql);
            
            // Hash de la contraseña usando SHA-1 antes de almacenar
            $hashedPassword = sha1($datos['password']);
    
            $query->bind_param('sssss', 
                                $datos['nombre'],
                                $datos['fechaNacimiento'],
                                $datos['email'],
                                $datos['usuario'],
                                $hashedPassword);
            $exito = $query->execute();
            $query->close();
            return $exito ? 1 : 0; // 1 si éxito, 0 si falla
        }
    }
    

    public function buscarUsuarioRepetido($usuario){
        $conexion = Conectar::conexion();
        $sql = "SELECT usuario FROM t_usuarios WHERE usuario = ?";
        $query = $conexion->prepare($sql);
        $query->bind_param('s', $usuario);
        $query->execute();
        $query->store_result();

        if($query->num_rows > 0){
            $query->close();
            return 1; // Usuario repetido
        } else {
            $query->close();
            return 0; // Usuario no repetido
        }
    } 

    public function loginn($usuario, $password) {
        $conexion = Conectar::conexion();
        $hashedPassword = sha1($password);
    
        $sql = "SELECT id_usuario FROM t_usuarios WHERE usuario = ? AND password = ?";
        $query = $conexion->prepare($sql);
        $query->bind_param('ss', $usuario, $hashedPassword);
        $query->execute();
        $query->store_result();
    
        if ($query->num_rows > 0) {
            $query->bind_result($idUsuario);
            $query->fetch();
            $_SESSION['usuario'] = $usuario;
            $_SESSION['idUsuario'] = $idUsuario;
            $query->close();
            return 1;
        } else {
            $query->close();
            return 0;
        }
    }
    
}
?>
