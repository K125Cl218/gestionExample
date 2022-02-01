package fr.formation.inti.service;

import java.util.List;

import fr.formation.inti.entity.Department;

public interface IDepartmentService {
	List<Department> findAllDepartments();
	Department findById(Integer deptId);
}
