<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
.city {
    float: left;
    margin: 5px;
    padding: 15px;
    max-width: 300px;
    height: 300px;
    border: 1px solid black;
} 
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Gastos</title>
<link type="text/css" href="/css/bootstrap.css" rel="stylesheet" />
</head>
<body>
	<h2>List of Gastos</h2>
	<table class="table table-bordered">
		<tr>
			<th>Concepto</th>
			<th>Cantidad</th>
			<th>Frecuencia</th>
			<th>Diario</th>
		</tr>
		<tbody>
			<c:forEach items="${gastos}" var="gasto" varStatus="itr">
				<tr>
					<td>${gasto.concepto}</td>
					<td>${gasto.cantidad}</td>
					<td>${gasto.frecuencia}</td>
					<td>${gasto.diario?"Si":"No"}</td>
					<td><a href="/gasto/edit/${gasto.id}" class="btn btn-warning">Edit</a></td>
					<td><a href="/gasto/${gasto.id}" class="btn btn-warning">Delete</a></td>
				</tr>
			</c:forEach>
		</tbody>

	</table>
	<a href="/gasto/create" class="btn btn-success">Add Gasto</a>

	<script type="application/javascript" src="js/jquery.js"></script>
	<script type="application/javascript" src="js/bootstrap.js"></script>


</body>
</html>