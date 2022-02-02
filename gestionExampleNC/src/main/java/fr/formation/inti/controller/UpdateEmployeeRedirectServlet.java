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
 * Servlet implementation class UpdateEmployeeServlet
 */
@WebServlet("/updateRedirect")
public class UpdateEmployeeRedirectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private IEmployeeService empService;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateEmployeeRedirectServlet() {
        super();
        empService = new EmployeeService();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect("home");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Integer empId = Integer.valueOf(request.getParameter("empId"));
		Employee emp = empService.findById(empId);
		request.setAttribute("emp", emp);
		request.getRequestDispatcher("empForm").forward(request, response);
	}

}
