<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New User</title>
<style type="text/css">
.error {
	color: #EE1313;
}
</style>
</head>
<body>
	<form:form action="addUser" modelAttribute="user">
		<form:hidden path="userId" value="0" />
		<br />
	Enter Name: <form:input path="username" />
		<form:errors path="username" class="error" />
		<br />
	Enter Password: <form:input path="password" />
		<form:errors path="password" class="error" />
		<br />
	Enter Email: <form:input path="email" />
		<form:errors path="email" class="error" />
		<br />
	Enter Phone<form:input path="phone" />
		<form:errors path="phone" class="error" />
		<br />
	Enter Profile: <form:input path="profile" />
		<form:errors path="profile" class="error" />
		<br />
	Enter Salary: <form:input path="salary" />
		<form:errors path="salary" class="error" />
		<br />
		<input type="submit">
	</form:form>
</body>
</html>