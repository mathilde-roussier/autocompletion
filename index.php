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

        <h1> MUSIC </h1>
        <section>
            <form action="" id="formsearch">
                <input type="text" id="search" autocomplete="off" placeholder="Taper un nom d'artiste"/>
                <input type="submit" id="send">
            </form>
            <div id="result">
            </div>
        </section>
        

    </main>

    <?php include('include/footer.php'); ?>

</body>

</html>