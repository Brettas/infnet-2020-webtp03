<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Quero Pagar</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
	
<div class="container">
  <h1 style="color: #ffffff">Quero Pagar</h1>
  <p style="color: #ffffff">Sistema de Gestão de Pagamentos</p>
  
  <c:if test="${not empty mensagem}">
	  <div class="alert alert-warning">
	    <strong>Ops!</strong> ${mensagem}
	  </div>
  </c:if>
  
  <div class="d-flex flex-column">
	<div class="d-flex justify-content-center align-self-center">
		<div class="card card-container p-4" style="width: 600px;">
		<form action="/loginconsulta" method="post" autocomplete="off">

		  <div class="form-group">			  
		    <label for="uname">CPF/CNPJ:</label>
		    <input type="text" class="form-control" id="uname" name="cpf" placeholder="Digite seu CPF/CNPJ" required>
		  </div>	  
		  		  
			<button type="submit" class="btn btn-primary">CONSULTAR MEUS DÉBITOS</button>
			<a href="https://github.com/betofrasson/infnet-2020-webtp03" class="btn btn-success">Git</a>		  		  
		  
		  	<a href="/login" class="btn btn-warning text-white float-right">ACESSO ADMIN</a>
		  
		 </form>
	  	 </div>
	</div>		
	</div>
  
</div>

</body>

<style>
	body{
		background-image: linear-gradient(45deg, #1c1c1c 25%, #1a1a1a 25%, #1a1a1a 50%, #1c1c1c 50%, #1c1c1c 75%, #1a1a1a 75%, #1a1a1a 100%);
		background-size: 11.31px 11.31px;
	}
</style>
</html>