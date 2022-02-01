package fr.formation.inti.service;

import java.util.List;

import fr.formation.inti.dao.DepartmentDao;
import fr.formation.inti.dao.IDepartmentDao;
import fr.formation.inti.entity.Department;

public class DepartmentService implements IDepartmentService{
	private IDepartmentDao dao;
	
	public DepartmentService() {
		dao = new DepartmentDao();
	}
	
	@Override
	public List<Department> findAllDepartments() {
		dao.beginTransaction();
		List<Department> depts = dao.findAll();
		dao.commitTransaction();
		return depts;
	}

	@Override
	public Department findById(Integer deptId) {
		dao.beginTransaction();
		Department dept = dao.findById(deptId);
		dao.commitTransaction();
		return dept;
	}

}
