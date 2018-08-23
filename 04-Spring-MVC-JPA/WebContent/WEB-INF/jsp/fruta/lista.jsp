<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<tags:template titulo="Lista de Frutas">

	<h1>Frutas</h1>
	
	<c:if test="${not empty msg }">
		<div class="alert alert-success">
		${msg }
		</div>
	</c:if>
	
	<table class="table">
		<tr>
			<th>Código</th>
			<th>Nome</th>
			<th>Valor</th>
			<th>Quantidade</th>
			<th>Orgânico</th>
		</tr>
		
		
		
			<c:forEach items="${frutas }" var="f">
		<tr>
			<td>${f.codigo }</td>
			<td>${f.nome }</td>
			<td>${f.valor }</td>
			<td>${f.quantidade }</td>
			<td>${f.organico?"Sim":"Não" }</td>
			<td>
				<a href="<c:url value="/fruta/editar/${f.codigo }"/>">Editar</a>
			</td>
		</tr>
	</c:forEach>
		
	</table>
	

	
</tags:template>



    
    