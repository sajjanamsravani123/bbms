<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
function deleteUser(userId)
{
	if(confirm("Do you want to delete this User?"))
		{
		var url='delete/'+userId;
		window.location.href=url;
		}
	}
</script>
<style>
body{
    background-color:black;
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
<body><center>
<h3>User Success</h3>
<table border="1">
<tr>
<th>UserId</th>
<th>FirstName</th>
<th>LastName</th>
<th>BloodGroup</th>
<th>City</th>
<th>UserCategory</th>
<th>Action</th>
</tr>
<c:forEach items="${userList}" var="user">
<tr>
<td>${user.userId}</td>
<td>${user.firstName}</td>
<td>${user.lastName}</td>
<td>${user.bloodGroup}</td>
<td>${user.city}</td>
<td>${user.userCategory}</td>
<td><a href="<c:url value='/fetchById/${user.userId}'/>"> 
<img src="<c:url value='/images/vcard_edit.png'/>" title="Edit User"/>
</a> <img src="<c:url value='/images/vcard_delete.png'/>"
title="Delete User" onclick="javascript:deleteUser(${user.userId})" /></td>
</tr>
</c:forEach>
</table>
<a href="/BloodBankManagementSystem_SpringMVC/home" class="button">HOME</a>
</center>
</body>
</html>