<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>


<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Quincena</title>
<link type="text/css" href="/css/bootstrap.css" rel="stylesheet" />

</head>
<body onload="onload();">
	<h2>Edit Quincena</h2>
	<form action="/quincena/update" method="post">
		<input type="hidden" name="id" value="${quincena.id}">
		<table class="table table-bordered">
			<tbody>
				<tr>
					<th>Periodo</th>
					<td><input type="text" name="periodo" required="required"
						value="${quincena.periodo}"></td>
				</tr>
				<tr>
					<th>Año</th>
					<td><input type="number" name="anio" required="required"
						value="${quincena.anio}"></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="Edit Quincena"
						class="btn btn-success">
				</tr>
			</tbody>
		</table>
	</form>
	<a href="/quincena/list" class="btn btn-success">Back</a>

	<script type="application/javascript" src="js/jquery.js"></script>
	<script type="application/javascript" src="js/bootstrap.js"></script>
</body>
</html>

