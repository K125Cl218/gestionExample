package fr.formation.inti.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fr.formation.inti.entity.Department;
import fr.formation.inti.entity.Employee;
import fr.formation.inti.service.DepartmentService;
import fr.formation.inti.service.EmployeeService;
import fr.formation.inti.service.IDepartmentService;
import fr.formation.inti.service.IEmployeeService;

/**
 * Servlet implementation class EmployeeFormServlet
 */
@WebServlet("/empForm")
public class EmployeeFormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private IDepartmentService deptService;
	private IEmployeeService empService;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmployeeFormServlet() {
        super();
        deptService = new DepartmentService();
        empService = new EmployeeService();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Department> depts = deptService.findAllDepartments();
		request.setAttribute("depts", depts);
		
		List<Employee> managers = empService.findManagers();
		request.setAttribute("managers", managers);
		
		request.getRequestDispatcher("employeeForm.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
