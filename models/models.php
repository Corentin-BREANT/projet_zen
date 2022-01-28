<?php

// Connexion base de données.
require_once("sql_connect.php");

function getMusiciens()
{
    // Récupération des données.

    $bdd = getBDD();

    $req = $bdd->query("SELECT * FROM festival");

    return $req;
}
