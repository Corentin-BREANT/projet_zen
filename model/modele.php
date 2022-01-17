<?php
function getMusiciens() {

// Récupération des données
require_once("sqlConnect.php");	//connexion base de données
$bdd = getBDD();

$req = $bdd->query('SELECT * FROM festival');

return $req; 

}

?>