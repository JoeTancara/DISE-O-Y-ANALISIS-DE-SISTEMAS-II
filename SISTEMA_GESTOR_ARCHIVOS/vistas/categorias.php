<?php
    session_start();
    if(isset($_SESSION['usuario'])){
        include "header.php";
?>

    <div class="jumbotron jumbotron-fluid">
        <div class="container">
            <h1 class="display-4">Categorìas</h1>
            <div class="row">
                <div class="col-sm-4">
                    <span class="btn btn-primary"  data-toggle="modal" data-target="#modalAgregaCategoria">
                        <span class="fas fa-plus-circle"></span> Agregar nueva categoria
                    </span>
                </div>
            </div>
            <hr>
            <div class="row">
                <div class="col-sm-12">
                    <div id="tablaCategorias">

                    </div>
                </div>
            </div>
        </div>
    </div>


    <!-- Modal -->
    <div class="modal fade" id="modalAgregaCategoria" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-sm" role="document">
        <div class="modal-content">
        <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">AGREGAR NUEVA CATEGORIA</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
            </button>
        </div>
        <div class="modal-body">
            <form action="" id="frmCategorias">
                <label for="">Nombre de la Categoria:</label>
                <input type="text" name="nombreCategoria" id="nombreCategoria" class="form-control">
            </form>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
            <button type="button" class="btn btn-primary" id="btnGuardarCategoria">Guardar</button>
        </div>
        </div>
    </div>
    </div>



<!-- Modal -->
<div class="modal fade" id="modalActualizarCategoria" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-sm">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Actualizar Categoria</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form action="" id="frmActualizarCategoria">
            <input type="text" id="idCategoria" name="idCategoria" hidden="">
            <label for="">Categoria</label>
            <input type="text" id="categoriaU" name="categoriaU" class="form-control">
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal" id="btnCerrarUpdateCategoria">Cerrar</button>
        <button type="button" class="btn btn-warning" id="btnActualizarCategoria">Actualizar</button>
      </div>
    </div>
  </div>
</div>
<?php 
    include "footer.php";

    ?>
<!-- Mixpanel Script -->
<script type="text/javascript">(function(f,b){if(!b.__SV){var a,e,i,g;window.mixpanel=b;a=f.createElement("script");a.type="text/javascript";a.async=!0;a.src="https://cdn.mxpnl.com/libs/mixpanel-2-latest.min.js";e=f.getElementsByTagName("script")[0];e.parentNode.insertBefore(a,e);b._i=[];b.init=function(a,e,d){function f(b,h){var a=h.split(".");2==a.length&&(b=b[a[0]],h=a[1]);b[h]=function(){b.push([h].concat(Array.prototype.slice.call(arguments,0)))}}var c=b;"undefined"!==typeof d?c=b[d]=[]:d="mixpanel";c.people=c.people||[];c.toString=function(b){var a="mixpanel";"mixpanel"!==d&&(a+="."+d);b||(a+=" (stub)");return a};c.people.toString=function(){return c.toString(1)+".people (stub)"};i="disable time_event track track_pageview track_links track_forms register register_once alias unregister identify name_tag set_config reset people.set people.set_once people.unset people.increment people.append people.union people.track_charge people.clear_charges people.delete_user".split(" ");for(g=0;g<i.length;g++)f(c,i[g]);b._i.push([a,e,d])};b.__SV=1.2}})(document,window.mixpanel||[]);
mixpanel.init("YOUR_PROJECT_TOKEN");</script>

<script src="../js/categorias.js"></script>
<script type="text/javascript">
    $(document).ready(function(){
        console.log("Document JOE!"); // Mensaje para verificar que el script se ejecuta
        $('#tablaCategorias').load("categorias/tablaCategoria.php");

        $('#btnGuardarCategoria').click(function(){
            agregarCategoria();
        });
        $('#btnActualizarCategoria').click(function(){
            actualizarCategoria();
        });
    });
</script>
    <?php
    }else{
        header("location:../index.php");
    }

?>