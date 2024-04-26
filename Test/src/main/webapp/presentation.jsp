<%@ page language="java" contentType="text/html; charset=ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Résultat de la Présentation</title>
</head>
<body>
    <h1>Résultat de la Présentation</h1>

    <%-- Récupération des données du formulaire --%>
    <% String nom = request.getParameter("nom"); %>
    <% String prenom = request.getParameter("prenom"); %>
    <% String dateNaissance = request.getParameter("dateNaissance"); %>
    <% String lieuNaissance = request.getParameter("lieuNaissance"); %>

    <%-- Affichage des informations saisies --%>
    <p>Nom : <%= nom %></p>
    <p>Prénom : <%= prenom %></p>
    <p>Date de Naissance : <%= dateNaissance %></p>
    <p>Lieu de Naissance : <%= lieuNaissance %></p>
</body>
</html>
