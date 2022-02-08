package fr.formation.inti.dao;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Repository;

import fr.formation.inti.entity.Employee;

@Repository
public class EmployeeDao extends GenericDao<Employee, Integer> implements IEmployeeDao {

	private static final Log log = LogFactory.getLog(EmployeeDao.class);
	
	public EmployeeDao() {
		log.info("------------------------------- create new EmployeeDao");
	}
	
	public static EmployeeDao createInstance() {
		log.info("------------------------------- create new EmployeeDao by factory-method");
		return new EmployeeDao();
	}
	
	@PostConstruct
	private void postConstruct() {
		log.info("------------------------------- init dao : @postConstruct -------------------------------");
	}
	
	@PreDestroy
	private void preDestroy() {
		log.info("------------------------------- destroy dao : @preDestroy -------------------------------");
	}
}
