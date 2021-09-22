<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<html>
<head>
<meta charset="utf-8">
<title>Withdraw</title>
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU"
	crossorigin="anonymous" />
<style>
* {
	padding: 0;
	margin: 0;
	color: #5777ba;
	box-sizing: border-box;
	word-wrap: break-word;
	font-family: -apple-system, BlinkMacSystemFont, Segoe UI, Roboto,
		Helvetica Neue, Ubuntu, sans-serif;
}

body {
	min-height: 100%;
	background-color: #ffffff;
}

h1 {
	letter-spacing: -1px;
}

a {
	color: #5777ba;
	text-decoration: unset;
}

.login-root {
	background: #fff;
	display: flex;
	width: 100%;
	min-height: 100vh;
	overflow: hidden;
}

.loginbackground {
	min-height: 692px;
	position: fixed;
	bottom: 0;
	left: 0;
	right: 0;
	top: 0;
	z-index: 0;
	overflow: hidden;
}

.flex-flex {
	display: flex;
}

.align-center {
	align-items: center;
}

.center-center {
	align-items: center;
	justify-content: center;
}

.box-root {
	box-sizing: border-box;
}

.flex-direction--column {
	-ms-flex-direction: column;
	flex-direction: column;
}

.loginbackground-gridContainer {
	display: -ms-grid;
	display: grid;
	-ms-grid-columns: [start] 1fr[left-gutter] (86.6px)[16] [left-gutter] 1fr[end];
	grid-template-columns: [start] 1fr[left-gutter] repeat(16, 86.6px)[left-gutter]
		
		
		
		
		
		
		 1fr[end];
	-ms-grid-rows: [top] 1fr[top-gutter] (64px)[8] [bottom-gutter] 1fr[bottom];
	grid-template-rows: [top] 1fr[top-gutter] repeat(8, 64px)[bottom-gutter]
		
		
		
		
		
		
		 1fr[bottom];
	justify-content: center;
	margin: 0 -2%;
	transform: rotate(-12deg) skew(-12deg);
}

.box-divider--light-all-2 {
	box-shadow: inset 0 0 0 2px #e3e8ee;
}

.box-background--blue {
	background-color: #5777ba;
}

.box-background--white {
	background-color: #ffffff;
}

.box-background--blue800 {
	background-color: #212d63;
}

.box-background--gray100 {
	background-color: #e3e8ee;
}

.box-background--cyan200 {
	background-color: #7fd3ed;
}

.padding-top--64 {
	padding-top: 64px;
}

.padding-top--24 {
	padding-top: 24px;
}

.padding-top--48 {
	padding-top: 48px;
}

.padding-bottom--24 {
	padding-bottom: 24px;
}

.padding-horizontal--48 {
	padding: 48px;
}

.padding-bottom--15 {
	padding-bottom: 15px;
}

.flex-justifyContent--center {
	-ms-flex-pack: center;
	justify-content: center;
}

.formbg {
	margin: 0px auto;
	width: 100%;
	max-width: 448px;
	background: white;
	border-radius: 4px;
	box-shadow: rgba(60, 66, 87, 0.12) 0px 7px 14px 0px, rgba(0, 0, 0, 0.12)
		0px 3px 6px 0px;
}

span {
	display: block;
	font-size: 18px;
	line-height: 28px;
	color: #1a1f36;
}

label {
	margin-bottom: 10px;
}

.reset-pass a, label {
	font-size: 14px;
	font-weight: 600;
	display: block;
}

.reset-pass>a {
	text-align: right;
	margin-bottom: 10px;
}

.error {
	color: red;
}

.grid--50-50 {
	display: grid;
	grid-template-columns: 50% 50%;
	align-items: center;
}

.field input {
	font-size: 16px;
	line-height: 28px;
	padding: 8px 16px;
	width: 100%;
	min-height: 44px;
	border: unset;
	border-radius: 4px;
	outline-color: rgb(84 105 212/ 0.5);
	background-color: rgb(255, 255, 255);
	box-shadow: rgba(0, 0, 0, 0) 0px 0px 0px 0px, rgba(0, 0, 0, 0) 0px 0px
		0px 0px, rgba(0, 0, 0, 0) 0px 0px 0px 0px, rgba(60, 66, 87, 0.16) 0px
		0px 0px 1px, rgba(0, 0, 0, 0) 0px 0px 0px 0px, rgba(0, 0, 0, 0) 0px
		0px 0px 0px, rgba(0, 0, 0, 0) 0px 0px 0px 0px;
}

input[type="submit"] {
	background-color: #5777ba;
	box-shadow: rgba(0, 0, 0, 0) 0px 0px 0px 0px, rgba(0, 0, 0, 0) 0px 0px
		0px 0px, rgba(0, 0, 0, 0.12) 0px 1px 1px 0px, rgb(84, 105, 212) 0px
		0px 0px 1px, rgba(0, 0, 0, 0) 0px 0px 0px 0px, rgba(0, 0, 0, 0) 0px
		0px 0px 0px, rgba(60, 66, 87, 0.08) 0px 2px 5px 0px;
	color: #fff;
	font-weight: 600;
	cursor: pointer;
}

.field-checkbox input {
	width: 20px;
	height: 15px;
	margin-right: 5px;
	box-shadow: unset;
	min-height: unset;
}

.field-checkbox label {
	display: flex;
	align-items: center;
	margin: 0;
}

a.ssolink {
	display: block;
	text-align: center;
	font-weight: 600;
}

.footer-link span {
	font-size: 14px;
	text-align: center;
}

.listing a {
	color: #697386;
	font-weight: 600;
	margin: 0 10px;
}

.animationRightLeft {
	animation: animationRightLeft 2s ease-in-out infinite;
}

.animationLeftRight {
	animation: animationLeftRight 2s ease-in-out infinite;
}

.tans3s {
	animation: animationLeftRight 3s ease-in-out infinite;
}

.tans4s {
	animation: animationLeftRight 4s ease-in-out infinite;
}

#------------------------------

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

<body>
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
					<li><a class="nav-link scrollto"
						href="/bankapp/customer/allCustomers">All Customers</a></li>
					<li><a class="nav-link scrollto"
						href="/bankapp/customer/addCustomer">New Customer</a></li>
					<li><a class="nav-link scrollto" href="/bankapp/user/allUsers">All
							Users</a></li>
					<c:if test="${profile == 'ROLE_ADMIN'}">
						<li><a class="nav-link scrollto" href="/bankapp/user/addUser">New
								User</a></li>
					</c:if>
					<li class="dropdown"><a href="#"><span class="active">Banking </span> <i
							class="bi bi-chevron-down"></i></a>
						<ul>
							<li><a href="/bankapp/transaction/withdraw">Withdraw</a></li>
							<li><a href="/bankapp/transaction/deposit">Deposit</a></li>
							<li><a href="/bankapptransaction/transfer">Fund Transfer</a></li>
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
	<div class="login-root ">
		<div class="box-root flex-flex flex-direction--column"
			style="min-height: 100vh; flex-grow: 1;">
			<div class="loginbackground box-background--white padding-top--64">
				<div class="loginbackground-gridContainer" style="margin-top: 4.5rem">
					<div class="box-root flex-flex" style="grid-area: top/start/8/end;">
						<div class="box-root"
							style="background-image: linear-gradient(white 0%, rgb(247, 250, 252) 33%); flex-grow: 1;">
						</div>
					</div>
					<div class="box-root flex-flex" style="grid-area: 4/2/auto/5;">
						<div
							class="box-root box-divider--light-all-2 animationLeftRight tans3s"
							style="flex-grow: 1;"></div>
					</div>
					<div class="box-root flex-flex" style="grid-area: 6/start/auto/2;">
						<div class="box-root box-background--blue800"
							style="flex-grow: 1;"></div>
					</div>
					<div class="box-root flex-flex" style="grid-area: 7/start/auto/4;">
						<div class="box-root box-background--blue animationLeftRight"
							style="flex-grow: 1;"></div>
					</div>
					<div class="box-root flex-flex" style="grid-area: 8/4/auto/6;">
						<div
							class="box-root box-background--gray100 animationLeftRight tans3s"
							style="flex-grow: 1;"></div>
					</div>
					<div class="box-root flex-flex" style="grid-area: 3/14/auto/end;">
						<div class="box-root box-background--blue animationRightLeft"
							style="flex-grow: 1;"></div>
					</div>
					<div class="box-root flex-flex" style="grid-area: 4/17/auto/20;">
						<div
							class="box-root box-background--gray100 animationRightLeft tans4s"
							style="flex-grow: 1;"></div>
					</div>
					<div class="box-root flex-flex" style="grid-area: 5/14/auto/17;">
						<div
							class="box-root box-divider--light-all-2 animationRightLeft tans3s"
							style="flex-grow: 1;"></div>
					</div>
				</div>
			</div>
			<div
				class="box-root padding-top--24 flex-flex flex-direction--column"
				style="flex-grow: 1; z-index: 9;">
				<div
					class="box-root padding-top--48 padding-bottom--24 flex-flex flex-justifyContent--center">
					<h1>
						<a href="" rel="dofollow">Withdraw</a>
					</h1>
				</div>
				<div class="formbg-outer">
					<div class="formbg">
						<div class="formbg-inner padding-horizontal--48">
							<span class="padding-bottom--15">Withdraw Funds from the
								account</span>
							<form:form id="stripe-login" action="withdraw"
								modelAttribute="transferObject">
								<div class="field padding-bottom--24">
									<label for="accountNo">Account Number</label>
									<form:input path="fromAccountId" type="number" name="accountNo" />
									<form:errors path="fromAccountId" class="error" />
									<br />
								</div>
								<div class="field padding-bottom--24">
									<div class="grid--50-50">
										<label for="amount">Amount</label>
									</div>
									<form:input type="text" name="amount" path="transferAmount" />
									<form:errors path="transferAmount" class="error" />
								</div>
								<div class="field padding-bottom--24">
									<input type="submit" name="submit" value="Continue">
								</div>
							</form:form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

</html>