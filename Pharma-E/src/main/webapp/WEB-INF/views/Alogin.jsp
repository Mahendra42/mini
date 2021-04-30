<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
#main {
	width: 20%;
	margin: auto;
	background: linear-gradient(orange,lightblue,brown);
	padding: 2rem;
	margin-top: 10%;
	border-radius: 10px;
}

input {
	margin-top: 10px;
}
</style>
</head>
<body>
	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
		<ul class="navbar-nav">
			<li class="nav-item"><a class="nav-link" href="/welcome">Home</a>
			</li>
			<li class="nav-item"><a class="nav-link" href="/admin">Admin</a>
			</li>
		</ul>
	</nav>
<body>
	<div id="main">
		<form style="text-align: center;"action=/alogin method="post">
			<input type="text" name="username" placeholder="User Name" /><br>
			<input type="password" name="password" placeholder="password" /><br>
			<input type="submit" value="login" />
		</form>
	</div>
</body>

</body>
</html>