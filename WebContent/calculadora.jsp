<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Calculadora</title>

<script type="text/javascript" language="javascript">
	function validaCampos() {
		if (document.getElementById("n1").value == "") {
			alert('Por favor, preencha o campo número 1');
			return false
		}
		
		if (document.getElementById("n2").value == "") {
			alert('Por favor, preencha o campo número 2');
			return false
		}
	}
</script>
</head>
<body>
	<form action="CalculadoraServlet" method="post" onSubmit="return validaCampos()">

		<fieldset>

			<label for="n1">Número 1</label> <input type="text" name="n1" id="n1" />
			<label for="n2">Número 2</label> <input type="text" name="n2" id="n2">

			
			<c:if test = "${soma != null }">
				<label>
				O calculo é: ${soma}
				</label> 
			</c:if>
			
			<input type="submit" name="soma"
				value="Somar" /> <input type="submit" name="subtrair"
				value="Subtrair" />

		</fieldset>

	</form>
</body>
</html>