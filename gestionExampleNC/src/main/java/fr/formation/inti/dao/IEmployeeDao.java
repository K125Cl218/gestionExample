package fr.formation.inti.dao;

import java.util.List;

import fr.formation.inti.entity.Employee;

public interface IEmployeeDao extends IGenericDao<Employee, Integer>{
	List<Employee> findManagers();
}
