package fr.formation.inti.service;

import java.util.List;

import fr.formation.inti.entity.Employee;

public interface IEmployeeService {
	List<Employee> findAllEmployees();
}
