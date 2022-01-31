package fr.formation.inti.service;

import java.util.List;

import fr.formation.inti.entity.Employee;

public interface IEmployeeService {
	List<Employee> findAllEmployees();
	void deleteEmployee(Employee emp);
	void addEmployee(Employee emp);
	void EditEmployee(Employee emp);
	Employee findById(Integer empId);
}
