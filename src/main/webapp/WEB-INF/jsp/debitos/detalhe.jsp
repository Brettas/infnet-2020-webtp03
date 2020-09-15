<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Quero Pagar - Cadastro de Débito</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</head>
<body style="background-color: #f2f2f2">
	<c:import url="../menu.jsp"/>

	<div class="container">
		<div class="card p-4 m-4">
		<h3 class="mt-2">Cadastro de Débito</h3>
		
		<hr/>
		
		<div class="row mb-2">
		    <div class="col">
		    	<label for="tx_credor">Credor:</label>
		      <input type="text" class="form-control" id="tx_credor" readonly value="${devedor.credor.razaosocial}">
		    </div>
		    <div class="col">
		    	<label for="tx_devedor">Devedor:</label>
		      <input type="text" class="form-control" id="tx_devedor" readonly value="${devedor.nome}">
		    </div>
		</div>
		
		<form action="/debitos/incluir" method="post" autocomplete="off">
		  <input hidden type="text" class="form-control" id="id" name="id" value=${debito.id}>
		  <input hidden type="text" class="form-control" id="credor" name="credor" value=${devedor.credor.id}>
		  <input hidden type="text" class="form-control" id="devedor" name="devedor" value=${devedor.id}>
		   
		  <div class="form-group">
		    <label for="numero">Número do Título (obrigatório):</label>
		    <input type="text" class="form-control" id="numero" name="numero" placeholder="Digite o Número do Título" required value=${debito.numero}>
		  </div>
		  <div class="form-group">
		    <label for="parcela">Parcela:</label>
		    <input type="number" class="form-control" id="parcela" name="parcela" value=${debito.parcela}>
		  </div>
		  
		  <hr/>
		  
		  <button type="submit" class="btn btn-primary">Cadastrar</button>
		  <a href="/devedores/debitos/${devedor.id}">Cancelar / Voltar</a>
		</form>
		</div>
	</div>
	
</body>
</html>