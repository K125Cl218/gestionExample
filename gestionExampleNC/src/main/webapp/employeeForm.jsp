<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
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
	<script src="https://kit.fontawesome.com/3802fc747e.js" crossorigin="anonymous"></script>
</head>
</head>
<body>

<div class="wrapper" >
		<%@include file="jspf/navbar.html"%>
		
		<div style="margin: auto; width: 70%;">
		
		<c:choose>
			<c:when test="${emp != null}">
				<c:set var="path" value="updateEmp"/>
			</c:when>
			<c:when test="${emp == null}">
				<c:set var="path" value="addEmp"/>
			</c:when>
		</c:choose>
		
		
		
		<form action="${path}" method="post">
			<input type="text" hidden="" name="empId" value="${emp.getEmpId()}">
		
			<div class="row">
				<div class="col">
					<label for="firstName">Prénom : </label>
					<input type="text" name="firstName" value="${emp.getFirstName()}" class="form-control" id="firstName">
				</div>
				<div class="col">
					<label for="lastName">Nom : </label>
					<input type="text" name="lastName" value="${emp.getLastName()}" class="form-control" id="lastName">
				</div>
			</div>
			
			<div class="row">
				<div class="col">
					<label for="startDate">Date d'embauche : </label>
					<c:choose>
						<c:when test="${emp != null}">
							<c:set var="startDate" value="${emp.getStartDate()}"/>
						</c:when>
						<c:when test="${emp == null}">
							<c:set var="startDate" value="<%= new Date()%>"/>
						</c:when>
					</c:choose>
					<input type="date" name="startDate" value="<fmt:formatDate value="${startDate}" pattern="yyyy-MM-dd"/>" class="form-control" id="startDate">
				</div>
			
				<div class="col">
					<label for="dept">Département : </label>
					<select name="deptId" class="form-control" id="dept">
						<option value="" <c:if test="${emp == null}">selected</c:if> disabled hidden="">Select a department</option>
						<c:forEach items="${depts}" var="dept">
							<option value="${dept.getDeptId()}" <c:if test="${emp.getDepartment().getDeptId() == dept.getDeptId()}">selected</c:if>>${dept.getName()}</option>
						</c:forEach>
					</select>
				</div>
			
				<div class="col">
					<label for="title">Titre : </label>
					<select name="title" class="form-control" id="title">
						<option value="" <c:if test="${emp == null}">selected</c:if> disabled hidden="">Select a title</option>
						<option value="Teller" <c:if test="${emp.getTitle() == 'Teller'}">selected</c:if>>Teller</option>
						<option value="Head Teller" <c:if test="${emp.getTitle() == 'Head Teller'}">selected</c:if>>Head Teller</option>
						<option value="Operations Manager" <c:if test="${emp.getTitle() == 'Operations Manager'}">selected</c:if>>Operations Manager</option>
						<option value="Loan Manager" <c:if test="${emp.getTitle() == 'Loan Manager'}">selected</c:if>>Loan Manager</option>
						<option value="Treasurer" <c:if test="${emp.getTitle() == 'Treasurer'}">selected</c:if>>Treasurer</option>
						<option value="Vice President" <c:if test="${emp.getTitle() == 'Vice President'}">selected</c:if>>Vice President</option>
						<option value="President" <c:if test="${emp.getTitle() == 'President'}">selected</c:if>>President</option>
					</select>
				</div>
			</div>
			
			<div class="form-group">
				<label for="manager">Manager : </label>
				<select name="managerId" class="form-control" id="manager">
					<option value="" <c:if test="${emp == null}">selected</c:if> disabled hidden="">Select a manager</option>
					<c:forEach items="${managers}" var="manager">
						<option value="${manager.getEmpId()}" <c:if test="${emp.getEmployee() .getEmpId() == manager.getEmpId()}">selected</c:if>>${manager.getFirstName()} ${manager.getLastName()}</option>
					</c:forEach>
				</select>
			</div>
			
			
			<div class="row">
				<div class="col">
					<label for="assignedBranch">Assigned Branch : </label>
					<input type="number" name="assignedBranch" value="${emp.getAssignedBranchId()}" class="form-control" id="assignedBranch" min="1">
				</div>
				<div class="col">
					<label for="endDate">Date de fin de contrat : </label>
					<input type="date" name="endDate" value="<fmt:formatDate value="${emp.getEndDate()}" pattern="yyyy-MM-dd"/>" class="form-control" id="endDate">
				</div>
			</div>
			<div align="right" style="margin-top: 10px">
			<input type="button" onclick="location.href='employeeList'" value="Annuler" class="btn btn-primary">
			<input type="submit" value="Enregistrer" class="btn btn-primary">
			</div>
			
		</form>
		</div>
	</div>
	
</body>
</html>