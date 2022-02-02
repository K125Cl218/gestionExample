package fr.formation.inti.controller;

import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

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
 * Servlet implementation class AddEmployeeServlet
 */
@WebServlet("/addEmp")
public class AddEmployeeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private IDepartmentService deptService;
	private IEmployeeService empService;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddEmployeeServlet() {
		super();
		deptService = new DepartmentService();
		empService = new EmployeeService();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.sendRedirect("home");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");

		String startDateString = request.getParameter("startDate");
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		Calendar c = Calendar.getInstance();
		Date startDate = null;
		if (startDateString != null && !startDateString.equals("")) {
			try {
				startDate = df.parse(startDateString);
			} catch (ParseException e) {
				e.printStackTrace();
			}
			c.setTime(startDate);
			c.add(Calendar.DATE, 1);
			startDate = c.getTime();
		}

		Integer deptId = Integer.valueOf(request.getParameter("deptId"));
		Department dept = deptService.findById(deptId);
		
		String title = request.getParameter("title");

		Integer managerId = Integer.valueOf(request.getParameter("managerId"));
		Employee manager = empService.findById(managerId);
		
		Integer assignedBranchId = Integer.valueOf(request.getParameter("assignedBranch"));
		
		String endDateString = request.getParameter("endDate");
		Date endDate = null;
		if (endDateString != null && !endDateString.equals("")) {
			try {
				endDate = df.parse(endDateString);
			} catch (ParseException e) {
				e.printStackTrace();
			}
			c.setTime(endDate);
			c.add(Calendar.DATE, 1);
			endDate = c.getTime();
		}
		
		Employee empAdded = new Employee(dept, manager, endDate, firstName, lastName, startDate, title, assignedBranchId, null);
		
		empService.addEmployee(empAdded);
		
		response.sendRedirect("employeeList");

	}

}
