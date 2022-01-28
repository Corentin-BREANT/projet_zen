/**
 * Lorsque l'utilisateur clique, le bouton auquel lui est
 * assigné l'index subira des changement pour faire apparaître
 * le dropdown lui étant associé par ce même nombre.
 * @param {Number} index
 */
function dropdownHandler(index) {
    // Si un dropdown est encore visible, on l'efface avant
    // d'en afficher un autre.

    clearDropdowns()

    document.querySelector(`#dropdown-${index}`).classList.toggle('show')
}

function clearDropdowns() {
    // On séléctionne tous les dropdown avec la class
    // 'show' pour n'avoir que ceux qui sont affichés.

    const dropdowns = document.querySelectorAll('.dropdown-content.show')

    // On fait disparaitre le dropdown.
    for (const openDropdown of dropdowns) openDropdown.classList.remove('show')
}

window.onclick = function (event) {
    // Si l'utilisateur clique ailleurs que sur un bouton permettant
    // l'affichage d'un dropdown, on efface tous les dropdowns détectés.

    if (!event.target.matches('.dropdown-button')) clearDropdowns()
}
