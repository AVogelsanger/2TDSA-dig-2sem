<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<fieldset>
	<legend>Contato</legend>
		
		<form method="post" action="enviar">
			<div>
				<label>nome</label> 
				<input type="text" name="nome" id="id-nome">
			</div>
			<div>
				<label>e-mail</label> 
				<input type="text" name="email" id="id-email">
			</div>
			<div>
				<label>telefone</label> 
				<input type="text" name="tel" id="id-telefone">
			</div>
			
			<input type="submit" value="Enviar">
		</form>
		
		<!-- Exibe as informações enviadas pelo controller -->
		${mensagem }
		${nome }
	</fieldset>

</body>
</html>