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
<body style="background-color: #f2f2f2">
	<div class="container">
	
		<div class="container-fluid" style="margin-top:80px">

			<nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
			  <a class="navbar-brand" href="/sair">Quero Pagar</a>
			</nav>
			
			<div class="card p-4 m-4">
			
			<h2>Cadastro de Usuários</h2>	
			
			<hr/>

			<form action="/usuario" method="post" autocomplete="off">
			
			  <div class="form-group">
			    <label for="nome">Nome:</label>
			    <input type="text" class="form-control" id="nome" name="nome" required>
			  </div>
			
			  <div class="form-group">
			    <label for="login">Login:</label>
			    <input type="text" class="form-control" id="login" name="login" required>
			  </div>
			
			  <div class="form-group">
			    <label for="senha">Senha:</label>
			    <input type="password" class="form-control" id="senha" name="senha" required>
			  </div>
			
			  <hr/>
			
			  <button type="submit" class="btn btn-primary">Cadastrar</button>
			  <a href="/voltar" class="btn btn-warning text-white">Cancelar / Voltar</a>
			</form>
			</div>
				  		
  		</div>
	</div>

</body>
</html>