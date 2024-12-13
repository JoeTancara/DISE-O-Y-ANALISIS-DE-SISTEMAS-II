<?php
    class Conectar{
        public function conexion(){
            $servidor="localhost";
            $usuario="root";
            $password="";
            $base = "gestor_archivos";

            $conexion = mysqli_connect($servidor,
            $usuario, 
            $password, 
            $base);

            // $conexion->ser_charset('utf8mb4');
            return $conexion;
        }
    }

?>