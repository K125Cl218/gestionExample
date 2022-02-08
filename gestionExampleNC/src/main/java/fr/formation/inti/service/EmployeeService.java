package fr.formation.inti.service;

import java.util.List;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fr.formation.inti.dao.IEmployeeDao;
import fr.formation.inti.entity.Employee;

@Service
@Transactional
public class EmployeeService implements IEmployeeService{
	private static final Log log = LogFactory.getLog(EmployeeService.class);
	
	@Autowired
//	@Qualifier("employeeDao") //on peut le rajouter si nécessaire
	private IEmployeeDao dao;
	
	@SuppressWarnings("unused")
	private String message;
	
	public EmployeeService() {
		log.info("------------------------------- new EmployeeService()");
	}
	
//	@Autowired //force l'injection par constructeur
	public EmployeeService(IEmployeeDao dao) {
		log.info("------------------------------- new EmployeeService(dao)");
		this.dao = dao;
	}
	
	@Override
	public Integer save(Employee employee) {
		return dao.save(employee);
	}

	@Override
	public void update(Employee employee) {
		dao.update(employee);
	}

	@Override
	public void delete(Integer id) {
		dao.delete(id);
	}

	@Override
	public Employee findById(Integer id) {
		return dao.findById(id);
	}

	@Override
	public List<Employee> findAll() {
//		dao.beginTransaction();
		List<Employee> employees = dao.findAll();
//		dao.commitTransaction();
		return employees;
	}

//	@Autowired //force l'injection par setter
	public void setDao(IEmployeeDao dao) {
		log.info("------------------------------- set dao");
		this.dao = dao;
	}
	public void setMessage(String message) {
		log.info("------------------------------- set message : " + message);
		this.message = message;
	}

	
	@PostConstruct
	private void postConstruct() {
		log.info("------------------------------- init service : @postConstruct -------------------------------");
	}
	
	@PreDestroy
	private void preDestroy() {
		log.info("------------------------------- destroy service : @preDestroy -------------------------------");
		if (dao != null) {
			log.info("------------------------------- @preDestroy close sessionFactory -------------------------------");
//			dao.close();
		}
	}
	
}
