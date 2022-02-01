package fr.formation.inti.service;

import java.util.List;

import fr.formation.inti.dao.EmployeeDao;
import fr.formation.inti.dao.IEmployeeDao;
import fr.formation.inti.entity.Employee;

public class EmployeeService implements IEmployeeService {
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

	@Override
	public void deleteEmployee(Employee emp) {
		dao.beginTransaction();
		Integer id = emp.getEmpId();
		dao.delete(id);
		dao.commitTransaction();
	}

	@Override
	public void addEmployee(Employee emp) {
		dao.beginTransaction();
		dao.save(emp);
		dao.commitTransaction();
	}

	@Override
	public void EditEmployee(Employee emp) {
		dao.beginTransaction();
		dao.update(emp);
		dao.commitTransaction();
	}

	@Override
	public Employee findById(Integer empId) {
		dao.beginTransaction();
		Employee emp = dao.findById(empId);
		dao.commitTransaction();
		return emp;
	}

	@Override
	public List<Employee> findManagers() {
		dao.beginTransaction();
		List<Employee> managers = dao.findManagers();
		dao.commitTransaction();
		return managers;
	}

}
