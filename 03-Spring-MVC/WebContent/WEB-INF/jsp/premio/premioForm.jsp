<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>

<tags:template title="Cadastro de Prêmio">

	<h1>Cadastro de Prêmio</h1>
	<div class="alert alert-success">
		${msg}
	</div>

	<form action="cadastrar" method="post">
		<div class="form-group">
			<label for="idNome">Nome</label> <input type="text" name="nome"
				id="idNome" class="form-control">
		</div>
		<div class="form-group">
			<label for="idClassificacao">Classificação</label> <select
				name="classificacao" class="form-control" id="idClassificacao">
				<option>Primeiro</option>
				<option>Segundo</option>
				<option>Terceiro</option>
			</select>
		</div>
		<div class="form-group">
			<label for="idValor">Valor</label> <input type="text" name="valor" placeholder="R$"
				id="idValor" class="form-control" />
		</div>
		<div>
			<input type="checkbox" name="medalha" id="idMedalha" /> <label
				for="idMedalha">Medalha</label>
		</div>
		<input type="submit" value="cadastrar" class="btn btn-primary" />
	</form>

</tags:template>
