<?php

// Connexion base de données.
require_once("sqlConnect.php");

function getMusiciens()
{
    // Récupération des données.

    $bdd = getBDD();

    $req = $bdd->query("SELECT * FROM festival");

    return $req;
}
