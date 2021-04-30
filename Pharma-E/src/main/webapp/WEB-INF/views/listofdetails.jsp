<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>list of medical Details</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
.mmr1 {
	table-layout: fixed;
	width: 80%;
	margin: auto;
	margin-top:5%;
	

	
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

	<table class=mmr1 border="1">
		<tr>
			<th>Company ID</th>
			<th>Company Name</th>
			<th>Product Name</th>
			<th>Manufacturing Date</th>
			<th>Expiry Date</th>


		</tr>
		<c:forEach var="dets" items="${details}">
			<tr>

				<c:out value=""></c:out>
				<td>${dets.companyId}</td>
				<td>${dets.companyName}</td>
				<td>${dets.medicineName}</td>
				<td>${dets.manufacturingDate}</td>
				<td>${dets.expiryDate}</td>


			</tr>
		</c:forEach>
	</table>
</body>
</html>