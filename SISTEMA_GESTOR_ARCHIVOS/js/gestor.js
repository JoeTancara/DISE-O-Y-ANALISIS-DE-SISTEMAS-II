function agregarArchivosGestor() {
    var formData = new FormData(document.getElementById('frmArchivos'));
    $.ajax({
        url: "../procesos/gestor/guardarArchivos.php",
        type: "POST",
        datatype: "html",
        data: formData,
        cache: false,
        contentType: false,
        processData: false,
        success: function(respuesta) {
            respuesta = respuesta.trim();
            if (respuesta == 1) {
                $('#frmArchivos')[0].reset();
                $('#tablaGestorArchivos').load("gestor/tablaGestor.php");
                swal(":D", "Agregado con éxito", "success");
            } else {
                swal(":(", "Fallo al agregar: " + respuesta, "error");
            }
        }
    });
}


function eliminarArchivo(idArchivo){
    swal({
        title:"Estas seguro de eliminar ?",
        text:"Una vez eliminado, no se podra recuperar!",
        icon:"warning",
        buttons:true,
        dangerMode:true,
    })
    .then((willDelete)=>{
        if(willDelete){
            $.ajax({
                type:"POST",
                data:"idArchivo="+idArchivo,
                url:"../procesos/gestor/eliminarArchivo.php",
                success:function(respuesta){
                    respuesta=respuesta.trim();
                    if(respuesta == 1){
                        $('#tablaGestorArchivos').load("gestor/tablaGestor.php");
                        swal("Eliminado  con exito!",{
                            icon:"success",
                        });
                    }else{
                        swal("Error al eliminar!", {
                            icon:"error",
                        });
                    }
                }
            })
        }
    })
}

function obtenerArchivoPorId(idArchivo){

    $.ajax({
        type:"POST",
        data:"idArchivo=" + idArchivo,
        url:"../procesos/gestor/obtenerArchivo.php",
        success:function(respuesta){
            $('#archivoObtenido').html(respuesta);
        }

    })


}