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
<jsp:useBean id="lst" class="produto.ProdutoDao" scope="page"/>
<body style="background-color:#1332A2">
	</br>
	</br>	
		<div class="alert alert-primary" role="alert">
 			 <center><h2>Fa�a um novo cadastro!</center></h2>
		</div>
	</br>
		<center><a href="cadastrar.jsp" class="btn btn-secondary btn-lg active" role="button" aria-pressed="true">Cadastrar</a></center>
	<br/><br/>
		
	<div class="table-responsive" style="width: 80%; margin-left: 10%">
	<table border="1px" class="table table-dark" >
	  <thead>
	    <tr>
			<th scope="col">id</th>
				<th scope="col">Descri��o</th>
				<th scope="col">Marca</th>
				<th scope="col">Pre�o de Custo</th>
				<th scope="col">Pre�o de Venda</th>
				<th scope="col">Saldo</th>
				<th scope="col">Excluir</th>
		</tr>
	  </thead>	
			<c:forEach var="p" items="${lst.listar()}">
				<tbody>
					<tr>
						<td class="bg-info">${p.idproduto}</td>
						<td class="bg-info">${p.descricao}</td>
						<td class="bg-info">${p.marca}</td>
						<td class="bg-info">${p.precoCusto}</td>
						<td class="bg-info">${p.precoVenda}</td>
						<td class="bg-info">${p.saldo}</td>
						</br>
						<td><a class="btn btn-secondary" href="Excluir.jsp?idproduto=${p.getIdproduto()}" role="button">Excluir</a></td>
					</tr>
				</tbody>
			</c:forEach>
		
	</table>
	<table border="1px" class="table table-dark table-sm" >
	  <thead>
	   			<tr>
	    	<th scope="col">Total Pre�o de Venda</th>
			<th scope="col">Total Pre�o de Custo</th>
			<th scope="col">Saldo Total</th>

		</tr>
	  </thead>	
	  	
	   	<tbody>
			<tr>
				<td class="bg-info">${lst.getTotalPrecoVenda(lst.listar())}</td>
				<td class="bg-info">${lst.getTotalPrecoCusto(lst.listar())}</td>
				<td class="bg-info">${lst.getTotalSaldo(lst.listar())}</td>
				
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