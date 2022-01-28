<?php
require_once("include/config.php");
require_once("controller/controller.php");

if (isset($_REQUEST['route']))
     $route = $_REQUEST['route'];


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

     default:
          not_found();
          break;
}
