<%@page language="java" pageEncoding="ISO-8859-1"%>
<% final String APP_ROOT = request.getContextPath(); %>

<!DOCTYPE html>
<html>
<head>
    <%--<meta charset="utf_8">--%>
    <title>Liste des utilisateurs</title>
    <link rel="stylesheet" type="text/css" href="<%= APP_ROOT %>/css/design.css">
</head>
<body>
	<header>Gestion des utilisateurs</header>
	<nav>
		<ul>
			<li><a href="<%= APP_ROOT %>/list">Accueil</a></li>
			<li><a href="<%= APP_ROOT %>/list">Lister</a></li>
			<li><a href="<%= APP_ROOT %>/add">Ajouter</a></li>		
		</ul>
	</nav>