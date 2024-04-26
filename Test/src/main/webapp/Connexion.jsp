<%@ page language="java" contentType="text/html; charset=ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Page de Connexion</title>
</head>
<body>

    <h1>Page de Connexion</h1>

    <form method="post" action="Verification.jsp">
        <label for="login">Login :</label>
        <input type="text" name="login" id="login" value="<%= request.getParameter("login") != null ? request.getParameter("login") : "" %>" required><br>

        <label for="motDePasse">Mot de passe :</label>
        <input type="password" name="motDePasse" id="motDePasse" required><br>

        <input type="submit" value="Connexion">
    </form>

</body>

</html>
