<%@ page language="java" contentType="text/html; charset=ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>R�sultat de la Pr�sentation</title>
</head>
<body>
    <h1>R�sultat de la Pr�sentation</h1>

    <%-- R�cup�ration des donn�es du formulaire --%>
    <% String nom = request.getParameter("nom"); %>
    <% String prenom = request.getParameter("prenom"); %>
    <% String dateNaissance = request.getParameter("dateNaissance"); %>
    <% String lieuNaissance = request.getParameter("lieuNaissance"); %>

    <%-- Affichage des informations saisies --%>
    <p>Nom : <%= nom %></p>
    <p>Pr�nom : <%= prenom %></p>
    <p>Date de Naissance : <%= dateNaissance %></p>
    <p>Lieu de Naissance : <%= lieuNaissance %></p>
</body>
</html>
