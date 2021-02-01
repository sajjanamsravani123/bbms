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
		<h3>Donor Updation Form</h3>
		<c:url var="action" value="/editDonor"></c:url>
		<form:form action="/BloodBankManagementSystem_SpringMVC/editDonor"
			method="post" commandName="editForm2">
			<table>
				<tr>
					<td>Donor Id:</td>
					<td><form:input path="patientId" readonly="true" /><font
						color="red"><form:errors path="patientId" /></font></td>
				</tr>
				<tr>
					<td>Time:</td>
					<td><form:input path="times" readonly="true" /><font
						color="red"><form:errors path="times" /></font></td>
				</tr>
				<tr>
					<td>Glucose Level:</td>
					<td><form:input path="glucose" readonly="true" /><font
						color="red"><form:errors path="glucose" /></font></td>
				</tr>
				<tr>
					<td>Note:</td>
					<td><form:input path="notes" readonly="true" /><font
						color="red"><form:errors path="notes" /></font></td>
				</tr>
				<tr>
					<td>Status:</td>
					<td>Accept<form:radiobutton path="status" value="Accept" />Reject<form:radiobutton
							path="status" value="Reject" />
					</td>
				</tr>
				<tr>
					<td><input type="submit" value="SUBMIT" /></td>
				</tr>
			</table>
		</form:form>
	</center>
</body>
</html>