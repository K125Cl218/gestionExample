<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Liste des employés</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="wrapper">
		<%@include file="jspf/navbar.html"%>
		
		<table class="table">
		  <thead>
		    <tr>
		      <th scope="col">First Name</th>
		      <th scope="col">Last Name</th>
		      <th scope="col">Title</th>
		    </tr>
		  </thead>
		  <tbody>
		  	<c:forEach items="${employees}" var="employee">
			    <tr>
			      <td>${employee.getFirstName()}</td>
			      <td>${employee.getLastName()}</td>
			      <td>${employee.getTitle()}</td>
			      
			      <td><form action="homePage.jsp" method="post"><input type="image" src="img/edit.png" alt="Edit" height="15" width="15" value="Edit"></form></td>
			      <td><form action="homePage.jsp" method="post"><input type="image" src="img/delete.png" alt="Delete" height="15" width="15" value="Delete"></form></td>
			    </tr>
			</c:forEach>
		  </tbody>
		</table>
		
	</div>
</body>
</html>