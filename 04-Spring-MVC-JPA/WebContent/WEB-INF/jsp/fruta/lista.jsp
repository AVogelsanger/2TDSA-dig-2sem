<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<tags:template titulo="Lista de Frutas">

	<h1>Frutas</h1>

	<c:if test="${not empty msg }">
		<div class="alert alert-success">${msg }</div>
	</c:if>

	<table class="table">
		<tr>
			<th>C�digo</th>
			<th>Nome</th>
			<th>Valor</th>
			<th>Quantidade</th>
			<th>Org�nico</th>
			<th>Promo��o</th>
			<th>Data de Vencimento</th>
			<th>Editar</th>
			<th>Excluir</th>
			
			
			<th>Promo��o</th>
		</tr>



		<c:forEach items="${frutas }" var="f">
			<tr>
				<td>${f.codigo }</td>
				<td>${f.nome }</td>
				<td>${f.valor }</td>
				<td>${f.quantidade }</td>
				<td>${f.organico?"Sim":"N�o" }</td>
				<td>${f.promocao?"Sim":"N�o" }</td>
				<td>
					<fmt:formatDate value="${f.dataVencimento.time}" />
				</td>
				<td><a class="btn btn-outline-primary" href="<c:url value="/fruta/editar/${f.codigo }"/>">Editar</a></td>
				<td><button onclick="codigoFruta.value = ${f.codigo}" type="button"
						class="btn btn-outline-danger" data-toggle="modal"
						data-target="#exampleModal">Excluir</button></td>
			
				<td><button <c:if test="${f.promocao}">disabled</c:if> onclick="codigoFruta2.value = ${f.codigo}" type="button"
						class="btn btn-ouline-sucess" data-toggle="modal"
						data-target="#exampleModal2">Promo��o</button></td>
				
			</tr>
		</c:forEach>

	</table>

	<!-- Modal Excluir -->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Confirma��o</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">voc� realmente deseja excluir esse item?</div>
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


<!-- Modal Promocao -->
	<div class="modal fade" id="exampleModal2" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Deseja colocar a fruta em promo��o?</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">qual ser� o percentual de desconto?</div>
				
				
				<div class="modal-footer">
				<c:url value="/fruta/promover" var="url"/>
					<form action="${url }" method="post">
					<input type="text" name="desconto" placeholder="desconto (%)" class="form-group">
					<input type="hidden" id="codigoFruta2" name="codigo">
					<button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
					<button type="submit" class="btn btn-primary">Enviar</button>
					</form>
					
				</div>
			</div>
		</div>
	</div>

</tags:template>




