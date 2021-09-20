<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New User</title>
</head>
<body>
	<form:form action="addUser" modelAttribute="user">
		<form:hidden path="userId" value="0" />
		<br />
	Enter Name: <form:input path="username" />
		<br />
	Enter Password: <form:input path="password" />
		<br />
	Enter Email: <form:input path="email" />
		<br />
	Enter Phone<form:input path="phone" />
		<br />
	Enter Profile: <form:input path="profile" />
		<br />
	Enter Salary: <form:input path="salary" />
		<br />
		<input type="submit">
	</form:form>
</body>
</html>