<?php
   require('./model/modele.php');

   function Accueil(){
    require("./view/v_accueil.php");
    }

    function depot(){
        require("./view/v_depot.php");
    }

    function retrait(){
        require("./view/v_retrait.php");
    }

?>