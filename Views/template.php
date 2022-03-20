<?php
    session_start();
?>

<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Admin</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="Views/plugins/fontawesome-free/css/all.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="Views/dist/css/adminlte.min.css">
</head>
<body class="hold-transition sidebar-mini">

<?php
    if(isset($_SESSION["iniciaSesion"]) && $_SESSION["iniciaSesion"] == "0k"){
    		echo '<div class="wrapper"">';
    		include "encabezado.php";
    		include "menu.php";

    		if(isset($_GET["ruta"])) {
    			if($_GET["ruta"] == "usuarios" ||
    			  $_GET["ruta"] == "salir") {
    				 echo '<div class="content-wrapper">';
    				include "".$_GET["ruta"].".php";
    				//include "pie.php";
    				echo '</div>';
    			}
    			else {
    				include "404.php";
    			}

    		}
    		else {
    			include "inicio.php";
    		}
    		echo '</div>';
    	} else {
    		include "login.php";
    	}
?>

<!-- jQuery -->
<script src="plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="dist/js/demo.js"></script>
</body>
</html>
