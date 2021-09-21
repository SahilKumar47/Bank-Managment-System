<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>add new Customer</title>
<style type="text/css">
.error {
	color: #EE1313;
}
</style>
</head>
<body>
	<form:form action="addCustomer" modelAttribute="customerObject">
		<form:hidden path="customerId" value="0" />
		<br />
	Enter Name: <form:input path="customerName" />
		<form:errors path="customerName" class="error" />
		<br />
	Enter Email: <form:input path="customerEmail" />
		<form:errors path="customerEmail" class="error" />
		<br />
	Enter Address: <form:input path="customerAddress" />
		<form:errors path="customerAddress" class="error" />
		<br /> 
	Enter Phone<form:input path="customerPhone" />
		<form:errors path="customerPhone" class="error" />
		<br />
	Enter Balance: <form:input path="accountBalance" />
		<form:errors path="accountBalance" class="error" />
		<br />
		<input type="submit">
	</form:form>
</body>
</html>