package com.nareshit.dao;

import java.util.List;

import com.nareshit.model.Employee;

public interface EmployeeDao {
	List<Employee> getAllEmp();
	void addEmp(Employee emp);
	
}
