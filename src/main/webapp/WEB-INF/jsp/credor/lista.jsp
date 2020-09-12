<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Quero Pagar - Credores</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</head>
<body>
	<c:import url="../menu.jsp"/>
	
	<div class="container">
	
		<div class="row mt-2">
			<div class="col">
				<h3>Lista de Empresas / Credores</h3>	
			</div>			
			<div class="col">
				<form action="/credores/cadastro" method="get">
				<button class="btn btn-info float-right" type="submit"> 
					Cadastrar Novo Credor  
	             </button>
	             </form> 		
			</div>
		</div>
		
		<table class="table table-sm mt-2">
			<thead>
		    <tr>
		      <th scope="col" width="40px">#</th>
		      <th scope="col">Razão Social</th>
		      <th scope="col">CNPJ</th>
		      <th scope="col" width="80px">Status</th>
		      <th scope="col" width="100px">Operação</th>
		    </tr>
		  </thead>
		  <tbody>
			  <c:forEach var="item" items="${credores}">
			  <tr>
			  	<td>${item.id}</td> 
	 		    <td>${item.razaosocial}</td> 
	 		    <td>${item.cnpj}</td>
	 		    <td>
	 		    <c:if test="${item.ativo == true}"><span class="badge badge-success">Ativo</span></c:if>
	 		    <c:if test="${item.ativo != true}"><span class="badge badge-secondary">Inativo</span></c:if>
	 		    </td>
	 		    <td>
	 		    <div class="row">
	 		    	<a href="/credores/cadastro/${item.id}">Editar</a>
	 		    	&nbsp;-&nbsp;
	 		    	<a href="/credores/excluir/${item.id}">Excluir</a>
	 		    </div>
	 		    </td>
	 		  </tr> 
			  </c:forEach>
		  </tbody>
		</table>
	</div>


</body>
</html>