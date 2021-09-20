<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>spring boot jsp crud application</title>
</head>
<style>
table {
	font-family: arial, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

td, th {
	border: 1px solid #dddddd;
	text-align: left;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: #dddddd;
}
</style>
<body>
	<table border="1">
		<thead>
			<tr>
				<th>Username</th>
				<th>Password</th>
				<th>Email</th>
				<th>Phone</th>
				<th>Profile</th>
				<th>Salary</th>
			</tr>
		</thead>
		<tbody>

			<c:forEach var="user" items="${Users}">
				<tr>
					<td>${user.username}</td>
					<td>${user.password}</td>
					<td>${user.email}</td>
					<td>${user.phone}</td>
					<td>${user.profile}</td>
					<td>${user.salary}</td>
					<td><a
						href="deleteUser?id=<c:out value="${user.userId}"/>">delete</a></td>
					<td><a
						href="updateUser?id=<c:out value="${user.userId}"/>">update</a></td>
				</tr>
			</c:forEach>

		</tbody>
	</table>
	<a href="addUser">New User</a>
</body>
</html>