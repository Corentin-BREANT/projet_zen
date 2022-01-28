<?php include_once("templates/head.php"); ?>
<style>
    /*
        Sachant que la page ne serra pas assez haute pour que
        le footer puisse correctement se placer en bas, on le
        positionne manuellement pour cette page.
    */
    footer {
        position: absolute;
    }
</style>

<h1>Erreur 404 :</h1>
<br>
<p>La page que vous essayez d'atteindre n'existe pas. Cliquez <a href="/index.php?route=home">ici</a> pour revenir en lieu sûr.</p>

<?php include_once("templates/footer.php"); ?>