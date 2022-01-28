<?php

require_once("sqlConnect.php"); //connexion base de données

function getMusiciens()
{

    // Récupération des données
    $bdd = getBDD();

    $req = $bdd->query("SELECT * FROM festival");

    return $req;
}
