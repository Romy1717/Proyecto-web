<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Usuarios</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
  <!-- DataTables -->
  <link rel="stylesheet" href="plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
  <link rel="stylesheet" href="plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
  <link rel="stylesheet" href="plugins/datatables-buttons/css/buttons.bootstrap4.min.css">
  <!-- Bootstrap 4 -->
  <script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/adminlte.min.css">
</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">
  <!-- Navbar -->
  <?php
    include "encabezado.php";
    include "menu.php";
    include "../Controllers/users_controller.php";
  ?>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Usuarios</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Usuarios</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
            <div class="card">

              <div class="card-header">
                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#agregarUsuario">
                        Agregar contacto
                    </button>



              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table class="table table-bordered table-hover">
                  <thead>
                  <tr>
                    <th>ID</th>
                    <th>Nombre</th>
                    <th>Alias</th>
                    <th>Foto</th>
                    <th>Perfil</th>
                    <th>Estado</th>
                    <th>Última conexión</th>
                  </tr>
                  </thead>
                  <tbody>
<?php
    $u = UsersController::ctrUsuarios(null, null);
    $i = 0;
    foreach($u as $key => $v) {
            $i = $i + 1;
                  echo '
                  <tr>
                    <td>';
                        echo $i;
                    echo '
                    </td>
                    <td> ';
                        echo $v["nombre"];
                    echo '
                    </td>
                    <td> ';
                        echo $v["usuario"];
                    echo '
                    </td>
                    <td>  ';
                    if($v["foto"] != "")
                        echo '
                                <img src="' . $v["foto"] . '" class="img-thumbnail" width="40px">';
                    else
                        echo '<img src="Views/img/anonimo.png" class="img-thumbnail" width="40px">';
                     echo '
                    </td>
                    <td> ';
                        echo $v["rol"];
                     echo '
                    </td>
                    <td> ';
                    if(is_null($v["fecha_baja"]))
                        echo '<button class="btn btn-success btn-xs">Activo</button>';
                    else
                        echo '<button class="btn btn-danger btn-xs">Baja</button>';
                    echo '
                    </td>
                    <td>
                        2022-03-22 10:00
                    </td>
                    <td>

                        <div class="btn-group">
                            <button class="btn btn-warning"><i class="fa fa-pencil-alt"></i></button>
                            <button class="btn btn-danger"><i class="fa fa-times"></i></button>
                        </div>
                    </td>';
                    }
                    ?>
                  </tr>
                  </tbody>
                  <tfoot>
                  <tr>

                  </tr>
                  </tfoot>
                </table>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->

            <div class="card">
              <div class="card-header">
                <h3 class="card-title">DataTable with default features</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table id="example1" class="table table-bordered table-striped">
                  <thead>
                  <tr>
                    <th>Rendering engine</th>
                    <th>Browser</th>
                    <th>Platform(s)</th>
                    <th>Engine version</th>
                    <th>CSS grade</th>
                  </tr>
                  </thead>
                  <tbody>
                  <tr>
                    <td>Trident</td>
                    <td>Internet
                      Explorer 4.0
                    </td>
                    <td>Win 95+</td>
                    <td> 4</td>
                    <td>X</td>
                  </tr>

                  </tbody>
                  <tfoot>
                  <tr>
                    <th>Rendering engine</th>
                    <th>Browser</th>
                    <th>Platform(s)</th>
                    <th>Engine version</th>
                    <th>CSS grade</th>
                  </tr>
                  </tfoot>
                </table>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
      </div>
      <!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <div class="float-right d-none d-sm-block">
      <b>Version</b> 3.2.0
    </div>
    <strong>Copyright &copy; 2014-2021 <a href="https://adminlte.io">AdminLTE.io</a>.</strong> All rights reserved.
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- DataTables  & Plugins -->
<script src="plugins/datatables/jquery.dataTables.min.js"></script>
<script src="plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
<script src="plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
<script src="plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
<script src="plugins/datatables-buttons/js/dataTables.buttons.min.js"></script>
<script src="plugins/datatables-buttons/js/buttons.bootstrap4.min.js"></script>
<script src="plugins/jszip/jszip.min.js"></script>
<script src="plugins/pdfmake/pdfmake.min.js"></script>
<script src="plugins/pdfmake/vfs_fonts.js"></script>
<script src="plugins/datatables-buttons/js/buttons.html5.min.js"></script>
<script src="plugins/datatables-buttons/js/buttons.print.min.js"></script>
<script src="plugins/datatables-buttons/js/buttons.colVis.min.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.min.js"></script>

<!-- Page specific script -->
<script>
  $(function () {
    $("#example1").DataTable({
      "responsive": true, "lengthChange": false, "autoWidth": false,
      "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"]
    }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
    $('#example2').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": true,
      "info": true,
      "autoWidth": false,
      "responsive": true,
    });
  });
</script>


<!-- Modal -->
<div class="modal fade" id="agregarUsuario" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Agregar usuario</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <form role="form" method="post" enctype="multipart/form-data">
      <div class="modal-body">
        <div class="form-group">
            <div class="input-group mb-3">
                <div class="input-group-prepend">
                     <span class="input-group-text" id="basic-
                     addon1"><i class="fa fa-user"></i> </span>
                </div>
                <input type="text" class="form-control"
                placeholder="Nombre" aria-label="usuario" aria-describedby="basic-addon1">
            </div>

            <div class="input-group mb-3">
                <div class="input-group-prepend">
                     <span class="input-group-text" id="basic-
                     addon2"><i class="fa fa-key"></i> </span>
                </div>
                <input type="text" class="form-control"
                placeholder="Alias" aria-label="usuario" aria-describedby="basic-addon2">
            </div>

            <div class="input-group mb-3">
                <div class="input-group-prepend">
                     <span class="input-group-text" id="basic-
                     addon3"><i class="fa fa-lock"></i> </span>
                </div>
                <input type="password" class="form-control"
                placeholder="Contraseña" aria-label="usuario" aria-describedby="basic-addon3">
            </div>

            <div class="input-group mb-3">
                <div class="input-group-prepend">
                     <span class="input-group-text" id="basic-
                     addon3"><i class="fa fa-users"></i> </span>
                </div>
                <select class="form-control-lg" name="nuevoPerfil" id="">
                  <option value="">Seleccione perfil</option>
                  <option value="Administrador">Administrador</option>
                  <option value="Usuario">Usuario</option>
                </select>
            </div>

            <div class="form-group">
                <div class="panel">subir foto</div>
                <input type="file" id="foto" name="foto">
                <p class="help-block"> Peso máximo 10MB</p>
                <img src="logo.png" alt="" width="100px">
            </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
        <button type="button" class="btn btn-primary">Guardar</button>
      </div>
    </div>
  </div>
</div>
</body>
</html>
