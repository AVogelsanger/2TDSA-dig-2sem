<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<tags:template titulo="Lista de passagem">

	<h1>Passagens</h1>

	<c:if test="${not empty msg }">
		<div class="alert alert-success">${msg }</div>
	</c:if>

	<table class="table">
		<tr>
			<th>Origem</th>
			<th>Destino</th>
			<th>Data</th>
			<th>CheckIn</th>
			<th>Bagagem</th>
			<th>Valor</th>
			<th>Check-in</th>
			<th></th>
			
		</tr>

		<c:forEach items="${passagem }" var="p">
			<tr>
				<td>${p.origem }</td>
				<td>${p.destino }</td>
				<td><fmt:formatDate value="${p.data.time }" /></td>
				<td>${p.checkIn?"Sim":"Não" }</td>
				<td>${p.bagagem?"Sim":"Não" }</td>
				<td>${p.valor }</td>
				<td>${p.checkIn?"Sim":"Não" }</td>
				<td>
					<c:if test="${!p.checkIn }">
					<button title="Check-In" onclick="codigoCheckIn.value = ${p.codigo}" type="button"
						class="btn btn-outline-success" data-toggle="modal"
						data-target="#exampleModal1"><i class="fas fa-check-circle"></i></button>
				
					<a title="Editar" class="btn btn-outline-primary" href="<c:url value="/passagem/editar/${p.codigo }"/>">
					<i class="fas fa-edit"></i></a>
				
					<button title="Excluir" onclick="codigoExcluir.value = ${p.codigo}" type="button"
						class="btn btn-outline-danger" data-toggle="modal"
						data-target="#exampleModal"><i class="fas fa-trash-alt"></i></button>
					</c:if>	
				</td>
			</tr>
		</c:forEach>
	</table>
	
<!-- Modal Check-In-->
<div class="modal fade" id="exampleModal1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Confirmação do Check-In</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        Deseja realizar o check-In?
      </div>
      <div class="modal-footer">
      <c:url value="/passagem/checkin" var="acao"/>
      <form action="${acao }" method="post">
      	<input type="hidden" name="codigo" id="codigoCheckIn">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Não</button>
        <button type="submit" class="btn btn-primary">Sim</button>
        </form>
      </div>
    </div>
  </div>
</div>

<!-- Modal Excluir-->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Confirmação</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        Deseja realmente apagar a passagem ?
      </div>
      <div class="modal-footer">
      <c:url value="/passagem/excluir" var="acao"/>
      <form action="${acao }" method="post">
      	<input type="hidden" name="codigo" id="codigoExcluir">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Não</button>
        <button type="submit" class="btn btn-primary">Sim</button>
        </form>
      </div>
    </div>
  </div>
</div>
	
</tags:template>

