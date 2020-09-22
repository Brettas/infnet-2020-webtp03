<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Quero Pagar - Débitos</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</head>
<body style="background-color: #f2f2f2">	
	
	<div class="container">		
				
		<div class="row mt-2">
			<div class="col">
				<h3>Lista de Débitos</h3>	
			</div>			
		</div>
		
		<div class="row">
		    <div class="col">
		    	<label for="tx_credor">Credor:</label>
		      <input type="text" class="form-control" id="tx_credor" readonly value="${devedor.credor.razaosocial}">
		    </div>
		    <div class="col">
		    	<label for="tx_devedor">Devedor:</label>
		      <input type="text" class="form-control" id="tx_devedor" readonly value="${devedor.nome}">
		    </div>
		</div>
		
		<div class="card mt-2 pl-2 pr-2">
		<table class="table table-sm mt-2 table-hover">
			<thead class="thead-light">
		    <tr>
		      <th scope="col" width="40px">#</th>
		      <th scope="col">Número do Título</th>
		      <th scope="col">Parcela</th>
		      <th scope="col">Vencimento</th>
		      <th scope="col">Valor</th>
		      <th scope="col" width="80px">Status</th>
		    </tr>
		  </thead>
		  <tbody>
		  	<c:forEach var="item" items="${debitos}">
		  	 <tr>
				 <td>${item.id}</td>
				 <td>${item.numero}</td>
				 <td>${item.parcela}</td>
				 <td>
				 	<fmt:parseDate  value="${item.vencimento}"  type="date" pattern="yyyy-MM-dd" var="parsedDate" />
					<fmt:formatDate value="${parsedDate}" pattern="dd/MM/yyyy" />
				 </td>
				 <td>
				 	<fmt:setLocale value="pt_BR"/>
				 	<fmt:formatNumber type = "currency" value = "${item.valor}" />
				 </td>
				 <td>
				 	<c:if test="${item.status == 'aberto'}"><span class="badge badge-success">Aberto</span></c:if>
	 		    	<c:if test="${item.status != 'aberto'}"><span class="badge badge-secondary">Quitado</span></c:if>				 
				 </td>
			 </tr>
			</c:forEach>			 
		  </tbody>
		</table>
		</div>
		
		<hr/>
		  
		<a href="/consulta" class="btn btn-warning text-white">Voltar</a>
	</div>


</body>
</html>