<?php

$_GET['recherche'] = 'belge';
$_GET['recup'] = '1';

// Requête SQL recup base de donnée
function bdd()
{
    try {
        $con = new PDO('mysql:host=localhost;dbname=autocompletion;charset=utf8', 'root', '');
    } catch (Exception $e) {
        die('Erreur : ' . $e->getMessage());
    }

    $recup = $con->query("SELECT * from artistes");

    $bdd = [];

    while ($donnees = $recup->fetch(PDO::FETCH_ASSOC)) {

        array_push($bdd, json_encode($donnees));
    }

    return json_encode($bdd);
}

// Requête SQL recup résultat recherche
function recherche($recherche)
{
    try {
        $con = new PDO('mysql:host=localhost;dbname=autocompletion;charset=utf8', 'root', '');
    } catch (Exception $e) {
        die('Erreur : ' . $e->getMessage());
    }

    $recup = $con->query("SELECT nom FROM artistes WHERE CONCAT(nom,nationalite,style_musicale) LIKE '%" . $recherche . "%' ");

    $resultat = [];

    while ($donnees = $recup->fetch(PDO::FETCH_ASSOC)) {
        array_push($resultat, json_encode($donnees));
    }
    return json_encode($resultat);
}

// Activation des fonctions

if (isset($_GET['recherche'])) {
    echo recherche($_GET['recherche']);
}

if (isset($_GET['recup'])) {
    echo bdd();
}