package com.nareshit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nareshit.dao.EmployeeDao;
import com.nareshit.model.Employee;

import jakarta.validation.Valid;

@Controller
public class EmployeeController {
	@Autowired
	EmployeeDao emp;
	@RequestMapping("/show_employee")
	public String displayEmployee(Model model) {
		List<Employee> emps=emp.getAllEmp();
		model.addAttribute("emps",emps);
		model.addAttribute("employee",new Employee());
		return "show_employee";
	}
	

	@RequestMapping("/saveEmployee")
	public String saveEmployee(Model model, @ModelAttribute ("employee") @Valid  Employee emp1, BindingResult result) {
		if(result.hasErrors()) {
			model.addAttribute("errorMessage","Employee data is invalid or missing.");
			List<Employee> emps = emp.getAllEmp();
            model.addAttribute("emps", emps); // re-add the employee list
			return "show_employee";
		}
		emp.addEmp(emp1);
		System.out.println(emp1);
		return "redirect:/show_employee";
	}
	
	
}
