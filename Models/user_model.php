<?php
    require_once "conexion.php";

    //$tabla: Tabla en donde se hara la consulta
    //$e: Campo a filtrar 
    //$v: 
    class UserModel{


        static public function mostrar($elemento, $v){
            if($elemento != null){
               $s = Conexion::conectar()->prepare("SELECT * FROM usuarios WHERE $elemento = :$elemento");
               $s->bindParam(":".$elemento, $v, PDO::PARAM_STR);
               $s->execute();

            }
            else {
                $s = Conexion::conectar()->prepare("SELECT * FROM usuarios");
                $s->execute();

            }
            return $s->fetchAll();

        }


    }

?>