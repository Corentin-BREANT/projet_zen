<?php

function getBdd()
{
    $host = "mysql:host=localhost;dbname=festival;charset=utf8";
    $username = "festival";
    $password = "secret";

    try {
        // On essaie de se connecter à la base de données ...

        $conn = new PDO($host, $username, $password);
        return $conn;
    } catch (Exception $e) {
        // S'il y a une erreur, on la renvoie sur la page.

        echo $host . "<br>";
        echo "Connexion à MySQL impossible : " . $e->getMessage();
        die();
    }
}
