<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>BecomeATechPro.com</title>
<link href="images/logo.png" rel="icon">
</head>
</head>
<body>
<h1 align="center">Welcome to BecomeATechPro.com</h1>
<h1 align="center">Build Periodically- The programs we offer include DevOps Made Easy, Linux Made Easy, Python Made Easy, and Java Made Easy. We hold live classes, online, and we make the recordings available to our trainees. We provide flashcards, quizzes and projects for our trainees to get hands-on. We have also partnered with SourceTechTalents.com to complete projects for clients.</h1>
<hr>
<br>
	<h1><h3> Server Side IP Address </h3><br>

<% 
String ip = "";
InetAddress inetAddress = InetAddress.getLocalHost();
ip = inetAddress.getHostAddress();
out.println("Server Host Name :: "+inetAddress.getHostName()); 
%>
<br>
<%out.println("Server IP Address :: "+ip);%>
</h1>
<br>
<h1><h3> Client Side IP Address </h3><br>
<%out.print( "Client IP Address :: " + request.getRemoteAddr() ); %><br>
<%out.print( "Client Name Host :: "+ request.getRemoteHost() );%><br></h1>
<hr>
<div style="text-align: center;">
	<span>
		<img src="images/logo.png" alt="" width="100">
	</span>
	<span style="font-weight: bold;">
		BECOME A TECH PRO
		Telephone: +1 (705) 350-0801
		Website: www.BecomeATechPro.com
		Email: info@becomeatechpro.com
		<br>
		<a href="mailto:info@becomeatechpro.com">Mail to BecomeATechPro.com</a>
	</span>
</div>
<hr>
	<p> Service : <a href="services/employee/getEmployeeDetails">Get Employee Details </p>
<hr>
<hr>
<p align=center>BecomeATechPro.com, the Technology Training Center</p>
<p align=center><small>Copyrights 2022 by <a href="http://becomeatechpro.com/">BecomeATechPro.com</a> </small></p>

</body>
</html>
