<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet" />

<!-- Vendor CSS Files -->
<link href="assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" />
<!-- Template Main CSS File -->
<link href="style.css" rel="stylesheet" />
</head>
<body>
	<header id="header" class="fixed-top header-transparent">
		<div
			class="container d-flex align-items-center justify-content-between">
			<div class="logo">
				<h1>
					<a href="index.html">MyBank App</a>
				</h1>
				<!-- Uncomment below if you prefer to use an image logo -->
				<!-- <a href="index.html"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
			</div>
			<nav id="navbar" class="navbar">
				<ul>
					<li><a class="nav-link scrollto active" href="/bankapp/home">Home</a></li>
					<li><a class="nav-link scrollto" href="customer/allCustomers">All
							Customers</a></li>
					<li><a class="nav-link scrollto" href="customer/addCustomer">New
							Customer</a></li>
					<li><a class="nav-link scrollto" href="user/allUsers">All
							Users</a></li>
					<c:if test="${profile == 'ROLE_ADMIN'}">
						<li><a class="nav-link scrollto" href="user/addUser">New
								User</a></li>
					</c:if>
					<li class="dropdown"><a href="#"><span>Banking </span> <i
							class="bi bi-chevron-down"></i></a>
						<ul>
							<li><a href="transaction/withdraw">Withdraw</a></li>
							<li><a href="transaction/deposit">Deposit</a></li>
							<li><a href="transaction/transfer">Fund Transfer</a></li>
						</ul></li>
					<li class="dropdown"><a href="#"><span>Transactions
						</span> <i class="bi bi-chevron-down"></i></a>
						<ul>
							<li><a href="transaction/transactionHistory">All
									Transactions</a></li>
							<li><a href="transaction/pendingTransactions">Pending
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
</body>
</html>