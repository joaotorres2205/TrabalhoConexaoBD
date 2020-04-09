<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
       
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" 
integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" 
crossorigin="anonymous">
<meta charset="ISO-8859-1">

<title>Insert title here</title>
</head>
<jsp:useBean id="lst" class="produto.Lista" scope="page"/>
<body style="background-color:#1332A2">
	</br>
	</br>	
		<div class="alert alert-primary" role="alert">
 			 <center><h2>Faça um novo cadastro!</center></h2>
		</div>
	</br>
		<center><a href="cadastrar.jsp" class="btn btn-secondary btn-lg active" role="button" aria-pressed="true">Cadastrar</a></center>
	<br/><br/><br/>
		
	<div class="table-responsive" style="width: 80%; margin-left: 10%">
	<table border="1px" class="table table-dark" >
	  <thead>
	    <tr>
			<th scope="col">Produto</th>
			<th scope="col">Marca</th>
			<th scope="col">Quantidade</th>
			<th scope="col">Preço de Venda</th>
			<th scope="col">Preço de Custo</th>
		</tr>
	  </thead>	
			<c:forEach var="p" items="${lst.listar()}">
				<tbody>
					<tr>
						<td class="bg-info">${p.descricao}</td>
						<td class="bg-info">${p.marca}</td>
						<td class="bg-info">${p.quantidade}</td>
						<td class="bg-info">${p.venda}</td>
						<td class="bg-info">${p.custo}</td>
					</tr>
				</tbody>
			</c:forEach>
		
	</table>
	<table border="1px" class="table table-dark table-sm" >
	  <thead>
	    <tr>
	    	<th scope="col"> Estoque</th>
			<th scope="col">Total Venda</th>
			<th scope="col">Total Custo</th>
			<th scope="col">Ganho</th>
		</tr>
	  </thead>	
	  	
	   	<tbody>
			<tr>
				<td class="bg-info">${lst.totalq}</td>
				<td class="bg-info"><fmt:formatNumber type = "number" pattern = "0.00" value = "${lst.totalv}" /></td>
				<td class="bg-info"><fmt:formatNumber type = "number" pattern = "0.00" value = "${lst.totalc}" /></td>
				<td class="bg-info"><fmt:formatNumber type = "number" pattern = "0.00" value = "${lst.lucro}" /></td>
			</tr>
		</tbody>
		
	</table>
	</div>
	</hr>
	
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" 
integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" 
crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" 
integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" 
crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" 
integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" 
crossorigin="anonymous"></script>
</body>
</html>