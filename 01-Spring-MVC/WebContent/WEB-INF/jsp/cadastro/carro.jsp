<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<h1>CADASTRO DE CARRO</h1>

	<fieldset><legend>Carro</legend>

		<form method="post" action="carro">
			<div>
				<label>Marca</label> 
				<input type="text" name="marca" id="id-marca">
			</div>
			<div>
				<label>Modelo</label> 
				<input type="text" name="modelo" id="id-modelo">
			</div>
			<div>
				<label>Ano</label> 
				<input type="text" name="ano" id="id-ano">
			</div>
			<div>
				<label>Importado</label> 
				<input type="checkbox" name="importado" id="id-importado">
			</div>
			<div></div>
			<div>
				<label>Blindado</label> 
				<input type="checkbox" name="blindado" id="id-blindado">
			</div>
			<input type="submit" value="Enviar">
		</form>

		${carro.marca}
		${carro.modelo}
		${carro.ano}
		
	</fieldset>

</body>
</html>