<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@page isELIgnored="false"%>	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Location</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
	<form action="updateLoc" method="post">
		<pre>
  Id:<input type="text" class="form-control" name="id" value="${location.id}" readonly/>
Code:<input type="text" class="form-control" name="code" value="${location.code}"/>
Name:<input type="text" class="form-control" name="name" value="${location.name}"/>
Type: Rural <input type="radio" class="radio" name="type" value="Rural" ${location.type=='Rural'?'checked':''}/>
	  Urban <input type="radio" class="radio" name="type" value="Urban" ${location.type=='Urban'?'checked':''}/>
		<input type="submit" value="save">
			</pre>
	</form>
	<a  href="displayLocations">View All</a>
</body>
</html>