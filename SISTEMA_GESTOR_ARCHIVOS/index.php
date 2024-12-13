<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>LOGIN</title>
    <link rel="stylesheet" href="librerias/bootstrap4/bootstrap.min.css">
    <link rel="stylesheet" href="css/login.css">
</head>
<body>
    <div class="wrapper fadeInDown">
        <div id="formContent">
            <div class="fadeIn first"><br>
                <img src="img/logooo.png" alt="" id="logooo"/><br><br>
                <h3>ACCESO</h3>
                <img src="img/archivo.png" width="100" id="icon" alt="User Icon" />
                <h1>Gestión de Manuales</h1>
            </div>
            <form id="formLogin" method="post" onsubmit="return logear()">
                <input type="text" id="login" class="fadeIn second" name="login" placeholder="Usuario" required="">
                <input type="password" id="password" class="fadeIn third" name="password" placeholder="Contraseña" required="">
                <input type="submit" class="fadeIn fourth" value="INGRESAR">
            </form>
            <div id="formFooter">
                <a class="underlineHover" href="registro.php">REGISTRAR</a>
            </div>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script type="text/javascript">
        function logear(){
            $.ajax({
                type: "POST",
                data: $('#formLogin').serialize(),
                url: "procesos/usuario/login/login.php",
                success:function(respuesta){
                    // alert(respuesta);
                    respuesta = respuesta.trim();
                    if (respuesta == 1) {
                        window.location = "vistas/inicio.php";
                    } else {
                        swal(":(", "fallo al entrar!!", "error");
                    }
                }
            });
            return false;
        }
    </script>
</body>
</html>
