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
		<h3>ADMIN LOGIN</h3>
		<form:form action="/BloodBankManagementSystem_SpringMVC/logincheck"
			method="post" commandName="adminForm" novalidate="novalidate">
			<table>
				<tr>
					<td>UserName:</td>
					<td><form:input path="userName" /><font color="red"><form:errors
								path="userName" /></font></td>
				</tr>
				<tr>
					<td>PassWord:</td>
					<td><form:input type="password" path="userPassword" /><font
						color="red"><form:errors path="userPassword" /></font></td>
				</tr>
				<tr>
					<td><input type="submit" value="SUBMIT" /></td>
				</tr>
			</table>
		</form:form>
	</center>
</body>
</html>