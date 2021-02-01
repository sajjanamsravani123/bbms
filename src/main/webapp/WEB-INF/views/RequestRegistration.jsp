<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
		<h3>Request Registration Form</h3>
		<form:form action="/BloodBankManagementSystem_SpringMVC/saveRequest"
			method="post" commandName="requestForm" novalidate="novalidate">
			<table>
				<tr>
					<td>Requester Id:</td>
					<td><form:input path="reqId" /><font color="red"><form:errors
								path="reqId" /></font></td>
				</tr>
				<tr>
					<td>Patient Name:</td>
					<td><form:input path="patientName" /><font color="red"><form:errors
								path="patientName" /></font></td>
				</tr>
				<tr>
					<td>Required Blood Group:</td>
					<td><form:input path="requiredBlood" /><font color="red"><form:errors
								path="requiredBlood" /></font></td>
				</tr>
				<tr>
					<td>City:</td>
					<td><form:input path="city" /><font color="red"><form:errors
								path="city" /></font></td>
				</tr>
				<tr>
					<td>Doctor Name:</td>
					<td><form:input path="doctorName" /><font color="red"><form:errors
								path="doctorName" /></font></td>
				</tr>
				<tr>
					<td>Hospital Name And Address:</td>
					<td><form:input path="hospitalNameAddress" /><font color="red"><form:errors
								path="hospitalNameAddress" /></font></td>
				</tr>
				<tr>
					<td>Date:</td>
					<td><form:input type="date" path="dates" /><font color="red"><form:errors
								path="dates" /></font></td>
				</tr>
				<tr>
					<td>Contact Name:</td>
					<td><form:input path="contactName" /><font color="red"><form:errors
								path="contactName" /></font></td>
				</tr>
				<tr>
					<td>Contact Number:</td>
					<td><form:input path="contactNumber" /><font color="red"><form:errors
								path="contactNumber" /></font></td>
				</tr>
				<tr>
					<td>Email Id:</td>
					<td><form:input path="emailId" /><font color="red"><form:errors
								path="emailId" /></font></td>
				</tr>
				<tr>
					<td>Message:</td>
					<td><form:input path="message" /><font color="red"><form:errors
								path="message" /></font></td>
				</tr>
				<tr>
					<td><input type="submit" value="SUBMIT" /></td>
				</tr>
			</table>



		</form:form>
	</center>
</body>
</html>