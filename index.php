<?php
    //This is the same wuith a include
    require_once "Controllers/template.php";
    require_once "Models/user_model.php";
    $p = new PersonController();
    $p -> ctrAction();
    
?>
