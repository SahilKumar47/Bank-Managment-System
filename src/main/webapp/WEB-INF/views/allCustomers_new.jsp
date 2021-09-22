<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU"
	crossorigin="anonymous" />
<style>
.my-color {
	color: #5777ba;
}

.hm-gradient {
	background-image: linear-gradient(to top, #f3e7e9 0%, #e3eeff 99%, #e3eeff 100%);
}

.darken-grey-text {
	color: #2e2e2e;
}

.input-group.md-form.form-sm.form-2 input {
	border: 1px solid #bdbdbd;
	border-top-left-radius: 0.25rem;
	border-bottom-left-radius: 0.25rem;
}

.input-group.md-form.form-sm.form-2 input.purple-border {
	border: 1px solid #9e9e9e;
}

.input-group.md-form.form-sm.form-2
  input[type="text"]:focus:not ([readonly] ).purple-border {
	border: 1px solid #ba68c8;
	box-shadow: none;
}

.form-2 .input-group-addon {
	border: 1px solid #ba68c8;
}

.danger-text {
	color: #ff3547;
}

.success-text {
	color: #00c851;
}

.table-bordered.red-border, .table-bordered.red-border th,
	.table-bordered.red-border td {
	border: 1px solid #ff3547 !important;
}

.table.table-bordered th {
	text-align: center;
}

#-------------------------


a {
	color: #5777ba;
	text-decoration: none;
}

a:hover {
	color: #7b94c9;
	text-decoration: none;
}

#header {
	transition: all 0.5s;
	z-index: 997;
	transition: all 0.5s;
	padding: 15px 0;
	background: rgba(255, 255, 255, 0.95);
}

#header.header-transparent {
	background: transparent;
}

#header.header-scrolled {
	background: rgba(255, 255, 255, 0.95);
	box-shadow: 0px 2px 15px rgba(0, 0, 0, 0.1);
}

#header .logo h1 {
	font-size: 30px;
	margin: 0;
	line-height: 1;
	font-weight: 400;
	letter-spacing: 2px;
}

#header .logo h1 a, #header .logo h1 a:hover {
	color: #5777ba;
	text-decoration: none;
}

#header .logo img {
	margin: 0;
	max-height: 40px;
}

/*--------------------------------------------------------------
# Navigation Menu
--------------------------------------------------------------*/
/**
* Desktop Navigation 
*/
.navbar {
	padding: 0;
}

.navbar a {
	text-decoration: none;
}

.navbar ul {
	margin: 0;
	padding: 0;
	display: flex;
	list-style: none;
	align-items: center;
}

.navbar li {
	position: relative;
}

.navbar a, .navbar a:focus {
	display: flex;
	align-items: center;
	justify-content: space-between;
	padding: 10px 0 10px 30px;
	font-family: "Raleway", sans-serif;
	font-size: 15px;
	color: #47536e;
	white-space: nowrap;
	transition: 0.3s;
}

.navbar a i, .navbar a:focus i {
	font-size: 12px;
	line-height: 0;
	margin-left: 5px;
}

.navbar a:hover, .navbar .active, .navbar .active:focus, .navbar li:hover>a
	{
	color: #5777ba;
}

.navbar .getstarted, .navbar .getstarted:focus {
	background: #5777ba;
	color: #fff;
	padding: 12px 25px;
	margin-left: 30px;
	color: #fff;
	line-height: 1;
	border-radius: 50px;
}

.navbar .getstarted:hover, .navbar .getstarted:focus:hover {
	background: #748ec6;
	color: #fff;
}

.navbar .dropdown ul {
	display: block;
	position: absolute;
	left: 14px;
	top: calc(100% + 30px);
	margin: 0;
	padding: 10px 0;
	z-index: 99;
	opacity: 0;
	visibility: hidden;
	background: #fff;
	box-shadow: 0px 0px 30px rgba(127, 137, 161, 0.25);
	transition: 0.3s;
	border-radius: 4px;
}

.navbar .dropdown ul li {
	min-width: 200px;
}

.navbar .dropdown ul a {
	padding: 10px 20px;
	font-size: 15px;
	text-transform: none;
	font-weight: 600;
}

.navbar .dropdown ul a i {
	font-size: 12px;
}

.navbar .dropdown ul a:hover, .navbar .dropdown ul .active:hover,
	.navbar .dropdown ul li:hover>a {
	color: #5777ba;
}

.navbar .dropdown:hover>ul {
	opacity: 1;
	top: 100%;
	visibility: visible;
}

.navbar .dropdown .dropdown ul {
	top: 0;
	left: calc(100% - 30px);
	visibility: hidden;
}

.navbar .dropdown .dropdown:hover>ul {
	opacity: 1;
	top: 0;
	left: 100%;
	visibility: visible;
}

@media ( max-width : 1366px) {
	.navbar .dropdown .dropdown ul {
		left: -90%;
	}
	.navbar .dropdown .dropdown:hover>ul {
		left: -100%;
	}
}

/**
* Mobile Navigation 
*/
.mobile-nav-toggle {
	color: #47536e;
	font-size: 28px;
	cursor: pointer;
	display: none;
	line-height: 0;
	transition: 0.5s;
}

.mobile-nav-toggle.bi-x {
	color: #fff;
}

@media ( max-width : 991px) {
	.mobile-nav-toggle {
		display: block;
	}
	.navbar ul {
		display: none;
	}
}

.navbar-mobile {
	position: fixed;
	overflow: hidden;
	top: 0;
	right: 0;
	left: 0;
	bottom: 0;
	background: rgba(51, 60, 79, 0.9);
	transition: 0.3s;
	z-index: 999;
}

.navbar-mobile .mobile-nav-toggle {
	position: absolute;
	top: 15px;
	right: 15px;
}

.navbar-mobile ul {
	display: block;
	position: absolute;
	top: 55px;
	right: 15px;
	bottom: 15px;
	left: 15px;
	padding: 10px 0;
	border-radius: 6px;
	background-color: #fff;
	overflow-y: auto;
	transition: 0.3s;
}

.navbar-mobile a, .navbar-mobile a:focus {
	padding: 10px 20px;
	font-size: 15px;
	color: #47536e;
}

.navbar-mobile a:hover, .navbar-mobile .active, .navbar-mobile li:hover>a
	{
	color: #5777ba;
}

.navbar-mobile .getstarted, .navbar-mobile .getstarted:focus {
	margin: 15px;
}

.navbar-mobile .dropdown ul {
	position: static;
	display: none;
	margin: 10px 20px;
	padding: 10px 0;
	z-index: 99;
	opacity: 1;
	visibility: visible;
	background: #fff;
	box-shadow: 0px 0px 30px rgba(127, 137, 161, 0.25);
}

.navbar-mobile .dropdown ul li {
	min-width: 200px;
}

.navbar-mobile .dropdown ul a {
	padding: 10px 20px;
}

.navbar-mobile .dropdown ul a i {
	font-size: 12px;
}

.navbar-mobile .dropdown ul a:hover, .navbar-mobile .dropdown ul .active:hover,
	.navbar-mobile .dropdown ul li:hover>a {
	color: #5777ba;
}

.navbar-mobile .dropdown>.dropdown-active {
	display: block;
}
</style>
</head>
<body class="hm-gradient">
	<header id="header" class="fixed-top header-transparent">
		<div
			class="container d-flex align-items-center justify-content-between">
			<div class="logo">
				<h1>
					<a href="index.html">MyBank App</a>
				</h1>
			</div>
			<nav id="navbar" class="navbar">
				<ul>
					<li><a class="nav-link scrollto" href="/bankapp/home">Home</a></li>
					<li><a class="nav-link scrollto active" href="/bankapp/customer/allCustomers">All
							Customers</a></li>
					<li><a class="nav-link scrollto" href="/bankapp/customer/addCustomer">New
							Customer</a></li>
					<li><a class="nav-link scrollto" href="/bankapp/user/allUsers">All
							Users</a></li>
					<c:if test="${profile == 'ROLE_ADMIN'}">
						<li><a class="nav-link scrollto" href="/bankapp/user/addUser">New
								User</a></li>
					</c:if>
					<li class="dropdown"><a href="#"><span>Banking </span> <i
							class="bi bi-chevron-down"></i></a>
						<ul>
							<li><a href="/bankapp/transaction/withdraw">Withdraw</a></li>
							<li><a href="/bankapp/transaction/deposit">Deposit</a></li>
							<li><a href="/bankapp/transaction/transfer">Fund Transfer</a></li>
						</ul></li>
					<li class="dropdown"><a href="#"><span>Transactions
						</span> <i class="bi bi-chevron-down"></i></a>
						<ul>
							<li><a href="/bankapp/transaction/transactionHistory">All
									Transactions</a></li>
							<li><a href="/bankapp/transaction/pendingTransactions">Pending
									Transactions</a></li>
						</ul></li>
					<li><a class="getstarted scrollto" href="/bankapp/logout">
							Logout</a></li>
				</ul>
				<i class="bi bi-list mobile-nav-toggle"></i>
			</nav>
			<!-- .navbar -->
		</div>
	</header>  
	<main>
		<div class="container" style="margin-top: 5rem;">
			<div class="card mb-4">
				<div class="card-body">
					<!-- Grid row -->
					<div class="row"> 
						<!-- Grid column -->
						<div class="col-md-12">
							<h2
								class="pt-3 pb-4 text-center font-bold font-up deep-purple-text my-color">Customers</h2>

						</div>
						<!-- Grid column -->
					</div>
					<!-- Grid row -->
					<!--Table-->
					<table class="table table-striped">
						<!--Table head-->
						<thead>
							<tr>
								<th>Account No</th>
								<th>Name</th>
								<th>Email</th>
								<th>Address</th>
								<th>Phone</th>
								<th>Account Balance</th>
								<th>Transaction History</th>
								<th></th>
								<th></th>
							</tr>
						</thead>
						<!--Table head-->
						<!--Table body-->
						<tbody>
							<c:forEach var="customer" items="${Customers}">
								<tr class="table-info">
									<th scope="row">${customer.account.accountId}</th>
									<td>${customer.customerName}</td>
									<td>${customer.customerEmail}</td>
									<td>${customer.customerAddress}</td>
									<td>${customer.customerPhone}</td>
									<td>${customer.account.accountBalance}</td>
									<td><a
										href="/bankapp/transaction/viewTransaction?id=<c:out value="${customer.account.accountId}"/>"><button
												type="button"
												class="btn btn-outline-primary btn-sm my-color">View
												Transaction</button></a></td>
									<td><a
										href="deleteCustomer?id=<c:out value="${customer.customerId}"/>"><button
												type="button" class="btn btn-outline-danger btn-sm my-color">delete</button></a></td>
									<td><a
										href="updateCustomer?id=<c:out value="${customer.customerId}"/>"><button
												type="button" class="btn btn-outline-info btn-sm my-color">update</button></a></td>
								</tr>
							</c:forEach>
						</tbody>
						<!--Table body-->
					</table>
					<!--Table-->
				</div>
			</div>
		</div>
		<!--MDB Tables-->

	</main>

</body>
</html>