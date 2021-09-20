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
				<th>Name</th>
				<th>Email</th>
				<th>Address</th>
				<th>Phone</th>
				<th>Account No</th>
				<th>Account Balance</th>
				<th>Transaction History</th>
			</tr>
		</thead>
		<tbody>

			<c:forEach var="customer" items="${Customers}">
				<tr>
					<td>${customer.customerName}</td>
					<td>${customer.customerEmail}</td>
					<td>${customer.customerAddress}</td>
					<td>${customer.customerPhone}</td>
					<td>${customer.account.accountId}</td>
					<td>${customer.account.accountBalance}</td>
					<td><a
						href="viewTransaction?id=<c:out value="${customer.account.accountId}"/>">View Transaction</a></td>
					<td><a
						href="deleteCustomer?id=<c:out value="${customer.customerId}"/>">delete</a></td>
					<td><a
						href="updateCustomer?id=<c:out value="${customer.customerId}"/>">update</a></td>
				</tr>
			</c:forEach>

		</tbody>
	</table>
	<h4><a href="addCustomer">Add New Customer</a><br/></h4>
	<h4><a href="allUsers">Show Users</a><br/></h4>
	<h4><a href="addUser">Add New User</a><br/></h4>
	<h4><a href="withdraw">Withdraw</a><br/></h4>
	<h4><a href="deposit">Deposit</a><br/></h4>
	<h4><a href="transfer">Transfer</a><br/></h4>
	<h4><a href="transactionHistory">View All Transaction History</a><br/></h4>
	<h4><a href="pendingTransactions">Pending Transactions</a><br/></h4>
</body>
</html>