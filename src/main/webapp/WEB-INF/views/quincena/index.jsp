<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Quincenas</title>
<link type="text/css" href="/css/bootstrap.css" rel="stylesheet" />
</head>
<body>
	<h2>List of Quincenas</h2>
	<table class="table table-bordered">
		<tr>
			<th>Periodo</th>
			<th>Anio</th>
		</tr>
		<tbody>
			<c:forEach items="${quincenas}" var="quincena" varStatus="itr">
				<tr>
					<td>${quincena.periodo}</td>
					<td>${quincena.anio}</td>
					<td><a href="/quincena/edit/${quincena.id}" class="btn btn-warning">Edit</a></td>
					<td><a href="/quincena/${quincena.id}" class="btn btn-warning">Delete</a></td>
				</tr>
			</c:forEach>
		</tbody>

	</table>
	<a href="/quincena/create" class="btn btn-success">Add Quincena</a>
	<script type="application/javascript" src="js/jquery.js"></script>
	<script type="application/javascript" src="js/bootstrap.js"></script>

</body>
</html>