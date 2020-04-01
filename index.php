<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <script src='js/autocompletion.js'></script>
    <link rel='stylesheet' href='css/autocompletion.css'>
    <title>Accueil</title>
</head>

<body>

    <?php include('include/header.php'); ?>

    <main class='accueil'>

        <h1> MUSIC </h1>

        <form action='recherche.php' method='GET'>
            <input type='search' name='search' placeholder='Tapez votre recherche...' />
            <input type='submit' value='Rechercher' />
        </form>

    </main>

    <?php include('include/footer.php'); ?>

</body>

</html>