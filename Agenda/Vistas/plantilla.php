<?php
	session_start();
?>

<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>AdminLTE 3 | Blank Page</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="Vistas/plugins/fontawesome-free/css/all.min.css">
  <link rel="stylesheet" href="Vistas/dist/css/adminlte.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="Vistas/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
  <link rel="stylesheet" href="Vistas/plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
  <link rel="stylesheet" href="Vistas/plugins/datatables-buttons/css/buttons.bootstrap4.min.css">


	<!-- jQuery -->
	<script src="Vistas/plugins/jquery/jquery.min.js"></script>
	<!-- Bootstrap 4 -->
	<script src="Vistas/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- AdminLTE App -->
	<script src="Vistas/dist/js/adminlte.min.js"></script>
  <script src="Vistas/plugins/datatables/jquery.dataTables.min.js"></script>
  <script src="Vistas/plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
  <script src="Vistas/plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
  <script src="Vistas/plugins/sweetalert2/sweetalert2.all.js"></script>
</head>

<?php
	echo '<body class="hold-transition sidebar-mini">';	
	if(isset($_SESSION["ingreso"]) && $_SESSION['ingreso'] == '0k') {
		if(isset($_GET['ruta'])) {
			if($_GET['ruta'] == 'inicio' ||
			$_GET['ruta'] == 'usuarios' ||
			$_GET['ruta'] == 'salir') {
				include "encabezado.php";
				include "menu.php";

				echo '<div class="content-wrapper">';
				include "Vistas/".$_GET['ruta'].".php";
				echo '</div>';
			}
		}
		else {
			include "Vistas/404.php";
		}
	}
	else {
		//include "Vistas/inicio.php";
		echo '<body class="hold-transition skin-blue sidebar-collapse sidebar-mini login-page">';
		include "login.php";
	}

?>

<script src="Vistas/js/usuarios.js"></script>
</body>
</html>
