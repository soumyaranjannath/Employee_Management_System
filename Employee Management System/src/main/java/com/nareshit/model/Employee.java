package com.nareshit.model;

import jakarta.validation.constraints.DecimalMin;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Positive;
import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Employee {
	private Long emp_id;
	@NotEmpty(message="Employee name cannot ne empty")
	@Size(min=2, max=10, message="Employee name must be 2  to 10 character long")
	private String emp_name;
	
	@NotEmpty(message="Employee address cannot ne empty")
	@Size(min=2, max=10, message="Employee name must be 3  to 40 character long")
	private String emp_address;
	
	@NotNull(message="Employee salary cannot ne empty")
	
	@DecimalMin(value = "0.0", inclusive = true, message = "Employee salary must be zero or positive")
	private Double emp_salary;
}
