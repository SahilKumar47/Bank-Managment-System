<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta content="width=device-width, initial-scale=1.0" name="viewport" />

<title>BankApp Home</title>
<meta content="" name="description" />
<meta content="" name="keywords" />

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet" />

<!-- Vendor CSS Files -->
<link href="assets/vendor/aos/aos.css" rel="stylesheet" />
<link href="assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" />
<link href="assets/vendor/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet" />
<link href="assets/vendor/boxicons/css/boxicons.min.css"
	rel="stylesheet" />
<link href="assets/vendor/glightbox/css/glightbox.min.css"
	rel="stylesheet" />
<link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet" />

<!-- Template Main CSS File -->
<link href="assets/css/style.css" rel="stylesheet" />
</head>

<body>
	<!-- ======= Header ======= -->
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
	<!-- End Header -->

	<!-- ======= Hero Section ======= -->
	<section id="hero" class="d-flex align-items-center">
		<div class="container">
			<div class="row">
				<div
					class="
              col-lg-6
              d-lg-flex
              flex-lg-column
              justify-content-center
              align-items-stretch
              pt-5 pt-lg-0
              order-2 order-lg-1
            "
					data-aos="fade-up">
					<div>
						<h1>MyBank Management Portal</h1>
						<h2>MyBank Management portal provide the employees to easily
							manage our customer details and their fund, This portal provide
							you with all the necessary features to manage the flow of funds
							from one account to another with all the required error
							protection techniques</h2>
						<a href="/bankapp/logout" class="download-btn">Logout</a>
					</div>
				</div>
				<div
					class="
              col-lg-6
              d-lg-flex
              flex-lg-column
              align-items-stretch
              order-1 order-lg-2
              hero-img
            "
					data-aos="fade-up">
					<img src="assets/img/hero-img.png" class="img-fluid" alt="" />
				</div>
			</div>
		</div>
	</section>
	<!-- End Hero -->
	<!-- Vendor JS Files -->
	<script src="assets/vendor/aos/aos.js"></script>
	<script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
	<script src="assets/vendor/php-email-form/validate.js"></script>
	<script src="assets/vendor/swiper/swiper-bundle.min.js"></script>

	<!-- Template Main JS File -->
	<script src="assets/js/main.js"></script>
</body>
</html>
