<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1>CADASTRO DO ALUNO</h1>

	<fieldset><legend>Aluno</legend>
	
	<form method="post" action="aluno">
	<label>Nome</label>
	<input type="text" name="nome" id="idNome">
	
	<label>Idade</label>
	<input type="text" name="idade" id="idIdade">
	
	<label>Aprovado</label>
	<input type="checkbox" name="aprovado" id="idAprovado">
	
	<label>Bolsista</label>
	<input type="checkbox" name="bolsista" id="idBolsista">
	
	<input type="submit" value="Enviar">
	</form>
	
	
	${aluno.nome}
	${aluno.aprovado? "aprovado":"não aprovado"}
	</fieldset>
</body>
</html>