<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Quero Pagar - Cadastro de Devedor</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</head>
<body>
	<c:import url="../menu.jsp"/>

	<div class="container">
		<h3 class="mt-2">Cadastro de Devedor</h3>
		
		<form action="/devedores/incluir" class="was-validated" method="post" autocomplete="off">
		  <input hidden type="text" class="form-control" id="id" name="id" value=${devedor.id}>
		   
		  <div class="form-group">
		    <label for="credor">Credor</label>
		    <select class="form-control" id="credor" name="credor" value="${devedor.credor.id}">
		    <c:forEach var="item" items="${credores}">
		      <option value="${item.id}"  ${item.id == devedor.credor.id ? 'selected' : ''} >${item.razaosocial}</option>
			</c:forEach>
		    </select>
		  </div>
		   
		  <div class="form-group">
		    <label for="nome">Nome do Devedor:</label>
		    <input type="text" class="form-control" id="nome" name="nome" placeholder="Digite o Nome" required value=${devedor.nome}>
		    <div class="invalid-feedback">Campo obrigatório</div>
		  </div>
		  <div class="form-group">
		    <label for="cpf">CPF:</label>
		    <input type="text" class="form-control" id="cpf" name="cpf" placeholder="Digite o CPF" required value=${devedor.cpf}>
		    <div class="invalid-feedback">Campo obrigatório</div>
		  </div>
		  <div class="form-group">
		    <label for="cidade">Cidade:</label>
		    <input type="text" class="form-control" id="cidade" name="cidade" placeholder="Digite a Cidade" value=${devedor.cidade}>
		  </div>
		  <div class="form-group">
		    <label for="uf">UF:</label>
		     <select class="form-control" id="uf" name="uf" value="${devedor.uf}">
			  <option value=""></option>
			  <option value="PR" ${devedor.uf == "PR" ? 'selected' : ''}>PR</option>
		      <option value="SC" ${devedor.uf == "SC" ? 'selected' : ''}>SC</option>
		      <option value="SP" ${devedor.uf == "SP" ? 'selected' : ''}>SP</option>
		      <option value="RJ" ${devedor.uf == "RJ" ? 'selected' : ''}>RJ</option>
		      <option value="RS" ${devedor.uf == "RS" ? 'selected' : ''}>RS</option>
		    </select>
		  </div>
		  
		  <button type="submit" class="mt-3 btn btn-primary">Cadastrar</button>
		</form>
		
		<br/>
		<a href="/devedores">Voltar</a>
	</div>
	
</body>
</html>