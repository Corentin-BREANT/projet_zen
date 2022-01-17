<?php
function getBdd() {
  
try
{
    $dsn = 'mysql:host=localhost;dbname=festival;charset=utf8';
    $utilisateur = 'festival';
    $motDePasse = 'secret';
    $connexion = new PDO($dsn, $utilisateur, $motDePasse);
    return $connexion;
    
}
catch ( Exception $e )
{
    echo $dsn . '<br />';
    echo 'Connexion à MySQL impossible : ' . $e->getMessage();
    die();
}
}
?>