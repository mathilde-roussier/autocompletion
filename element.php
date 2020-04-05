<?php include "autocompletion.php";
$affichage = new affichage; ?>

<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <script src='https://code.jquery.com/jquery-3.4.1.js'></script>
    <script src='js/autocompletion.js'></script>
    <link rel='stylesheet' href='css/autocompletion.css'>
    <link rel="shortcut icon" href="img/icon.png">
    <title>Music - Element</title>
</head>

<body>

    <?php include('include/header.php') ?>

    <main class='element'>

        <?php $affichage->element($_GET['id']); ?>

    </main>

    <?php include('include/footer.php') ?>


</body>

</html>