package com.nareshit.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.nareshit.model.Employee;

public class EmployeeRowMapper implements RowMapper<Employee>{

	@Override
	public Employee mapRow(ResultSet rs, int rowNum) throws SQLException {
		Employee emp=new Employee();
		emp.setEmp_id(rs.getLong("emp_id"));
		emp.setEmp_name(rs.getString("emp_name"));
		emp.setEmp_address(rs.getString("emp_address"));
		emp.setEmp_salary(rs.getDouble("emp_salary"));
		return emp;
	}

}
