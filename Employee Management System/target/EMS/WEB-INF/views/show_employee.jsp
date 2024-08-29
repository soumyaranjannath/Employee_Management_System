<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page import="java.util.List"%>
<%@ page import="com.nareshit.model.Employee"%>

<html>
<head>
<title>Show Employee Details</title>
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet" />
</head>
<body>
	<h1>Employee Details</h1>
	<table>
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Address</th>
			<th>Salary</th>
		</tr>
		<%
		List<Employee> employees = (List<Employee>) request.getAttribute("emps");
		%>
		<%
		if (!employees.isEmpty()&&employees!=null) {
		%>
		<%
		for (Employee employee : employees) {
		%>

		<tr>
			<td><%=employee.getEmp_id()%></td>
			<td><%=employee.getEmp_name()%></td>
			<td><%=employee.getEmp_address()%></td>
			<td><%=employee.getEmp_salary()%></td>
			<td>
				<!-- Edit Form --> <form:form action="employee_action" method="post"
					style="display:inline;">
					<input type="hidden" name="emp_id"
						value="<%=employee.getEmp_id()%>">
					<input type="hidden" name="action" value="edit">
					<input type="submit" value="Edit">
				</form:form> <!-- Delete Form --> <form:form action="employee_action"
					method="post" style="display:inline;">
					<input type="hidden" name="emp_id"
						value="<%=employee.getEmp_id()%>">
					<input type="hidden" name="action" value="delete">
					<input type="submit" value="Delete"
						onclick="return confirm('Are you sure you want to delete this employee?');">
				</form:form>
			</td>

		</tr>

		<%
		}
		%>
		<%
		} else {
		%>
		<tr>
			<td colspan="4">No employee details available.</td>
		</tr>
		<%
		}
		%>
	</table>
	<!-- Add Employee Button -->
	<!-- Button to Open Modal -->
	<button type="button" class="btn btn-success" data-toggle="modal"
		data-target="#addEmployeeModal">Add Employee</button>

	<!-- Modal Structure -->
	<div class="modal fade" id="addEmployeeModal" tabindex="-1"
		role="dialog" aria-labelledby="addEmployeeModalLabel"
		aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="addEmployeeModalLabel">Add New
						Employee</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<!-- Employee Form Inside Modal -->
					<form:form action="saveEmployee" method="POST"
						modelAttribute="employee">
						<div class="form-group">
							<label for="emp_name">Name</label>
							<form:input path="emp_name" class="form-control" id="emp_name" />
							<form:errors path="emp_name" cssClass="error"
								style="color: red; font-size: 12px;" />
						</div>
						<div class="form-group">
							<label for="emp_address">Address</label>
							<form:input path="emp_address" class="form-control"
								id="emp_address" />
							<form:errors path="emp_address" cssClass="error"
								style="color: red; font-size: 12px;" />
						</div>
						<div class="form-group">
							<label for="emp_salary">Salary</label>
							<form:input path="emp_salary" class="form-control"
								id="emp_salary" />
							<form:errors path="emp_salary" cssClass="error"
								style="color: red; font-size: 12px;" />
						</div>
						<button type="submit" class="btn btn-primary">Add
							Employee</button>
					</form:form>
					<%
					String errorMessage = (String) request.getAttribute("errorMessage");
					if (errorMessage != null && !errorMessage.isEmpty()) {
					%>
					<p style="color: red;"><%=errorMessage%></p>
					<%
					}
					%>
				</div>
			</div>
		</div>
	</div>

	<!-- Include Bootstrap JS and dependencies -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
