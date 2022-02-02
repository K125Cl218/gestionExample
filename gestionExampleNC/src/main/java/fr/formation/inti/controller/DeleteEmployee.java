package fr.formation.inti.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fr.formation.inti.entity.Employee;
import fr.formation.inti.service.EmployeeService;
import fr.formation.inti.service.IEmployeeService;

/**
 * Servlet implementation class DeleteEmployee
 */
@WebServlet("/deleteEmp")
public class DeleteEmployee extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteEmployee() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		IEmployeeService service = new EmployeeService();
//		String empIdString = request.getParameter("empId");
//		Integer empId = Integer.valueOf(empIdString);
//		Employee empToDel = service.findById(empId);
//		service.deleteEmployee(empToDel);
//		response.sendRedirect("employeeList");
		response.sendRedirect("home");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		doGet(request, response);
		IEmployeeService service = new EmployeeService();
		String empIdString = request.getParameter("empId");
		Integer empId = Integer.valueOf(empIdString);
		Employee empToDel = service.findById(empId);
		service.deleteEmployee(empToDel);
		response.sendRedirect("employeeList");
	}

}
