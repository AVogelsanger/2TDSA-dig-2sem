<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<tags:template titulo="Cadastro de Passagens">

	<h1>Cadastro de Passagens</h1>
	
	
	<c:if test="${not empty msg }">
		<div class="alert alert-success">
		${msg }
		</div>
	</c:if>
	
	<form action="cadastrar" method="post">

		<div class="form-group">
			<label for="idOrigem">Origem</label> 
			<input type="text" name="origem" id="idOrigem" class="form-control">
		</div>

		<div class="form-group">
			<label for="idDestino">Destino</label>
			<input type="text" name="destino" id="idDestino" class="form-control">
		</div>
		
		<div class="form-group">
			<label for="idData">Data</label>
			<input type="text" name="data" placeholder=" / / " id="idData" class="form-control">
		</div>
		<div class="form-group">
			<input type="checkbox" value="false" name="" id="idCheckIn">
			<label for="idCheckIn">CheckIn</label>
		</div>
		<div class="form-group">
			<input type="checkbox" value="false" name="" id="idBagagem">
			<label for="idBagagem">Bagagem</label>
		</div>
		<div>
			<label for="idValor">Valor</label>
			<input type="text" name="valor"  placeholder="R$" id="idValor" class="form-control">
		</div><br>
		<div>
		<input type="submit" value="cadastrar" class="btn btn-primary">
		</div>
	</form>


</tags:template>