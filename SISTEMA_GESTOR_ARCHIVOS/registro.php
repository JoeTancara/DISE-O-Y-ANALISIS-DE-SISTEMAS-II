<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>REGISTRO</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <link rel="stylesheet" href="librerias/jquery-ui-1.13.3/jquery-ui.theme.css">
    <link rel="stylesheet" href="librerias/jquery-ui-1.13.3/jquery-ui.css">
    
    <!-- <link rel="stylesheet" href="librerias/bootstrap4/bootstrap.min.css"> -->
    <!-- <link rel="stylesheet" href="css/login.css"> -->
</head>
<body>
    <div class="container">
    <h1 class="text-center">REGISTRO DE USUARIO</h1>
        <div class="row">
            <div class="col-sm-4"></div>
            <div class="col-sm-4">
                <form action="" method="post" id="frmRegistro" onsubmit="return agregarUsuarioNuevo()" autocomplete="off">
                    <label for="nombre">Nombre:</label>
                    <input type="text" id="nombre" name="nombre" class="form-control" required="">
                    <label for="fechaNacimiento">Fecha de Nacimiento:</label>
                    <input type="date" id="fechaNacimiento" name="fechaNacimiento" class="form-control" required="" >
                    <label for="email">Email o Correo:</label>
                    <input type="email" id="email" name="email" class="form-control" required="" >
                    <label for="usuario">Nombre de Usuario:</label>
                    <input type="text" id="usuario" name="usuario" class="form-control" required="">
                    <label for="password">Password o Contraseña:</label>
                    <input type="password" id="password" name="password" class="form-control" required="">
                    <br>
                    <div class="row">
                        <div class="col-sm-6 text-left">
                        <button class="btn btn-primary">REGISTRAR</button>
                        </div>
                        <div class="col-sm-6 text-right">
                        <a href="index.php" class="btn btn-success">LOGIN</a>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-sm-4"></div>
        </div>
    </div>

    <!-- <script src="librerias/sweetalert.min.js"></script> -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="librerias/jquery-ui-1.13.3/jquery-ui.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

    <script type="text/javascript">

        // $(function(){
        //     var fechaA = new Date();
        //     var yyyy = fechaA.getFullYear();

        //     $("#fechaNacimiento").datepicker({
        //         changeMonth:true,
        //         changeYear: true,
        //         yearRange:'1900:' + yyyy,
        //         dateFormat: "dd-mm-yy"
        //     });
        // });


        function agregarUsuarioNuevo(){
            $.ajax({
                method:"POST",
                data:$('#frmRegistro').serialize(),
                url:"procesos/usuario/registro/agregarUsuario.php",
                success:function(respuesta){
                    respuesta = respuesta.trim();
                    if(respuesta == 1){
                        $("#frmRegistro")[0].reset();
                        swal("okey", "Agregado con exito!", "success");
                    }else if(respuesta == 2){
                     swal("error", "Usuario ya existe, escribe otro!!!!");
                    }else{
                        swal("error","Error al registrar", "error");
                    }
                }
            });
            return false;
        }
    </script>
</body>
</html>
