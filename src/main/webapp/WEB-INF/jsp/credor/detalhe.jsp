<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Quero Pagar - Cadastro de Credor</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</head>
<body>
	<c:import url="../menu.jsp"/>

	<div class="container">
		<h3 class="mt-2">Cadastro de Empresa/Credor</h3>
		
		<form action="/credores/incluir" class="was-validated" method="post" autocomplete="off">
		  <input hidden type="text" class="form-control" id="id" name="id" value=${credor.id}>
		   
		  <div class="form-group">
		    <label for="razaosocial">Razão Social:</label>
		    <input type="text" class="form-control" id="razaosocial" name="razaosocial" placeholder="Digite a Razão Social" required value=${credor.razaosocial}>
		    <div class="invalid-feedback">Campo obrigatório</div>
		  </div>
		  <div class="form-group">
		    <label for="cnpj">CNPJ:</label>
		    <input type="text" class="form-control" id="cnpj" name="cnpj" placeholder="Digite o CNPJ" maxlength="14" required value=${credor.cnpj}>
		    <div class="invalid-feedback">Campo obrigatório</div>
		  </div>
		  <div class="form-group">
		    <label for="senha">Senha:</label>
		    <input type="text" class="form-control" id="senha" name="senha" placeholder="Digite a Senha" required value=${credor.senha}>
		    <div class="invalid-feedback">Campo obrigatório</div>
		  </div>
		  <div class="form-check">
		    <input type="checkbox" class="form-check-input" id="ckativo" name="ativo" 
		    	<c:if test="${credor.ativo == true}">checked</c:if>
		    >
		    <label class="form-check-label" for="ckativo">Ativo ?</label>
		  </div>
		  
		  <button type="submit" class="mt-3 btn btn-primary">Cadastrar</button>
		</form>
		
		<br/>
		<a href="/credores">Voltar</a>
	</div>
	
</body>
</html>