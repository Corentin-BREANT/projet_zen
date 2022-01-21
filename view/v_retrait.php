<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" type="text/css" href="/style/style.css">

</head>

<style>
    
/* Dropdown Button */
.dropbtn {
  background-color: #81D0E4;
  color: black;
  padding: 16px;
  font-size: 16px;
  font-weight: bold;
  border: none;
  cursor: pointer;
}

/* Dropdown button on hover & focus */
.dropbtn:hover, .dropbtn:focus {
  background-color: #81D0E4;
}

/* The container <div> - needed to position the dropdown content */
.dropdown {
  position: relative;
  display: inline-block;
}

/* Dropdown Content (Hidden by Default) */
.dropdown-content {
  display: none;
  position: absolute;
  background-color: lightgray;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
}

/* Links inside the dropdown */
.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

/* Change color of dropdown links on hover */
.dropdown-content a:hover {background-color: #f1f1f1}

/* Show the dropdown menu (use JS to add this class to the .dropdown-content container when the user clicks on the dropdown button) */
.show {display:block;}

</style>

<body>
    <hr>
    <nav>
        <div class="fond depot-fond">
            <div id="zen">
            <img src="public/images/zen.png" alt="Zen">
            </div>
        </div>
        <div>
        <span class="titre retrait">ESPACE RETRAIT</span>
        <hr id="lignedepot"> 
            <nav>
                <div>
                    <div class="fond-2 retrait-fond">
                        <span id="texte"> Examen/concours - Bac technologique </span>
                        <button class="boutons depots titre dépots">Déposer</button>
                        <div class="dropdown">
                            <button onclick="myFunction()" class="dropbtn">⇩</button>
                            <div id="myDropdown" class="dropdown-content">
                                <span class="depottexte">Nom du fichier</span><br>
                                <span class="depottexte">Date de début de publication</span><br>
                                <span class="depottexte">Date de fin de publication</span>
                            </div>
                            <script>/* When the user clicks on the button,
                            toggle between hiding and showing the dropdown content */
                            function myFunction() {
                                document.getElementById("myDropdown").classList.toggle("show");
                                }

                                // Close the dropdown menu if the user clicks outside of it
                            window.onclick = function(event) {
                                if (!event.target.matches('.dropbtn')) {

                                    var dropdowns = document.getElementsByClassName("dropdown-content");
                                    var i;
                                    for (i = 0; i < dropdowns.length; i++) {
                                        var openDropdown = dropdowns[i];
                                        if (openDropdown.classList.contains('show')) {
                                        openDropdown.classList.remove('show');
                                    }
                                    }
                                }
                                }
                            </script>
                        </div>
                    </div>
                    <br>

                    <div class="fond-2 depot-fond">
                        <span id="texte"> Examen/concours - Bac Général </span>
                        <button class="boutons depots titre dépots">Déposer</button>
                        <div class="dropdown">
                            <button onclick="myFunction()" class="dropbtn">⇩</button>
                            <div id="myDropdown" class="dropdown-content">
                                <span class="depottexte">Nom du fichier</span><br>
                                <span class="depottexte">Date de début de publication</span><br>
                                <span class="depottexte">Date de fin de publication</span>
                            </div>
                            <script>/* When the user clicks on the button,
                            toggle between hiding and showing the dropdown content */
                            function myFunction() {
                                document.getElementById("myDropdown").classList.toggle("show");
                                }

                                // Close the dropdown menu if the user clicks outside of it
                            window.onclick = function(event) {
                                if (!event.target.matches('.dropbtn')) {

                                    var dropdowns = document.getElementsByClassName("dropdown-content");
                                    var i;
                                    for (i = 0; i < dropdowns.length; i++) {
                                        var openDropdown = dropdowns[i];
                                        if (openDropdown.classList.contains('show')) {
                                        openDropdown.classList.remove('show');
                                    }
                                    }
                                }
                                }
                            </script>
                        </div>
                    </div>
                    <br>
                    <div class="fond-2 depot-fond">
                        <span id="texte"> Examen/concours - Épreuves anticipé</span>
                        <button class="boutons depots titre dépots">Déposer</button>
                        <div class="dropdown">
                            <button onclick="myFunction()" class="dropbtn">⇩</button>
                            <div id="myDropdown" class="dropdown-content">
                                <span class="depottexte">Nom du fichier</span><br>
                                <span class="depottexte">Date de début de publication</span><br>
                                <span class="depottexte">Date de fin de publication</span>
                            </div>
                            <script>/* When the user clicks on the button,
                            toggle between hiding and showing the dropdown content */
                            function myFunction() {
                                document.getElementById("myDropdown").classList.toggle("show");
                                }

                                // Close the dropdown menu if the user clicks outside of it
                            window.onclick = function(event) {
                                if (!event.target.matches('.dropbtn')) {

                                    var dropdowns = document.getElementsByClassName("dropdown-content");
                                    var i;
                                    for (i = 0; i < dropdowns.length; i++) {
                                        var openDropdown = dropdowns[i];
                                        if (openDropdown.classList.contains('show')) {
                                        openDropdown.classList.remove('show');
                                    }
                                    }
                                }
                                }
                            </script>
                        </div>
                    </div>
                    <br>
                    <div class="fond-2 depot-fond">
                        <span id="texte"> Examen/concours - Bac professionnel </span>
                        <button class="boutons depots titre dépots">Déposer</button>
                        <div class="dropdown">
                            <button onclick="myFunction()" class="dropbtn">⇩</button>
                            <div id="myDropdown" class="dropdown-content">
                                <span class="depottexte">Nom du fichier</span><br>
                                <span class="depottexte">Date de début de publication</span><br>
                                <span class="depottexte">Date de fin de publication</span>
                            </div>
                            <script>/* When the user clicks on the button,
                            toggle between hiding and showing the dropdown content */
                            function myFunction() {
                                document.getElementById("myDropdown").classList.toggle("show");
                                }

                                // Close the dropdown menu if the user clicks outside of it
                            window.onclick = function(event) {
                                if (!event.target.matches('.dropbtn')) {

                                    var dropdowns = document.getElementsByClassName("dropdown-content");
                                    var i;
                                    for (i = 0; i < dropdowns.length; i++) {
                                        var openDropdown = dropdowns[i];
                                        if (openDropdown.classList.contains('show')) {
                                        openDropdown.classList.remove('show');
                                    }
                                    }
                                }
                                }
                            </script>
                        </div>
                    </div>
                    <br>


            </nav>
        </div>
    </nav>
    <hr>
</body>
