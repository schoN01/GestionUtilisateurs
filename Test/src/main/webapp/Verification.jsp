<%@ page language="java" contentType="text/html; charset=ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Résultat de la Connexion</title>
</head>
<body>

    <h1>Résultat de la Connexion</h1>

    <%
        // Nouvelles informations de connexion
        String loginAttendu = "Scho";
        String motDePasseAttendu = "Nkongolo";

        // Récupération des valeurs du formulaire
        String loginSoumis = request.getParameter("login");
        String motDePasseSoumis = request.getParameter("motDePasse");

        // Vérification des paramètres de connexion
        boolean connexionValide = loginAttendu.equals(loginSoumis) && motDePasseAttendu.equals(motDePasseSoumis);
    %>

    <% if (connexionValide) { %>
        <p>Bienvenue, <%= loginSoumis %> ! La connexion a été validée.</p>
    <% } else { %>
        <p>Échec de la connexion. Veuillez vérifier vos informations.</p>
        <a href="Connexion.jsp?login=<%= loginSoumis %>">Retour</a>
    <% } %>

</body>
</html>
