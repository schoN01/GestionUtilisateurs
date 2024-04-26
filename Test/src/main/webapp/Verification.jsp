<%@ page language="java" contentType="text/html; charset=ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>R�sultat de la Connexion</title>
</head>
<body>

    <h1>R�sultat de la Connexion</h1>

    <%
        // Nouvelles informations de connexion
        String loginAttendu = "Scho";
        String motDePasseAttendu = "Nkongolo";

        // R�cup�ration des valeurs du formulaire
        String loginSoumis = request.getParameter("login");
        String motDePasseSoumis = request.getParameter("motDePasse");

        // V�rification des param�tres de connexion
        boolean connexionValide = loginAttendu.equals(loginSoumis) && motDePasseAttendu.equals(motDePasseSoumis);
    %>

    <% if (connexionValide) { %>
        <p>Bienvenue, <%= loginSoumis %> ! La connexion a �t� valid�e.</p>
    <% } else { %>
        <p>�chec de la connexion. Veuillez v�rifier vos informations.</p>
        <a href="Connexion.jsp?login=<%= loginSoumis %>">Retour</a>
    <% } %>

</body>
</html>
