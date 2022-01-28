/**
 * Lorsque l'utilisateur clique, le bouton auquel lui est
 * assigné l'index subira des changement pour faire apparaître
 * le dropdown lui étant associé par ce même nombre.
 * @param {Number} index
 */
function dropdownHandler(index) {
    // Si un dropdown est encore visible, on l'efface avant
    // d'en afficher un autre.
    const exchangeZone = document.querySelector(`#exchange-zone-${index}`),
        isDisplayed = exchangeZone.classList.contains('show')

    clearDropdowns()

    // Permet d'afficher la zone d'échange si et seulement
    // si elle n'était pas déjà affichée. Sinon, elle disparait.
    if (!isDisplayed)
        document
            .querySelector(`#exchange-zone-${index}`)
            .classList.toggle('show')
}

function clearDropdowns() {
    // On séléctionne tous les dropdown avec la class
    // 'show' pour n'avoir que ceux qui sont affichés.

    const elements = document.querySelectorAll('.exchange-zone.show')

    // On fait disparaitre le dropdown.
    for (const e of elements) e.classList.remove('show')
}

window.onclick = function (event) {
    // Si l'utilisateur clique ailleurs que sur un bouton permettant
    // l'affichage d'un dropdown, on efface tous les dropdowns détectés.

    if (!event.target.matches('.dropdown-button')) clearDropdowns()
}
