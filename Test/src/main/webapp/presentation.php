<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Resultat de la Presentation</title>
</head>
<body>
    <h1>Resultat de la Presentation</h1>

    <?php
        // Recuperation des donnees du formulaire
        $nom = isset($_POST['nom']) ? $_POST['nom'] : '';
        $prenom = isset($_POST['prenom']) ? $_POST['prenom'] : '';
        $dateNaissance = isset($_POST['dateNaissance']) ? $_POST['dateNaissance'] : '';
        $lieuNaissance = isset($_POST['lieuNaissance']) ? $_POST['lieuNaissance'] : '';

        // Affichage des informations saisies
        echo "<p>Nom : $nom</p>";
        echo "<p>Prenom : $prenom</p>";
        echo "<p>Date de Naissance : $dateNaissance</p>";
        echo "<p>Lieu de Naissance : $lieuNaissance</p>";
    ?>
</body>
</html>
