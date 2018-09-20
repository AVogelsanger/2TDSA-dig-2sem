<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<tags:template titulo="Cadastro de Frutas">

	<h1>Cadastramento de Frutas</h1>
	
	<c:if test="${not empty msg }">
		<div class="alert alert-success">
		${msg }
		</div>
	</c:if>
	
	
	<form action="cadastrar" method="post">
		<div class="form-group">
			<label for="idName">Nome</label>
			<input type="text" name="nome" id="idName" class="form-control">
		</div>
		<div class="form-group">
			<input type="checkbox" name="organico" id="idOrganico" value="true">
			<label for="idOrganico">Organico</label>
		</div>
		<div class="form-group">
			<label for="idQuantidade">Quantidade</label>
			<input type="text" name="quantidade" id="idQuantidade" class="form-control">
		</div>
		<div class="form-group">
			<label for="idValor">Valor</label>
			<input type="text" name="valor"  placeholder="R$" id="idValor" class="form-control">
		</div>
		<div class="form-group">
			<label for="id-data">Data de Vencimento</label>
			<input type="text" name="dataVencimento" placeholder=" / / " id="id-data" class="form-control">
		</div>
		<div class="form-group">
			<input disabled="disabled" type="checkbox" value="false" name="promocao" id="id-promocao">
			<label for="id-promocao">Promoção</label>
		</div>
		<div>
			<input type="submit" value="cadastrar" class="btn btn-primary" >
		</div>
	</form>

</tags:template>