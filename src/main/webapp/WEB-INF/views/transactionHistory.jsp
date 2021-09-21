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
				<th>ID</th>
				<th>From Account</th>
				<th>To Account</th>
				<th>Amount</th>
				<th>Type</th>
				<th>Status</th>
			</tr>
		</thead>
		<tbody>

			<c:forEach var="transactionHistory" items="${TransactionHistory}">
				<tr>
					<td>${transactionHistory.transactionId}</td>
					<td>${transactionHistory.fromAccount}</td>
					<c:if test="${empty transactionHistory.toAccount}">
						<td>Self</td>
					</c:if>
					<c:if test="${not empty transactionHistory.toAccount}">
						<td>${transactionHistory.toAccount}</td>
					</c:if>
					<td>${transactionHistory.amount}</td>
					<td>${transactionHistory.transactionType}</td>
					<td>${transactionHistory.status}</td>
				</tr>
			</c:forEach>

		</tbody>
	</table>
	<a href="/bankapp/customer/allCustomers">View All Customers</a><br/>
</body>
</html>