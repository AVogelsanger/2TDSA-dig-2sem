<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<tags:template titulo="Lista">
	<h1>Vendas</h1>

	<table class="table table-striped">
		<thead>
			<tr>
				<th>Cliente</th>
				<th>Data</th>
				<th>Valor</th>
				<th>Descrição</th>
				<th>Pago</th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${vendas }" var="v">
				<tr>
					<td>${v.cliente }</td>
					<td><fmt:formatDate value="${v.data.time }" pattern="dd/MM/yyyy"/></td>
					<td>${v.valor }</td>
					<td>${v.descricao }</td>
					<td>${v.pago?"Sim":"Não"}</td>
					
					<!-- tag button, acrescente onclick -->
					<td>
					<button ${v.pago?"disabled":"" } onclick="idVenda.value = ${v.codigo}" type="button" 
								class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
  									Pagar
					</button>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	
	<!-- Modal -->
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
        Deseja realmente marcar a venda como paga?
      </div>
      <div class="modal-footer">
      
      <!-- mexia aqui colocando as tags abaixo-->
      	<c:url value="/venda/pagar" var="acao"/>
      	<form action="${acao }" method="post">
      	<input type="hidden" name="codigo" id="idVenda">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Não</button>
        <button type="submit" class="btn btn-primary">Sim</button>
        </form>
      </div>
    </div>
  </div>
</div>

</tags:template>