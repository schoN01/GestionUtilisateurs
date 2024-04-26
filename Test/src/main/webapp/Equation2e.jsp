<%@ page language="java" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>�quation du Second Degr�</title>
</head>
<body>
    <h1>�quation du Second Degr�</h1>

    <%
        // Affectation des valeurs arbitraires aux variables valeurA, valeurB, et valeurC
        double valeurA = 2;
        double valeurB = -5;
        double valeurC = 3;

        // Calcul du delta
        double delta = Math.pow(valeurB, 2) - 4 * valeurA * valeurC;

        // Initialisation des solutions
        double solution1 = 0;
        double solution2 = 0;

        // V�rification du delta
        if (delta >= 0) {
            // Calcul des solutions
            solution1 = (-valeurB + Math.sqrt(delta)) / (2 * valeurA);
            solution2 = (-valeurB - Math.sqrt(delta)) / (2 * valeurA);
        }
    %>

    <p>�quation : <%= valeurA %>x<sup>2</sup> + <%= valeurB %>x + <%= valeurC %> = 0</p>
    
    <p>delta : <%= delta %></p>

    <p>Solutions :</p>
    <p>Solution 1 : <%= solution1 %></p>
    <p>Solution 2 : <%= solution2 %></p>

</body>
</html>

