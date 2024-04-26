<%@ page language="java" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Équation du Second Degré</title>
</head>
<body>

    <h1>Équation du Second Degré</h1>

    <form method="post" action="">
        <label for="valeurA">A :</label>
        <input type="text" name="valeurA" id="valeurA" required><br>

        <label for="valeurB">B :</label>
        <input type="text" name="valeurB" id="valeurB" required><br>

        <label for="valeurC">C :</label>
        <input type="text" name="valeurC" id="valeurC" required><br>

        <input type="submit" value="Résoudre">
    </form>

    <%
        // Récupération des valeurs depuis le formulaire
        String valeurAString = request.getParameter("valeurA");
        String valeurBString = request.getParameter("valeurB");
        String valeurCString = request.getParameter("valeurC");

        // Vérification si les valeurs sont fournies
        if (valeurAString != null && valeurBString != null && valeurCString != null) {
            try {
                // Conversion des valeurs en double
                double valeurA = Double.parseDouble(valeurAString);
                double valeurB = Double.parseDouble(valeurBString);
                double valeurC = Double.parseDouble(valeurCString);

                // Calcul du delta
                double delta = Math.pow(valeurB, 2) - 4 * valeurA * valeurC;

                // Initialisation des solutions
                double solution1 = 0.0;
                double solution2 = 0.0;

                // Vérification du delta
                if (delta >= 0) {
                    // Calcul des solutions
                    solution1 = (-valeurB + Math.sqrt(delta)) / (2 * valeurA);
                    solution2 = (-valeurB - Math.sqrt(delta)) / (2 * valeurA);
                %>

                <p>Équation : <%= valeurA %>x<sup>2</sup> + <%= valeurB %>x + <%= valeurC %> = 0</p>
                <p>delta : <%= delta %></p>
                <p>Solutions :</p>
                <p>Solution 1 : <%= solution1 %></p>
                <p>Solution 2 : <%= solution2 %></p>

                <%
                } else {
                %>
                <p>L'équation n'a pas de solutions réelles.</p>
                <%
                }
            } catch (NumberFormatException e) {
                // Gérer l'erreur si la conversion en double échoue
                %>
                <p>Erreur : Veuillez fournir des valeurs numériques valides pour A, B et C.</p>
                <%
            }
        }
    %>

</body>
</html>
