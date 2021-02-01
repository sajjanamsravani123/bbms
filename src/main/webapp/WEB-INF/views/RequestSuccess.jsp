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
		<h3>Request Success</h3>

		<table border="1">
			<tr>
				<th>RequestId</th>
				<th>PatientName</th>
				<th>BloodGroup</th>
				<th>City</th>
				<th>DoctorName</th>
				<th>HospitalNameAndAddress</th>
				<th>Date</th>
				<th>ContactName</th>
				<th>ContactNumber</th>
				<th>Email</th>
				<th>Message</th>
				<th>Action</th>
			</tr>
			<c:forEach items="${requestList}" var="request">
				<tr>
					<td>${request.reqId}</td>
					<td>${request.patientName}</td>
					<td>${request.requiredBlood}</td>
					<td>${request.city}</td>
					<td>${request.doctorName}</td>
					<td>${request.hospitalNameAddress}</td>
					<td>${request.dates}</td>
					<td>${request.contactName}</td>
					<td>${request.contactNumber}</td>
					<td>${request.emailId}</td>
					<td>${request.message}</td>
					<td><a href="<c:url value='/fetchByIds/${request.reqId}'/>">
							<input type="submit" value="UPDATE STATUS" />
					</a></td>
					<!-- <td>
Accept<input type="radio" name="status" value="Accept">
Reject<input type="radio" name="status" value="Reject"></td> -->
				</tr>
			</c:forEach>

		</table>
	</center>
</body>
</html>