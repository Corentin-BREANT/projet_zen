<?php include_once("templates/head.php"); ?>

<style>
    :root {
        --background-color: var(--deposit-background-color);
    }
</style>

<h1>ESPACE DÉPÔT</h1>

<div id="container-wrapper">
    <?php
    // Pour chaque type d'épreuve/concours, on ajoute un
    // nouvel élément permettant l'accès à l'espace
    // d'échange.

    foreach ($typesEpreuves as $index => $type) { ?>
        <div class="exchange-wrapper">
            <div class="container dropdown-button" onclick="dropdownHandler('<?= $index; ?>')">
                <h3 class="dropdown-button">Examen/concours - <?= $type; ?></h3>
                <input type="file" name="file" multiple accept=".pdf, .docx, .txt, .odt, .xlsx">
            </div>
            <div class="exchange-zone" id="exchange-zone-<?= $index; ?>">

            </div>
        </div>

    <?php } ?>
</div>

<script src="/public/javascript/dropdown.js"></script>

<?php include_once("templates/footer.php"); ?>
