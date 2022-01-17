<?php
require("Include/config.php");
require_once("model/sqlConnect.php");
include("view/v_header.php");
require('controler/controleur.php');


if(!isset($_REQUEST['uc']))
     $uc = 'accueil';
else
	$uc = $_REQUEST['uc'];

 
switch($uc)
{
     case "accueil":
           Accueil();
          break;
      
     case "depot":
          Depot();
          break;
		  
	case "retrait":
          retrait();
          break;
}
include("view/v_footer.php") ;
?>  






 
