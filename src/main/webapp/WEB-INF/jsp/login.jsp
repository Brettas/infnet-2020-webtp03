<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>AppGrana</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
	
<div class="container">
    <h1>Quero Pagar</h1>
     <p>Sistema de Gestão de Pagamentos</p>
  
  <c:if test="${not empty mensagem}">
	  <div class="alert alert-warning">
	    <strong>Ops!</strong> ${mensagem}
	  </div>
  </c:if>
  
  <div class="d-flex flex-column">
	<div class="d-flex justify-content-center">
		<div class="card card-container p-4" style="width: 600px;">
		<h4>Acesso ao Sistema</h4>
		<form action="/login" method="post">

		  <div class="form-group">			  
		    <label for="uname">Usuário:</label>
		    <input type="text" class="form-control" id="uname" name="login" placeholder="Digite o usuário" name="uname" required>
		  </div>
		  
		  <div class="form-group">
		    <label for="pwd">Senha:</label>
		    <input type="password" class="form-control" id="pwd" name="senha" placeholder="Digite a senha" name="pswd" required>
		  </div>		  
		  
		  <button type="submit" class="btn btn-primary">Acessar</button>
		 </form>
	  	 </div>
	</div>		
	</div>
  
</div>

</body>
</html>