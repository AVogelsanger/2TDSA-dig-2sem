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
		</tr>

		<c:forEach items="${passagem }" var="p">
			<tr>
				<td>${p.origem }</td>
				<td>${p.destino }</td>
				<td><fmt:formatDate value="${p.data.time }" /></td>
				<td>${p.checkIn?"Sim":"Não" }</td>
				<td>${p.bagagem?"Sim":"Não" }</td>
				<td>${p.valor }</td>
			</tr>
		</c:forEach>
	</table>
	
</tags:template>

