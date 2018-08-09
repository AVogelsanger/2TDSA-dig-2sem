<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>

<tags:template titulo="Resultado do cadastro">
	<div>
		${msg }
	</div>
	<div>
		${v.titulo }
		${v.salario }
		${v.regime }
		${v.beneficios?"Sim":"Não" }
		${v.descricao }
	</div>
</tags:template>