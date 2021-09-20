<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Transfer</title>
</head>
<body>
	<form:form action="transfer" modelAttribute="transferObject">
	From Account: <form:input path="fromAccountId" />
		<br />
	To Account: <form:input path="toAccountId" />
		<br />
	Enter Amount: <form:input path="transferAmount" />
		<br />
		<input type="submit">
	</form:form>
</body>
</html>