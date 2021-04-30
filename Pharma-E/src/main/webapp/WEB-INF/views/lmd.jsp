<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>load medicine details</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
.form-group {
	margin-top: 15px;
	width: 50%;
	margin: auto;
	width: 30%;
}

#one {
	margin-left: 30%;
}

.error {
	color: red;
}
</style>
</head>

<body>
	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
		<ul class="navbar-nav">
			<li class="nav-item"><a class="nav-link" href="/Welcome">Home</a>
			</li>
			<li class="nav-item"><a class="nav-link" href="/lmd">Load
					Medicine Details</a></li>
			<li class="nav-item"><a class="nav-link" href="/vloe">View
					List of Medicine</a></li>
			<li class="nav-item"><a class="nav-link" href="/vem">View
					Expired Medicine</a></li>
			<li class="nav-item"><a class="nav-link" href="/lo">LogOut</a></li>
		</ul>
	</nav>

	<h2 style="text-align: center">Load Medicine Details</h2>
	<table id="table">
		<form:form action="/medreg" modelAttribute="md">
			<div class="form-group">
				<form:label path="companyId">Company Id</form:label>
				<form:input path="companyId" class="form-control"
					value="${md.companyId}" id="companyId" name="companyId"
					readonly="true"></form:input>
			</div>

			<div class="form-group">
				<form:label path="companyName">Company Name</form:label>
				<form:input path="companyName" class="form-control"
					value="${md.companyName}" id="companyName" name="companyName"></form:input>
			</div>
			<div class="form-group">
				<form:label path="medicineName">Medicine Name</form:label>
				<form:input path="medicineName" class="form-control"
					value="${md.medicineName}" id="medicineName" name="medicineName"></form:input>
				<form:errors path="medicineName" class="error"></form:errors>
			</div>
			<div class="form-group">
				<form:label path="manufacturingDate">Manufacturing Date</form:label>
				<form:input path="manufacturingDate" type="date"
					class="form-control"
					placeholder="Enter the Manufacturing Expiry Date"
					value="${md.manufacturingDate}" id="md" name="md" />
				<form:errors path="manufacturingDate" class="error"></form:errors>
			</div>
			<div class="form-group">
				<form:label path="expiryDate">Expiry Date</form:label>
				<form:input path="expiryDate" type="date" class="form-control"
					placeholder="Enter the Expiry Date" value="${md.expiryDate}"
					id="ed" name="ed" />
				<form:errors path="expiryDate" class="error"></form:errors>
			</div>

			<div class="form-group">
				<br>
				<form:button id="one">Load Medicine Details</form:button>
			</div>
		</form:form>
	</table>
</body>
</html>