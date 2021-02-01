<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body {
	background-color: black;
	color: white;
}

.button {
	background-color: #1c87c9;
	border: none;
	color: white;
	padding: 20px 34px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 20px;
	margin: 4px 2px;
	cursor: pointer;
}
</style>
</head>
<body>
	<center>
		<h3>User Updation Form</h3>
		<c:url var="action" value="/editUser"></c:url>
		<form:form action="/BloodBankManagementSystem_SpringMVC/editUser"
			method="post" commandName="editForm">
			<table>
				<tr>
					<td>User Id:</td>
					<td><form:input path="userId" readonly="true" /></td>
				</tr>
				<tr>
					<td>First Name:</td>
					<td><form:input path="firstName" /><font color="red"><form:errors
								path="firstName" /></font></td>
				</tr>
				<tr>
					<td>Last Name:</td>
					<td><form:input path="lastName" /><font color="red"><form:errors
								path="lastName" /></font></td>
				</tr>
				<tr>
					<td>Blood Group:</td>
					<td><form:input path="bloodGroup" /><font color="red"><form:errors
								path="bloodGroup" /></font></td>
				</tr>
				<tr>
					<td>City:</td>
					<td><form:input path="city" /><font color="red"><form:errors
								path="city" /></font></td>
				</tr>
				<tr>
					<td>User Category:</td>
					<td>Donor<form:radiobutton path="userCategory" value="Donor" />Requestor<form:radiobutton
							path="userCategory" value="Requestor" /><font color="red"><form:errors
								path="userCategory"></form:errors></font>
					</td>
				</tr>
				<tr>
					<td><input type="submit" value="Edit User" /></td>
				</tr>

			</table>
		</form:form>
	</center>
</body>
</html>