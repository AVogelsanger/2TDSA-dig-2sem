<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<tags:template titulo="Lista de Provas">

	<h1>Lista de Provas</h1>

	<table class="table">
	   <tr>	
		<th>Disciplina</th>
		<th>Descrição</th>
		<th>Data</th>
		<th>Nota Máxima</th>
	   </tr>	
	   
	   <c:forEach items="${provas }" var="p">
	   	 <tr>
	   	 	<td>${p.disciplina.nome }</td>
	   	 	<td>${p.descricao }</td>
	   	 	<td>
	   	 		<fmt:formatDate value="${p.data.time }"/>
	   	 	</td>
	   	 	<td>${p.notaMaxima }</td>
	   	 </tr>	
	   </c:forEach>
	</table>
	
	
</tags:template>