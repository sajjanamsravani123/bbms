<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body {
	background-color: black;
}

.dropbtn {
	color: white;
	padding: 20px;
	font-size: 20px;
	border: none;
	background-color: black;
	font-family: fantasy;
}

.dropdown {
	position: relative;
	display: inline-block;
}

.dropdown-content {
	display: none;
	position: absolute;
}

.dropdown-content a {
	color: black;
	padding: 15px 30px;
	text-decoration: none;
	display: block;
	font-size: 15px;
	font-family: fantasy;
	min-width: 100px;
}

.dropdown-content a:hover {
	background-color: white;
	z-index: 1;
}

.dropdown:hover .dropdown-content {
	display: block;
	z-index: 1;
	background-color: white;
}

.dropdown:hover .dropbtn {
	background-color: white;
	z-index: 1;
	box-shadow: 3px 3px lightgrey;
	padding: 19px;
	transition: .9s ease;
	color: black
}

.container {
	margin-left: auto;
	margin-right: auto;
	position: relative;
	width: 50%;
	outline-style: outset;
	outline-color: white;
	outline-width: thick;
	margin-bottom: 30px;
	margin-top: 30px;
}

.image {
	display: block;
	width: 100%;
	height: auto;
	z-index: 0;
}

.overlay {
	position: absolute;
	bottom: 100%;
	left: 0;
	right: 0;
	background-color: darkgray;
	overflow: hidden;
	width: 100%;
	height: 0;
	transition: .7s ease;
	opacity: 0.5;
}

.container:hover .overlay {
	bottom: 0;
	height: 100%;
}

.text {
	color: black;
	font-size: 20px;
	font-family: fantasy;
	text-align: justify;
	position: absolute;
	overflow: hidden;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
}

footer {
	width: 100%;
	bottom: 0px;
	text-align: center;
	font-family: fantasy;
	font-size: 20px;
	top: 75%;
	padding-top: 20px;
	padding-bottom: 20px;
}

.back {
	margin-top: 50px;
	background-color: lightgrey;
	word-spacing: 30px;
	font-size: 20px;
	font-family: fantasy;
	color: white;
	padding: 20px 20px 20px 30px;
}

.back a {
	text-decoration: none;
	color: black;
	font-family: fantasy;
	font-size: 20px;
}

.comp {
	width: 100%;
	background-color: black;
	margin-top: 50px;
	padding: 20px 0px 20px 0px;
	font-family: fantasy;
	font-size: 20px;
	color: white;
	text-align: justify;
	word-spacing: 10px;
}
</style>
</head>
<body style="background-color: black;">
	<div class="dropdown" style="float: left";>
		<button class="dropbtn">BLOOD BANK MANAGEMENT SYSTEM</button>
	</div>
	<div class="dropdown" style="float: left";>
		<button class="dropbtn">newuser</button>
		<div class="dropdown-content">
			<a href="/BloodBankManagementSystem_SpringMVC/user">register</a>
		</div>
	</div>
	<div class="dropdown" style="float: left";>
		<button class="dropbtn">home</button>
		<div class="dropdown-content">
			<a href="/BloodBankManagementSystem_SpringMVC/check">Check
				Availability</a> <a href="/BloodBankManagementSystem_SpringMVC/request">Request
				For Blood</a> <a href="/BloodBankManagementSystem_SpringMVC/donor">Request
				For Donating</a> <a href="/BloodBankManagementSystem_SpringMVC/checkr">Request
				Check Status</a> <a href="/BloodBankManagementSystem_SpringMVC/checkd">Donate
				Check Status</a>
		</div>
	</div>
	<div class="dropdown" style="float: right";>
		<button class="dropbtn">admin</button>
		<div class="dropdown-content">
			<a href="/BloodBankManagementSystem_SpringMVC/admin">Login</a>
		</div>
	</div>
	<br />
	<br />
	<br />
	<%-- <center><img src="<c:url value='/images/OIP.jfif'/>"/></center> --%>
	<div class="container">
		<img src="<c:url value='/images/OIP.jfif'/>" class="image" />
		<div class="overlay">
			<div class="text">"For the Life of every living thing is in
				Blood"</div>
		</div>
	</div>
	<center>
		<div class="comp">
			<center>
				<h4>OUR AIM</h4>
			</center>
			<p>Blood Bank Management System(BBMS) is a web based application,
				where we serve the people based on their requests. Here people can
				get registered for requesting blood, donating blood and can check
				their status."For the Life of every living thing is in Blood". As
				above quote says-life is in blood, Many people are dying because of
				lose of blood during accidents and some other reasons. Our Moto is
				to supply blood for the people who need blood.Blood is a body fluid
				in humans and other animals that delivers necessary substances such
				as nutrients and oxygen to the cells and transports metabolic waste
				products away from those same cells. In vertebrates, it is composed
				of blood cells suspended in blood plasma.</p>
		</div>
	</center>

	<div class="back">
		<a href="#">aboutus</a> <a href="#">queries</a> <a href="#">help</a> <a
			href="#">contactus</a>
	</div>
</body>
</html>