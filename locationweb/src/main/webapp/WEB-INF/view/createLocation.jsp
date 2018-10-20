<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<title>Create Location</title>
</head>
<body>
	<form action="saveLoc" method="post">
  Id:<input class="form-control" type="text" name="id" width="150"/><br>
Code:<input class="form-control" type="text" name="code" width="150"/><br>
Name:<input class="form-control" type="text" name="name" width="150"/><br>
Type: Rural <input type="radio" class="radio" name="type" value="Rural" /><br>
	  Urban <input type="radio" class="radio" name="type" value="Urban" /><br>
		<input type="submit" value="save">
	</form>
	${msg}
	<a href="displayLocations">View All</a>
</body>
</html>