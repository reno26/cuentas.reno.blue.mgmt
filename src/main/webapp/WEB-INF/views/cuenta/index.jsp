<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cuentas</title>
<link type="text/css" href="/css/bootstrap.css" rel="stylesheet" />
</head>
<body>
	<h2>List of Cuentas</h2>
	<table class="table table-bordered">
		<tr>
			<th>Persona</th>
			<th>Concepto</th>
			<th>Cantidad</th>
			<th>Pagado</th>
			<th>Número Pago</th>
			<th>Total Pagos</th>
			<th>Observación</th>
		</tr>
		<tbody>
			<c:forEach items="${cuentas}" var="cuenta" varStatus="itr">
				<tr>
					<td>${cuenta.persona}</td>
					<td>${cuenta.concepto}</td>
					<td>${cuenta.cantidad}</td>
					<td>${cuenta.pagado}</td>
					<td>${cuenta.numeroPago}</td>
					<td>${cuenta.totalPagos}</td>
					<td>${cuenta.observacion}</td>
					<td><a href="/cuenta/edit/${cuenta.id}"
						class="btn btn-warning">Edit</a></td>
				</tr>
			</c:forEach>
		</tbody>

	</table>
	<a href="/cuenta/create" class="btn btn-success">Add Cuenta</a>

	<script type="application/javascript" src="js/jquery.js"></script>
	<script type="application/javascript" src="js/bootstrap.js"></script>


</body>
</html>