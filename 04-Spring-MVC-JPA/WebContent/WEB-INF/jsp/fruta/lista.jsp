<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<tags:template titulo="Lista de Frutas">

	<h1>Frutas</h1>

	<c:if test="${not empty msg }">
		<div class="alert alert-success">${msg }</div>
	</c:if>

	<table class="table">
		<tr>
			<th>Código</th>
			<th>Nome</th>
			<th>Valor</th>
			<th>Quantidade</th>
			<th>Orgânico</th>
			<th>Editar</th>
			<th>Excluir</th>
		</tr>



		<c:forEach items="${frutas }" var="f">
			<tr>
				<td>${f.codigo }</td>
				<td>${f.nome }</td>
				<td>${f.valor }</td>
				<td>${f.quantidade }</td>
				<td>${f.organico?"Sim":"Não" }</td>
				<td><a class="btn btn-primary" href="<c:url value="/fruta/editar/${f.codigo }"/>">Editar</a></td>
				<td><button onclick="codigoFruta.value = ${f.codigo}" type="button"
						class="btn btn-danger" data-toggle="modal"
						data-target="#exampleModal">Excluir</button></td>
			</tr>
		</c:forEach>

	</table>

	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Exclusão de Fruta cadastrada</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">você realmente deseja excluir esse item?</div>
				<div class="modal-footer">
				
				<c:url value="/fruta/excluir" var="url"/>
					<form action="${url }" method="post">
					<input type="hidden" id="codigoFruta" name="codigo">
					<button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
					<button type="submit" class="btn btn-primary">Excluir</button>
					</form>
					
				</div>
			</div>
		</div>
	</div>


</tags:template>




