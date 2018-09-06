<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<tags:template titulo="Edição de Fruta">
	
	<c:url value="/fruta/editar" var="link"/>
	<form:form action="${link }" method="post" commandName="fruta">
		<div class="form-group">
			<form:label path="nome">Nome</form:label>
			<form:input path="nome" cssClass="form-control"/>
		</div>
		<div class="form-group">	
			<form:checkbox path="organico"/>
			<form:label path="organico" cssClass="form-control"/>
		</div>
		<div class="form-group">	
			<form:label path="quantidade">Quantidade</form:label>
			<form:input path="quantidade" cssClass="form-control"/>
		</div>
		<div class="form-group">	
			<form:label path="valor">Valor</form:label>
			<form:input path="valor" cssClass="form-control"/>
		</div>
		
		<input type="submit" value="Editar" class="btn btn-primary">
		
		<a href="<c:url value="/fruta/listar/"/>">Cancelar</a>
		<form:hidden path="codigo"/>
	</form:form>

	
</tags:template>