<?php include_once("templates/head.php"); ?>

<h1>ESPACE RETRAIT</h1>

<div id="container-wrapper">
    <?php
    // Pour chaque type d'épreuve/concours, on ajoute un
    // nouvel élément permettant l'accès à l'espace
    // d'échange.

    foreach ($typesEpreuves as $index => $type) { ?>
        <div class="container" style="background-color: var(--withdraw-background-color);">
            <h3>Examen/concours - <?php echo "$type"; ?></h3>
            <div class="dropdown">
                <button class="action-button dropdown-button" onclick="dropdownHandler('<?php echo "$index"; ?>')">⇩</button>
                <div class="dropdown-content" id="dropdown-<?php echo "$index"; ?>">
                    <span>Nom du fichier</span>
                    <span>Date de début de publication</span>
                    <span>Date de fin de publication</span>
                </div>
            </div>
        </div>
    <?php } ?>
</div>

<script src="/public/javascript/dropdown.js"></script>

<?php include_once("templates/footer.php"); ?>