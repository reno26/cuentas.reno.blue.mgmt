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
	<h2>Create new Gasto</h2>
	<form action="/gasto/save" method="post">
		<table class="table table-bordered">
			<tbody>
				<tr>
					<th>Concepto</th>
					<td><input type="text" name="concepto" required="required"></td>
				</tr>
				<tr>
					<th>Cantidad</th>
					<td><input type="number" name="cantidad" required="required"></td>
				</tr>
				<tr>
					<th>Frecuencia</th>
					<td><input type="number" name="frecuencia" required="required"></td>
				</tr>
				<tr>
					<th>Diario</th>
					<td><select name ="diario">
						<option value="1">Si</option>
						<option value="0">No</option>
					</select></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="Add Gasto"
						class="btn btn-success">
				</tr>
			</tbody>
		</table>
	</form>
	<a href="/gasto/lista" class="btn btn-success">Back</a>

	<script type="application/javascript" src="js/jquery.js"></script>
	<script type="application/javascript" src="js/bootstrap.js"></script>


</body>
</html>