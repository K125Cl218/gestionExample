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
				      	<form action="updateRedirect" style="display: inline;" method="post">
				      		<input type="text" value="${employee.getEmpId().toString()}" name="empId" hidden="">
							<button type="submit" class="btn btn-info btn-lg" style="background-color: white; border: none;" title="Edit employee">
								<i class="fas fa-user-edit" style="color: black;"></i>
							</button>
						</form>
						<button type="button" class="btn btn-info btn-lg" style="background-color: white; border: none;" 
							data-toggle="modal" title="Delete employee" data-target="#deleteModal" data-emp-id="${employee.getEmpId().toString()}" 
							data-emp-name="${employee.getFirstName()} ${employee.getLastName()}">
							<i class="fas fa-trash-alt" style="color: black;"></i>
						</button>

			      </td>
			    </tr>
			    
			</c:forEach>
		  </tbody>
		</table>
		</div>

	</div>
	
	
<!-- Modal -->
<div id="deleteModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>
      <div class="modal-body">
        <p>Etes-vous sûr de vouloir supprimer cet employé ?</p>
        <input type="text" name="empName" readonly class="form-control-plaintext">
        
      </div>
      <div class="modal-footer">
      	<form action="deleteEmp" method="post">
      		<input type="text" id="empId" name="empId" value="" hidden="">
      		<input type="submit" value="Confirmer">
      	</form>
        <button type="button" class="btn btn-default" data-dismiss="modal">Annuler</button>
      </div>
    </div>

  </div>
</div>


<script>
//triggered when modal is about to be shown
$('#deleteModal').on('show.bs.modal', function(e) {

    //get data-id attribute of the clicked element
    var empId = $(e.relatedTarget).data('emp-id');
    var empName = $(e.relatedTarget).data('emp-name');

    //populate the textbox
    $(e.currentTarget).find('input[name="empId"]').val(empId);
    $(e.currentTarget).find('input[name="empName"]').val(empName);
});
</script>

</body>
</html>





<%-- 	<div class="wrapper">
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
</html> --%>