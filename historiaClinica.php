
<?php 


include("clases/Conexion.php");



?>
<?php
session_start();

?>


<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin 2 - Register</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="assets/img/favicon.png" rel="icon">
    <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">
  
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
  
    <!-- Vendor CSS Files -->
    <link href="assets/vendor/aos/aos.css" rel="stylesheet">
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
    <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
    <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
    <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
  
    <!-- Template Main CSS File -->
    <link href="assets/css/style.css" rel="stylesheet">

  <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="css/sb-admin-2.min.css" rel="stylesheet">

  <!--Alertas-->
  <link href="alertifyjs/css/alertify.css" rel="stylesheet">

  <!-- Core theme CSS (includes Bootstrap)-->
  <link href="css/styles.css" rel="stylesheet" />
  

</head>
   
 
<header id="header" class="fixed-top ">
  <div class="container d-flex align-items-center justify-content-lg-between">

    <h1 class="logo me-auto me-lg-0"><a href="index.php">Expediente Medico<span>.</span></a></h1>
    <!-- Uncomment below if you prefer to use an image logo -->
    <!-- <a href="index.html" class="logo me-auto me-lg-0"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

    <nav id="navbar" class="navbar order-last order-lg-0">
      <ul>
        <li><a class="nav-link scrollto active" href="index.php">Inicio</a></li>
        <li><a class="nav-link scrollto" href="#about">Sobre Nosotros</a></li>
        <!-- <li><a class="nav-link scrollto" href="#services">Servicios</a></li> -->
        
        <!-- <li><a class="nav-link scrollto" href="#team">Equipo</a></li> -->

        <li><a class="nav-link scrollto" href="#contact">Contacto</a></li>
        <li class="dropdown"><a href="#"><span>Secciones</span> <i class="bi bi-chevron-down"></i></a>
          <ul>
              <li><a href="historial_medico.php">Expediente</a></li>
              <!-- <li class="dropdown"><a href="#"><span>Deep Drop Down</span> <i class="bi bi-chevron-right"></i></a>
                <ul>
                  <li><a href="#">Deep Drop Down 1</a></li>
                  <li><a href="#">Deep Drop Down 2</a></li>
                  <li><a href="#">Deep Drop Down 3</a></li>
                  <li><a href="#">Deep Drop Down 4</a></li>
                  <li><a href="#">Deep Drop Down 5</a></li>
                </ul>
              </li> -->
              <li><a href="citas.php">agendar cita</a></li>
              <li><a href="receta.php">Receta electrónica</a></li>
              <li><a href="historiaClinica.php">Historia clínica</a></li>
          </ul>
        </li>
        <li><a class="nav-link scrollto" href="registera2.html">Registrarte</a></li>
      </ul>
      <i class="bi bi-list mobile-nav-toggle"></i>
    </nav><!-- .navbar -->
    
    <a href="clases/cerrarSesion.php" class="get-started-btn scrollto">Cerrar sección</a>

  </div>
</header><!-- End Header -->



  <!-- <section id="hero" class="d-flex align-items-center justify-content-center">
    <div class="container" data-aos="fade-up"> -->

      <section id="hero" class="d-flex align-items-center justify-content-center">
        <div class="container">
          
            <div class="card-body p-5">
                <!-- Nested Row within Card Body -->
                
                <div class="row">
                <aside> <a href="pdf/historiaclinica.php?idUsuario2=<?php echo $_SESSION['usuario_id']; ?>" target="_blank" class="scrollto btn btn-warning btn btn-primary">DescargarPDF</a></aside>
                    <!-- <img src="assets/img/about.jpg" width="400" height="400" /> -->
                    <div class="col-lg-7">
                        <div class="p-2">
                            <div class="text-center">
                                <h1 class="h4 text-gray-900 mb-10">¡Datos historial Clinico!</h1>
                            </div>
                            <form class="user" name="historialMedico">
                              <div class="form-group">
                                <label for="fechaUltimaVisita">Fecha de la última visita:</label>
                                <input type="date" class="form-control form-control-user" id="fechaUltimaVisita" name="fechaUltimaVisita">
                              </div>
                              <div class="form-group">
                                <label for="medicamentos">Medicamentos:</label>
                                <textarea class="form-control form-control-user" id="medicamentos" name="medicamentos" placeholder="Medicamentos"></textarea>
                              </div>
                              <div class="form-group">
                                <label for="alergias">Alergias:</label>
                                <textarea class="form-control form-control-user" id="alergias" name="alergias" placeholder="Alergias"></textarea>
                              </div>
                              <div class="form-group">
                                <label for="enfermedadesPrevias">Enfermedades Previas:</label>
                                <textarea class="form-control form-control-user" id="enfermedadesPrevias" name="enfermedadesPrevias" placeholder="Enfermedades Previas"></textarea>
                              </div>
                              <div class="form-group">
                                <label for="cirugiasPrevias">Cirugías Previas:</label>
                                <textarea class="form-control form-control-user" id="cirugiasPrevias" name="cirugiasPrevias" placeholder="Cirugías Previas"></textarea>
                              </div>
                              <div class="form-group">
                                <label for="diagnosticosAnteriores">Diagnosticos Anteriores:</label>
                                <textarea class="form-control form-control-user" id="diagnosticosAnteriores" name="diagnosticosAnteriores" placeholder="Diagnosticos Anteriores"></textarea>
                              </div>
                              <input type="hidden" id="idUsuario2" name="idUsuario2" value="<?php echo $_SESSION['usuario_id']; ?>">

                              <div class="form-group">
                                <input type="button" value="Guardar Historial Médico" onclick="validarHistorialMedico()" class="btn btn-primary btn-user btn-block">
                              </div>
                              <hr>
                            </form>
                            <div id="guardando"></div>
                            
                            <hr>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        </section>
      </div>
      
    </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>

    <!--Scripts-->
    <script src="scripts/ajaxU.js"></script>
    <script src="scripts/validacionU.js"></script>
    <script src="alertifyjs/alertify.min.js"></script>

</body>

</html>