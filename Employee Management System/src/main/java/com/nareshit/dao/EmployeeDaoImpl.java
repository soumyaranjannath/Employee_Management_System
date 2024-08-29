package com.nareshit.dao;

import java.util.List;

import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;

import com.nareshit.model.Employee;
import static com.nareshit.dao.Constant.*;
public class EmployeeDaoImpl extends JdbcDaoSupport implements EmployeeDao{
	RowMapper<Employee> rowMapper;
	public void setRowMapper(RowMapper<Employee> rowMapper) {
		this.rowMapper=rowMapper;
	}
	@Override
	public List<Employee> getAllEmp() {
		List<Employee>emps=getJdbcTemplate().query(GET_ALL,rowMapper);
		return emps;
	}
	@Override
	public void addEmp(Employee emp) {
		getJdbcTemplate().update(INSERT,emp.getEmp_name(),emp.getEmp_address(),emp.getEmp_salary());
		
	}

}
