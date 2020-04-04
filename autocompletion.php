<?php

class affichage
{

    private $con;

    public function __construct()
    {
        try {
            $this->con = new PDO('mysql:host=localhost;dbname=autocompletion;charset=utf8', 'root', '');
        } catch (Exception $e) {
            die('Erreur : ' . $e->getMessage());
        }
    }

    public function resultat_recherche($recherche)
    {

        $recup = $this->con->query("SELECT nom,id FROM artistes WHERE CONCAT(nom,nationalite,style_musicale,dernier_album) LIKE '%$recherche%'");
        $resultat = $recup->fetchAll(PDO::FETCH_ASSOC);

        if (!empty($resultat)) { ?>
            <section>
                <?php foreach ($resultat as $infos) {
                ?>
                    <div>
                        <p><a href='element.php?id=<?php echo $infos['id']; ?>'><?php echo $infos['nom']; ?></a></p>
                    </div>
                <?php } ?>
            </section>

        <?php }
    }

    public function element($id)
    {
        $recup = $this->con->query("SELECT * FROM artistes WHERE id='$id'");
        $resultat = $recup->fetch(PDO::FETCH_ASSOC);

        if (!empty($resultat)) {
        ?>
            <section>
                <img src='<?php echo $resultat['avatar']; ?>'>
                <div>
                    <p><span> Nom </span>: <?php echo $resultat['nom']; ?></p>
                    <p><span> Nationalité </span>: <?php echo $resultat['nationalite']; ?></p>
                    <p><span> Style(s) musical(aux) </span>: <?php echo $resultat['style_musicale']; ?></p>
                    <p><span> Dernier album </span>: <?php echo $resultat['dernier_album']; ?></p>
                </div>
            </section>
<?php }
    }
}
