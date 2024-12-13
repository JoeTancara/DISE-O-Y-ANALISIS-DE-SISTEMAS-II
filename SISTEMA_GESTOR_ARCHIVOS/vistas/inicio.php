<?php
    session_start();
    if(isset($_SESSION['usuario'])){
        include "header.php";
?>
<style>
        .carousel-inner img {
            width: 100%; /* Ajusta el ancho al 100% del contenedor */
            height: 400px; /* Ajusta la altura a un valor fijo */
            object-fit: cover; /* Mantiene la proporción de la imagen */
        }
    </style>
    <!-- Espacio debajo del header -->
    <div class="container mt-5">
        <!-- Título principal -->
        <div class="row justify-content-center">
            <div class="col-sm-12 text-center">
                <h4 class="font-weight-bold text-primary">MANUAL DIGITAL DE FUNCIONES DE PASANTES EN EL ÁREA DE REFRENDADO EN LA SUBDIRECCIÓN DE EDUCACIÓN SUPERIOR DE FORMACIÓN PROFESIONAL DE LA D.D.E.LP.</h4>
            </div>
        </div>

        <!-- Carrusel para tres fotos -->
        <div id="carouselExampleIndicators" class="carousel slide mt-4" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block w-100" src="../img/uno.jpg" alt="Primera imagen">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="../img/dos.jpg" alt="Segunda imagen">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="../img/tres.jpg" alt="Tercera imagen">
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>

        <!-- Contenido principal -->
        <div class="row justify-content-center mt-4">
            <div class="col-sm-6">
                <!-- Card de Misión -->
                <div class="card shadow-sm text-center mb-4">
                    <div class="card-body">
                        <h3 class="card-title">Misión</h3>
                        <p class="card-text">
                            La Dirección Departamental de Educación - La Paz, tiene como misión institucional, implementar de manera transparente y oportuna las políticas educativas y de administración curricular en el Departamento, así como la administración y gestión de los recursos en el ámbito de su jurisdicción, competencias y funciones.
                        </p>
                    </div>
                </div>

                <!-- Card de Visión -->
                <div class="card shadow-sm text-center">
                    <div class="card-body">
                        <h3 class="card-title">Visión</h3>
                        <p class="card-text">
                            La visión que tiene la Dirección Departamental de Educación – La Paz es “…una Dirección Departamental de Educación, consolidada, fortalecida garantizando la implementación de una educación productiva comunitaria y de calidad para todas y todos, con pertinencia sociocultural..."
                        </p>
                    </div>
                </div>
            </div>

            <!-- Card de Ubicación -->
            <div class="col-sm-6">
                <div class="card shadow-sm text-center">
                    <div class="card-body">
                        <h3 class="card-title">Ubicación</h3>
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3825.391719835389!2d-68.12997302535625!3d-16.506310240886844!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x915f20646e9a39c5%3A0xedd55077dde6036b!2sAv.%20Arce%202147%2C%20La%20Paz!5e0!3m2!1ses!2sbo!4v1729198599558!5m2!1ses!2sbo" width="100%" height="350" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br>

<?php 
    include "footer.php";
    }else{
        header("location:../index.php");
    }
?>
