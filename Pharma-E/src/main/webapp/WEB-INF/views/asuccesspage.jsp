<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration completed</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
h1{
text-align: center;
}
h2{
text-align: center;
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
            
 <h1 style="color: Green;">${successpage}</h1>
<h2 style="color: blue;">Welcome ${firstname} ${lastname}</h2>
</body>
</html>