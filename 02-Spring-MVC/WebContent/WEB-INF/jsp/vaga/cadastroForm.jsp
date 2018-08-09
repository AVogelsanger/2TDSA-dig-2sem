<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>

<tags:template titulo="Cadastro de vaga">
	<jsp:attribute name="scripts">Scripts da página...
	</jsp:attribute>

	<jsp:body>		
		<h1>CADASTRO DE VAGA</h1>
		
		<form method="post" action="cadastrar">
			<div>
				<label>Título</label> <input type="text" class="form-control"
					name="titulo" id="idTitulo">
			</div>
			<div>
				<label>Salário</label> <input type="text" class="form-control"
					name="salario" id="idSalario">
			</div>
			<div>
				<label for="idBeneficios">Benefícios</label> <input type="checkBox"
					name="benficios" id="idBeneficios">
			</div>
			<div>
				<label for="pj">PJ</label> <input type="radio" name="regime" id="pj"
					value="PJ"> <label for="clt">CLT</label> <input
					type="radio" name="regime" id="clt" value="CLT">
			</div>
			<label for="idDescricao">Descrição</label>
			<textarea rows="5" cols="50" id="idDescricao" name="descricao"
				class="form-control"></textarea>
			<br>
			<div>
				<input type="submit" value="OK" class="btn btn-primary">
			</div>
		</form>
		</jsp:body>
</tags:template>
