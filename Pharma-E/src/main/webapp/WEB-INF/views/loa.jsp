<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Expiry Details</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
.main {
	width: 35%;
	margin:auto;
	margin-top: 20px;
}
</style>
</head>

<body>

<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
		<ul class="navbar-nav">
			<li class="nav-item"><a class="nav-link" href="/Welcome">Home</a>
			</li>
			<li class="nav-item"><a class="nav-link" href="/lmd">Load Medicine Details</a>
			</li>
			<li class="nav-item"><a class="nav-link" href="/vloe">View List of Medicine</a>
			</li>
			<li class="nav-item"><a class="nav-link" href="/vem">View Expired Medicine</a>
			</li>
			<li class="nav-item"><a class="nav-link" href="/lo">LogOut</a>
			</li>
		</ul>
	</nav>
	<table border="1" class="main">
		<tr>
			<th>medicine Name</th>
			<th>Expiry Date</th>



		</tr>
		<c:forEach var="patient" items="${appointments}">
			<tr>
				<c:out value=""></c:out>
				<td>${patient.medicineName}</td>
				<td>${patient.expiryDate}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>