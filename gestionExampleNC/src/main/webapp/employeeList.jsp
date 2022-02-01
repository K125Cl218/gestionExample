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
	<script src="https://kit.fontawesome.com/3802fc747e.js" crossorigin="anonymous"></script>
</head>
<body>
	<div class="wrapper">
		<%@include file="jspf/navbar.html"%>
		
		<div style="margin: auto; width: 70%">
		<table class="table">
		  <thead>
		    <tr>
		      <th scope="col">First Name</th>
		      <th scope="col">Last Name</th>
		      <th scope="col">Title</th>
		      <th scope="col">Start Date</th>
		      <th scope="col">Manager</th>
		      <th scope="col">Actions</th>
		    </tr>
		  </thead>
		  <tbody>
		  	<c:forEach items="${employees}" var="employee">
			    <tr>
			      <td>${employee.getFirstName()}</td>
			      <td>${employee.getLastName()}</td>
			      <td>${employee.getTitle()}</td>
			      <td>${employee.getStartDate()}</td>
			      <td>${employee.getEmployee().getFirstName()} ${employee.getEmployee().getLastName()}</td>
			      
			      <td>
				      	<a href="updateRedirect?empId=${employee.getEmpId().toString()}" data-toggle="tooltip" title="Edit employee"><i class="fas fa-user-edit" style="color: black;"></i></a>
				      	<a href="deleteEmp?empId=${employee.getEmpId().toString()}" data-toggle="tooltip" title="Delete employee"><i class="fas fa-trash-alt" style="color: black;"></i></a>
			      </td>
			    </tr>
			    
			</c:forEach>
		  </tbody>
		</table>
		</div>

	</div>
	
</body>
</html>