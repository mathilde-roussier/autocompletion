<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <script src='https://code.jquery.com/jquery-3.4.1.js'></script>
    <script src='js/autocompletion.js'></script>
    <link rel='stylesheet' href='css/autocompletion.css'>
    <title>Accueil</title>
</head>

<body>

    <?php include('include/header.php'); ?>

    <main class='accueil'>

        <h1> -- MUSIQUE -- </h1>
        <section>
            <form action="recherche.php" id="formsearch" method="get">
                <input type="text" id="searchmain" autocomplete="off" placeholder="Taper votre recherche" name="search"/>
                <input type="submit" id="send">
            </form>
            <div id="resultmain">
            </div>
        </section>
        

    </main>

    <?php include('include/footer.php'); ?>

</body>

</html>