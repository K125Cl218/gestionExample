<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Formulaire employé</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="wrapper" >
		<%@include file="jspf/navbar.html"%>
		<form action="#" method="post">
			<label>Prénom : </label>
			<input type="text" name="firstName" value="${emp.getFirstName()}">
			<label>Nom : </label>
			<input type="text" name="lastName" value="${emp.getLastName()}">
			<br>
			<label>Date d'embauche : </label>
			<c:choose>
				<c:when test="${emp != null}">
					<c:set var="startDate" value="${emp.getStartDate()}"/>
				</c:when>
				<c:when test="${emp == null}">
					<c:set var="startDate" value="<%= new Date()%>"/>
				</c:when>
			</c:choose>
			<input type="text" name="lastName" value="<fmt:formatDate value="${startDate}" pattern="dd-MM-yyyy"/>">
			<br>
			<label>Département : </label>
			<input type="text" name="department" value="${emp.getDepartment()}">
			<br>
			<label>Titre : </label>
			<input type="text" name="title" value="${emp.getTitle()}">
			<br>
			<label>Manager : </label>
			<input type="text" name="manager" value="${emp.getEmployee()}">
			<br>
			<label>Assigned Branch : </label>
			<input type="text" name="assignedBranch" value="${emp.getAssignedBranchId()}">
			<br>
			<label>Date de fin de contrat : </label>
			<input type="text" name="endDate" value="${emp.getEndDate()}">
			<br>
			<input type="submit" value="Enregistrer">
			
			
		</form>
	</div>
</body>
</html>