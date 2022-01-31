package fr.formation.inti.service;

import java.util.List;

import fr.formation.inti.dao.EmployeeDao;
import fr.formation.inti.dao.IEmployeeDao;
import fr.formation.inti.entity.Employee;

public class EmployeeService implements IEmployeeService{
	private IEmployeeDao dao;

	public EmployeeService() {
		dao = new EmployeeDao();
	}
	
	@Override
	public List<Employee> findAllEmployees() {
		dao.beginTransaction();
		List<Employee> employees = dao.findAll();
		dao.commitTransaction();
		return employees;
	}

}
