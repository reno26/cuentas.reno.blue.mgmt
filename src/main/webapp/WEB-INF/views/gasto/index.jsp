<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
					<td>${gasto.diario?"Si":"NO"}</td>
					<td><a href="/gasto/edit/${gasto.id}"
						class="btn btn-warning">Edit</a></td>
				</tr>
			</c:forEach>
		</tbody>

	</table>
	<a href="/gasto/create" class="btn btn-success">Add Gasto</a>

	<script type="application/javascript" src="js/jquery.js"></script>
	<script type="application/javascript" src="js/bootstrap.js"></script>


</body>
</html>