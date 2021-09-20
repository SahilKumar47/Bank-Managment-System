<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update User</title>
</head>
<body>
	<form:form action="addUser" modelAttribute="user">
		<form:hidden path="userId" />
		<br />
	Enter Name: <form:input path="username" readonly="true" />
		<br />
	Enter Password: <form:input path="password" readonly="true" />
		<br />
	Enter Email: <form:input path="email" />
		<br />
	Enter Phone<form:input path="phone" readonly="true" />
		<br />
	Enter Profile: <form:input path="profile" readonly="true" />
		<br />
	Enter Salary: <form:input path="salary" />
		<br />
		<input type="submit">
	</form:form>
</body>
</html>