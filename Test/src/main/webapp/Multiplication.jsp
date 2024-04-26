<%@ page language="java" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Table de Multiplication</title>
</head>
<body>
	<h1>Table de Multiplication</h1>
	<% 
		String nombre = request.getParameter("nombre");
		int table = Integer.parseInt(nombre);
		
		for(int i = 1; i <= 10; i++)
		{
			out.print(table + " x " + i + " = " + (table * i) + "<br>");
		}
	%>
</body>
</html>