<?php
session_start();
require_once "../../clases/Gestor.php";
$Gestor = new Gestor();

if (isset($_POST['categoriasArchivos'])) {
    $idCategoria = $_POST['categoriasArchivos'];
} else {
    echo "Categoría no recibida";
    exit();
}

if (isset($_SESSION['idUsuario'])) {
    $idUsuario = $_SESSION['idUsuario'];
} else {
    echo "Usuario no autenticado";
    exit();
}

// Verificar si se reciben archivos
if (isset($_FILES['archivos'])) {
    // Verificar si hay archivos cargados
    if ($_FILES['archivos']['size'][0] > 0) {
        $carpetaUsuario = '../../uploads/' . $idUsuario;

        if (!file_exists($carpetaUsuario)) {
            mkdir($carpetaUsuario, 0777, true);
        }

        $totalArchivos = count($_FILES['archivos']['name']);
        $respuesta = 0;

        for ($i = 0; $i < $totalArchivos; $i++) {
            $nombreArchivo = $_FILES['archivos']['name'][$i];
            $explode = explode('.', $nombreArchivo);
            $tipoArchivo = array_pop($explode);
            $rutaAlmacenamiento = $_FILES['archivos']['tmp_name'][$i];
            $rutaFinal = $carpetaUsuario . "/" . $nombreArchivo;

            // Debugging: Imprimir información del archivo
            error_log("Nombre del archivo: " . $nombreArchivo);
            error_log("Tipo del archivo: " . $tipoArchivo);
            error_log("Ruta de almacenamiento temporal: " . $rutaAlmacenamiento);
            error_log("Ruta final: " . $rutaFinal);

            $datosRegistroArchivo = array(
                "idUsuario" => $idUsuario,
                "idCategoria" => $idCategoria,
                "nombreArchivo" => $nombreArchivo,
                "tipo" => $tipoArchivo,
                "ruta" => $rutaFinal
            );

            if (move_uploaded_file($rutaAlmacenamiento, $rutaFinal)) {
                $respuesta = $Gestor->agregarRegistroArchivo($datosRegistroArchivo);
            } else {
                // Debugging: Error en la subida del archivo
                error_log("Error al mover el archivo: " . $nombreArchivo);
            }
        }
        echo $respuesta;
    } else {
        echo "Archivo no recibido o vacío";
        // Debugging: Imprimir información de errores de subida
        error_log("Error en la subida de archivo: " . json_encode($_FILES['archivos']['error']));
    }
} else {
    echo "No se ha recibido ningún archivo";
    error_log("No se ha recibido ningún archivo en el array _FILES['archivos']");
}
?>
