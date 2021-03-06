<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-16"%>
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
<title>Cuenta</title>
<link type="text/css" href="/css/bootstrap.css" rel="stylesheet" />
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
</head>

<body>
	<h2>Add cuenta to quincena</h2>

	<div ng-app="myApp" ng-controller="myCtrl">

		<select>
			<option ng-repeat="quincena in names">{{quincena}}</option>
		</select>

	</div>

	<script>
		var app = angular.module('myApp', []);
		app.controller('myCtrl', function($scope) {
			$scope.names = ["Emil", "Tobias", "Linus"];
		});
	</script>

</body>
</html>