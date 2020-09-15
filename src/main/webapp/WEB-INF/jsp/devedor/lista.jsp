<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Quero Pagar - Devedores</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</head>
<body style="background-color: #f2f2f2">
	<c:import url="../menu.jsp"/>
	
	<div class="container">
	
		<div class="row mt-2">
			<div class="col">
				<h3>Lista de Devedores</h3>	
			</div>			
			<div class="col">
				<form action="/devedores/cadastro" method="get">
				<button class="btn btn-info float-right" type="submit"> 
					Cadastrar Novo Devedor  
	             </button>
	             </form> 		
			</div>
		</div>
		
		<div class="card mt-2 pl-2 pr-2">
		<table class="table table-sm mt-2 table-hover">
			<thead class="thead-light">
		    <tr>
		      <th scope="col">Credor</th>
		      <th scope="col" width="40px">#</th>
		      <th scope="col">Nome</th>
		      <th scope="col">CPF</th>
		      <th scope="col">Cidade</th>
		      <th scope="col">UF</th>
		      <th scope="col" width="180px">Operação</th>
		    </tr>
		  </thead>
		  <tbody>
			  <c:forEach var="item" items="${devedores}">
			  <tr>
			  	<td>${item.credor.razaosocial}</td>
			  	<td>${item.id}</td>
	 		    <td>${item.nome}</td> 
	 		    <td>${item.cpf}</td>
	 		    <td>${item.cidade}</td>
	 		    <td>${item.uf}</td>
	 		    <td>
	 		    <div class="row">	 		    
	 		    	<a href="/devedores/cadastro/${item.id}">Editar</a>
	 		   		&nbsp;-&nbsp;
	 		    	<a href="/devedores/excluir/${item.id}">Excluir</a>
	 		    	&nbsp;-&nbsp;
	 		    	<a href="/devedores/debitos/${item.id}">Débitos</a>
	 		    </div>
	 		    </td>
	 		  </tr> 
			  </c:forEach>
		  </tbody>
		</table>
		</div>
	</div>


</body>
</html>