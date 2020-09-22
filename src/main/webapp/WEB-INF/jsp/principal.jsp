<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Quero Pagar - Inicio</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
	
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
	<link href="/estilos/estilo.css" rel="stylesheet">
		
</head>
<body>
	<c:import url="menu.jsp"/>
	
	<div class="container mt-2">		
		
		<div class="row">
					
			<div class="container">
			    <div class="row">
			        <div class="col-md-4 col-xl-3">
			            <div class="card bg-c-blue order-card">
			                <div class="card-block">
			                    <h6 class="m-b-20">Credores Ativos</h6>
			                    <h2 class="text-right"><i class="fa fa-building f-left"></i><span>${fn:length(credores)}</span></h2>
			                </div>
			            </div>
			        </div>
			        
			        <div class="col-md-4 col-xl-3">
			            <div class="card bg-c-green order-card">
			                <div class="card-block">
			                    <h6 class="m-b-20">Qtde de Devedores</h6>
			                    <h2 class="text-right"><i class="fa fa-users f-left"></i><span>${fn:length(credores)}</span></h2>
			                </div>
			            </div>
			        </div>
			        
			        <div class="col-md-4 col-xl-3">
			            <div class="card bg-c-yellow order-card">
			                <div class="card-block">
			                    <h6 class="m-b-20">Qtde de Débitos em Aberto</h6>
			                    <h2 class="text-right"><i class="fa fa-database f-left"></i><span>${fn:length(debitos)}</span></h2>
			                </div>
			            </div>
			        </div>
			        
			        <div class="col-md-4 col-xl-3">
			            <div class="card bg-c-pink order-card">
			                <div class="card-block">
			                    <h6 class="m-b-20">Saldo de Débitos</h6>
			                    <h2 class="text-right">
			                    <span>
			                    <fmt:setLocale value="pt_BR"/>
			                    <fmt:formatNumber type = "currency" value = "${saldo}" />
			                    </span></h2>
			                </div>
			            </div>
			        </div>
				</div>
			</div>
		
		</div>

	</div>
	
	<div class="footer">
	  	<h5>Quero Pagar</h5>
		<h6>Sistema de Gestão de Pagamentos</h6>
	</div>

</body>

</html>