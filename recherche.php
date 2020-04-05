<?php

if ($_GET['search'] == '') {
    header('Location: index.php');
}

include "autocompletion.php";
$affichage = new affichage; ?>

<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <script src='https://code.jquery.com/jquery-3.4.1.js'></script>
    <script src='js/autocompletion.js'></script>
    <link rel="shortcut icon" href="img/icon.png">
    <link rel='stylesheet' href='css/autocompletion.css'>
    <title>Music - Recherche</title>
</head>

<body>

    <?php include('include/header.php') ?>

    <main class='resultat_recherche'>

        <?php $affichage->resultat_recherche(htmlspecialchars($_GET['search'])); ?>

    </main>

    <?php include('include/footer.php') ?>

</body>

</html>