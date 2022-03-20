<?php
    require_once "Models/user_model.php";

    class UsersController{
        static public function conecta(){
            if($_POST){
                if(preg_match('/^[a-zA-Z0-9]+$/', $_POST["ingUser"])){
                    $tabla = "usuarios";
                    $e = "usuario";
                    $val = $_POST["ingUser"];
                    $r = UserModel::pregunta($tabla, $e, $val);
    
                    if($r["contra"] == $_POST["ingContra"]){
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
    }

?>