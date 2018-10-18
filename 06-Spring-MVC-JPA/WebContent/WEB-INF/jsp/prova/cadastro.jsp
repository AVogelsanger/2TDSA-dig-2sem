<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<tags:template titulo="Cadastro de Prova">
	<h1>Cadastro de Prova</h1>
	
	<c:if test="${not empty msg}">
		<div class="alert alert-success">${msg}</div>
	</c:if>
	
	<c:url value="/prova/cadastrar" var="acao"/>
	
	<form:form action="${acao }" method="post" commandName="prova">
		<div class="form-group">
			<form:label path="descricao">Descrição</form:label>
			<form:input path="descricao" cssClass="form-control"/>
			<form:errors  path="descricao"/>	
		</div>
		<div class="form-group">
			<form:label path="notaMaxima">Nota máxima</form:label>
			<form:input path="notaMaxima" cssClass="form-control"/>
			<form:errors  path="notaMaxima"/>	
		</div>
		<div class="form-group">
			<form:label path="data">Data</form:label>
			<form:input path="data" cssClass="form-control"/>
			<form:errors  path="data"/>	
		</div>
		<div class="form-group">
			<form:label path="disciplina">Disciplina</form:label>
			<form:select path="disciplina.codigo" cssClass="form-control">
				<form:option value="0">Selecione</form:option>
				<form:options items="${disciplinas }" itemLabel="nome" itemValue="codigo"/>
			</form:select>	
		</div>
		<input type="submit" value="cadastrar" class="btn btn-primary"/>
	
	</form:form> 




</tags:template>