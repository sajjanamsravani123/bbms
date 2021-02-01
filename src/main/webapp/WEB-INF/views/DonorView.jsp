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
		<h3>CHECK STATUS</h3>
		<table border=1>
			<tr>
				<th>DonorID</th>
				<th>Time</th>
				<th>Glucose</th>
				<th>Note</th>
				<th>Status</th>
			</tr>
			<c:forEach items="${donList}" var="donor">
				<tr>
					<td>${donor.patientId}</td>
					<td>${donor.times}</td>
					<td>${donor.glucose}</td>
					<td>${donor.notes}</td>
					<td>${donor.status}</td>
				</tr>
			</c:forEach>
		</table>
	</center>
</body>
</html>