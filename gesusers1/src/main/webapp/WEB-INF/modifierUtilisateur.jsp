<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ page import="beans.Utilisateur"%>

<%
    Utilisateur utilisateur = (Utilisateur) request.getAttribute("utilisateur");
%>

<%@ include file="inc/header.jsp" %>
	<section>
	    <h1 id="titre-principal">Modification d'un utilisateur</h1>
	    <form class="main" method="post">
		     <div class="formItem">
	                <label>Nom</label>
	                <input type="text" name="nom" value="<%= utilisateur.getNom() %>">
	         </div>
	         <div class="formItem">
	         	<label>Prénom</label><br>
	            <input type="text" name="prenom" value="<%= utilisateur.getPrenom()%>"><br>	           
	         </div>
	         <div class="formItem">
	         	<label>Login</label><br>
	            <input type="text" name="login" value="<%= utilisateur.getLogin()%>"><br>
	         </div>
	         
	         <div class="formItem">
	         	<label>Password</label><br>
	            <input type="password" name="password" value="<%= utilisateur.getPassword()%>"><br>
	         </div>
	         
	         <div class="formItem">
	         	 <input type="submit" value="Modifier">
	         </div>
	    </form>
    </section>
<%@include file="inc/footer.jsp" %>