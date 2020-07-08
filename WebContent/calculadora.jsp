<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Calculadora</title>
</head>
<body>
	<form action="CalculadoraServlet" method="post">
		
		<fieldset>
			
			<label for="n1">Número 1</label>
			<input type="text" name="n1" id="n1"/>
			<label for="n2">Número 2</label>
			<input type="text" name="n2" id="n2">
			
			<label>O calculo é: ${soma}</label>
			
			<input type="submit" name="soma" value="Somar"/>
			
			<input type="submit" name="subtrair" value="Subtrair"/>
		
		</fieldset>
	
	</form>
</body>
</html>