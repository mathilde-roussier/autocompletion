<?php

$search = htmlspecialchars($_GET['search']);

try {
    $con = new PDO('mysql:host=localhost;dbname=autocompletion;charset=utf8', 'root', '');
} catch (Exception $e) {
    die('Erreur : ' . $e->getMessage());
}

$recup = $con->query("SELECT nom,nationalite,style_musicale,dernier_album FROM artistes WHERE CONCAT(nom,nationalite,style_musicale,dernier_album) LIKE '%$search%' LIMIT 6");

$resultat = [];

while ($donnees = $recup->fetch(PDO::FETCH_ASSOC)) {
    array_push($resultat, $donnees);
}
echo json_encode($resultat);

?>