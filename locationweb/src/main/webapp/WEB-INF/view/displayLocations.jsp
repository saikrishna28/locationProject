<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@page isELIgnored="false"%> 
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" charset="ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<title>Displaying Locations</title>
</head>
<body>
<h2>Displaying Locations</h2><br>
<table class="table table-dark">
<thead>
<tr>
<th scope="col">ID</th>
<th scope="col">CODE</th>
<th scope="col">NAME</th>
<th scope="col">TYPE</th>
</tr>
</thead>
<tbody>
<c:forEach items="${locations}" var="location">
<tr>
<td>${location.id}</td>
<td>${location.code}</td>
<td>${location.name}</td>
<td>${location.type}</td>
<td><a href="deleteLocation?id=${location.id}">delete</a></td>
<td><a href="editLocation?id=${location.id}">edit</a></td>
</tr>
</c:forEach>
</tbody>
</table><br><br>
<a href="showCreate">Add Record</a>
</body>
</html>