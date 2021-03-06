<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-16"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cuenta</title>
<link type="text/css" href="/css/bootstrap.css" rel="stylesheet" />
</head>
<body>
	<h2>Create new cuenta</h2>
	<form action="/cuenta/save" method="post">
		<table class="table table-bordered">
			<tbody>
				<tr>
					<th>Tipo cuenta</th>
					<td><input type="radio" name="tipoCuenta" value="1" checked>Entrada<br>
						<input type="radio" name="tipoCuenta" value="0">Salida<br></td>
				</tr>
				<tr>
					<th>Persona</th>
					<td><input type="text" name="persona" required="required"></td>
				</tr>
				<tr>
					<th>Concepto</th>
					<td><input type="text" name="concepto" required="required"></td>
				</tr>
				<tr>
					<th>Cantidad</th>
					<td><input type="number" name="cantidad" required="required"></td>
				</tr>
				<tr>
					<th>Pagado</th>
					<td><input type="number" name="pagado" required="required"></td>
				</tr>
				<tr>
					<th>Número Pago</th>
					<td><input type="number" name="numeroPago" required="required"></td>
				</tr>
				<tr>
					<th>Total Pagos</th>
					<td><input type="number" name="totalPagos" required="required"></td>
				</tr>
				<tr>
					<th>Observacion</th>
					<td><input type="text" name="observacion" required="required"></td>
				</tr>
				<tr>
					<select class="form-control" id="sel1" ng-model="data.singleSelect">
						<option>1</option>
						<option>2</option>
						<option>3</option>
						<option>4</option>
					</select>

				</tr>


				<tr>
					<td colspan="2"><input type="submit" value="Add Cuenta"
						class="btn btn-success">
			</tbody>
		</table>
	</form>
	<a href="/cuenta/list" class="btn btn-success">Back</a>

	<script type="application/javascript" src="js/jquery.js"></script>
	<script type="application/javascript" src="js/bootstrap.js"></script>