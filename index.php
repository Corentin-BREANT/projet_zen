<?php
require_once("include/config.php");
require_once("controller/controller.php");

if (isset($_REQUEST["route"]))
     $route = $_REQUEST["route"];

// À chaque route on associe une page.
switch ($route) {
     case "home":
          home();
          break;

     case "deposit":
          deposit();
          break;

     case "withdraw":
          withdraw();
          break;

     // Si la route ne correspond à aucune
     // page, on affiche une erreur 404.
     default:
          not_found();
          break;
}
