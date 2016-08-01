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
	<h2>Edit Gasto</h2>
	<form action="/gasto/update" method="post">
		<input type="hidden" name="id" value="${gasto.id}">
		<table class="table table-bordered">
			<tbody>
				<tr>
					<th>Name</th>
					<td><input type="text" name="name" required="required"
						value="${gasto.name}"></td>
				</tr>
				<tr>
					<th>Email</th>
					<td><input type="email" name="email" required="required"
						value="${gasto.email}"></td>
				</tr>
				<tr>
					<th>Password</th>
					<td><input type="password" name="password" required="required"
						value="${gasto.password}"></td>
				</tr>
				<tr>
					<th>Mobile</th>
					<td><input type="number" name="mobile" required="required"
						value="${gasto.mobile}"></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="Edit Gasto"
						class="btn btn-success">
				</tr>
			</tbody>
		</table>
	</form>
	<a href="/gasto/index" class="btn btn-success">Back</a>

	<script type="application/javascript" src="js/jquery.js"></script>
	<script type="application/javascript" src="js/bootstrap.js"></script>


</body>
</html>