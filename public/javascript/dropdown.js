/** When the user clicks on the button,
 * toggle between hiding and showing the dropdown content
 * @param {Number} index
 */
function dropdownHandler(index) {
    clearDropdowns()
    document.querySelector(`#dropdown-${index}`).classList.toggle('show')
}

function clearDropdowns() {
    const dropdowns = document.querySelectorAll('.dropdown-content')
    for (const openDropdown of dropdowns) {
        if (openDropdown.classList.contains('show')) {
            openDropdown.classList.remove('show')
        }
    }
}

window.onclick = function (event) {
    if (!event.target.matches('.dropdown-button')) clearDropdowns()
}
