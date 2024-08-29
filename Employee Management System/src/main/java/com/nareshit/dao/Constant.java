package com.nareshit.dao;

public class Constant {
	public static final String GET_ALL="select * from employee";
	public static final String INSERT="insert into employee(emp_name,emp_address,emp_salary) values(?,?,?)";
	public static final String DELETE="delete from employee where emp_id=?";
	public static final String GET_ONE="select * from employee where emp_id=?";
	public static final String UPDATE="update employee set emp_name=?,emp_address=?,emp_salary=? where emp_id=?";
}
