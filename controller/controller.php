<?php

// Ces fonctions sont chargées de récupérer le code PHP
// des pages disponibles pour ensuite les rendre au client.

function home()
{
    require_once("pages/home.php");
}

function deposit()
{
    require_once("pages/deposit.php");
}

function withdraw()
{
    require_once("pages/withdraw.php");
}

function not_found()
{
    require_once("pages/not_found.php");
}
