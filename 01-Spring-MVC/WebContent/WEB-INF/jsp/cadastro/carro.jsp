<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<tags:template>

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
	
</tags:template>
