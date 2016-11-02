<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html5/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Gasto</title>
<link type="text/css" href="/css/bootstrap.css" rel="stylesheet" />

<script type="text/javascript">
	function onload() {
	if(${gasto.diario})
		document.getElementById("diariosi").checked = true;
		else
		document.getElementById("diariono").checked = true;
	}
</script>


</head>
<body onload="onload();">
	<h2>Edit Gasto</h2>
	<form action="/gasto/update" method="post">
		<input type="hidden" name="id" value="${gasto.id}">
		<table class="table table-bordered">
			<tbody>
				<tr>
					<th>Concepto</th>
					<td><input type="text" name="concepto" required="required"
						value="${gasto.concepto}"></td>
				</tr>
				<tr>
					<th>Cantidad</th>
					<td><input type="number" name="cantidad" required="required"
						value="${gasto.cantidad}"></td>
				</tr>
				<tr>
					<th>Frecuencia</th>
					<td><input type="number" name="frecuencia" required="required"
						min="1" max="31" value="${gasto.frecuencia}"></td>
				</tr>
				<tr>
				
					<th>Diario</th>
					<td>
						<input id="diariosi" type="radio" name="diario" value="true"></input>Si<br> 
						<input id="diariono" type="radio" name="diario" value="false"></input>No<br>
					</td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="Edit Gasto"
						class="btn btn-success">
				</tr>
			</tbody>
		</table>
	</form>
	<a href="/gasto/list" class="btn btn-success">Back</a>

	<script type="application/javascript" src="js/jquery.js"></script>
	<script type="application/javascript" src="js/bootstrap.js"></script>
</body>
</html>

