package fr.formation.inti.dao;

import java.util.List;

import org.hibernate.query.Query;

import fr.formation.inti.entity.Employee;

public class EmployeeDao extends GenericDao<Employee, Integer> implements IEmployeeDao {

	@Override
	public List<Employee> findManagers() {
		Query<Employee> query = session.createQuery(
				"from " + Employee.class.getName() + " e where e.title != 'Teller'", Employee.class);
		return query.getResultList();
	}

}
