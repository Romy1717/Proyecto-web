<?php
    require_once "../Models/user_model.php";
    class UsersController{
        static public function conecta(){
            if(isset($_POST['ingUser'])){
                if(preg_match('/^[a-zA-Z0-9]+$/', $_POST['ingContra'])){
                    $tabla = "usuarios";
                    $e = "usuario";
                    $val = $_POST['ingUser'];
                    $r = UserModel::mostrar($e, $val);
    
                    if($r["contra"] == $_POST['ingContra']){
                        $_SESSION["iniciaSesion"] = "Ok";
                        echo '<script>
                                window.location = "Views/usuarios.php";
                                </script>';
                        echo '<br><div class= "alert alert-success">
                        Bienvenido </div>';
                    }else{
                        echo '<br><div class= "alert alert-danger">
                        El usuario o contraseña no son correctos </div>';
                    }
                }
            }
        }
        static public function ctrUsuarios($item, $valor){
            $rtn = UserModel::mostrar($item, $valor);
            return $rtn;
        }
        public function ctrUsuario(){
            if(preg_match('/^[a-zA-Z0-9]+$/',$_POST["nombre"]) &&
               preg_match('/^[a-zA-Z0-9]+$/',$_POST["usuario"]) &&
               preg_match('/^[a-zA-Z0-9]+$/',$_POST["contra"])) {
                    if(isset($_FILES["foto"]["tmp_name"])) {
                        list($ancho, $alto) = getimagesize($_FILES["foto"]["tmp_name"]);
                        $n_ancho = 500;
                        $n_alto = 500;
                        $directorio = "Views/img/usuarios/".$_POST["usuario"];
                        mkdir($directorio, 0744);
                        echo '<script>
                                console.log("")
                                </script>';
                    }
               }
        }
    }

?>