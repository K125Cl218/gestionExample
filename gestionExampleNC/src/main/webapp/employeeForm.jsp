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
		
		<c:choose>
			<c:when test="${emp != null}">
				<c:set var="path" value="updateEmp"/>
			</c:when>
			<c:when test="${emp == null}">
				<c:set var="path" value="addEmp"/>
			</c:when>
		</c:choose>
		
		
		
		<form action="${path}" method="post">
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
			<input type="date" name="startDate" value="<fmt:formatDate value="${startDate}" pattern="yyyy-MM-dd"/>">
			<br>
			
			
			<label>Département : </label>
			<select name="deptId">
				<option value="" <c:if test="${emp == null}">selected</c:if> disabled hidden="">Select a department</option>
				<c:forEach items="${depts}" var="dept">
					<option value="${dept.getDeptId()}" <c:if test="${emp.getDepartment().getDeptId() == dept.getDeptId()}">selected</c:if>>${dept.getName()}</option>
				</c:forEach>
			</select>
			<br>
			
			
			<label>Titre : </label>
			<select name="title">
				<option value="" <c:if test="${emp == null}">selected</c:if> disabled hidden="">Select a title</option>
				<option value="teller" <c:if test="${emp.getTitle() == 'Teller'}">selected</c:if>>Teller</option>
				<option value="headTeller" <c:if test="${emp.getTitle() == 'Head Teller'}">selected</c:if>>Head Teller</option>
				<option value="operationsManager" <c:if test="${emp.getTitle() == 'Operations Manager'}">selected</c:if>>Operations Manager</option>
				<option value="loanManager" <c:if test="${emp.getTitle() == 'Loan Manager'}">selected</c:if>>Loan Manager</option>
				<option value="treasurer" <c:if test="${emp.getTitle() == 'Treasurer'}">selected</c:if>>Treasurer</option>
				<option value="vicePresident" <c:if test="${emp.getTitle() == 'Vice President'}">selected</c:if>>Vice President</option>
				<option value="president" <c:if test="${emp.getTitle() == 'President'}">selected</c:if>>President</option>
			</select>
			
			
			<br>
			<label>Manager : </label>
			<select name="managerId">
				<option value="" <c:if test="${emp == null}">selected</c:if> disabled hidden="">Select a manager</option>
				<c:forEach items="${managers}" var="manager">
					<option value="${manager.getEmpId()}" <c:if test="${emp.getEmployee() .getEmpId() == manager.getEmpId()}">selected</c:if>>${manager.getFirstName()} ${manager.getLastName()}</option>
				</c:forEach>
			</select>
			<br>
			
			
			<label>Assigned Branch : </label>
			<input type="text" name="assignedBranch" value="${emp.getAssignedBranchId()}">
			<br>
			<label>Date de fin de contrat : </label>
			<input type="date" name="endDate" value="${emp.getEndDate()}" pattern="yyyy-MM-dd"/>">
			<br>
			<input type="submit" value="Enregistrer">
			
			
		</form>
	</div>
</body>
</html>