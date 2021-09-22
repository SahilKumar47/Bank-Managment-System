<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU"
	crossorigin="anonymous">
<style>
.divider:after, .divider:before {
	content: "";
	flex: 1;
	height: 1px;
	background: #eee;
}

.h-custom {
	height: calc(100% - 73px);
}

.my-div {
	background-color: #5777ba;
}

@media ( max-width : 450px) {
	.h-custom {
		height: 100%;
	}
}
</style>
</head>
<body>
	<section class="vh-100">
		<div class="container-fluid h-custom">
			<div
				class="row d-flex justify-content-center align-items-center h-100">
				<div class="col-md-9 col-lg-6 col-xl-5">
					<img
						src="https://mdbootstrap.com/img/Photos/new-templates/bootstrap-login-form/draw2.png"
						class="img-fluid" alt="Sample image">
				</div>
				<div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
					<div
						class="d-flex flex-row align-items-center justify-content-center justify-content-lg-start">
						<p class="h2 fw-normal mb-5 me-3">Welcome to MyBank App</p>
					</div>
					<c:if test="${not empty SPRING_SECURITY_LAST_EXCEPTION }">
						<p class="label fw-normal mb-2 me-3 text-danger"> <c:out
								value="${SPRING_SECURITY_LAST_EXCEPTION.message }"></c:out>
						</p>
					</c:if>
					<c:if test="${not empty param.logout}">
						<p class="label fw-normal mb-2 me-3 text-success"> <c:out value="Logged Out Successfully"></c:out>
						</p>
					</c:if>
					<c:url value="/myloginprocessor" var="login" />
					<form:form action="${login}" method="post">
						<!-- Username input -->
						<div class="form-outline mb-4">
							<input type="text" id="form3Example3"
								class="form-control form-control-lg"
								placeholder="Enter Username" name="username" /> <label
								class="form-label" for="form3Example3">Username</label>
						</div>

						<!-- Password input -->
						<div class="form-outline mb-3">
							<input type="password" id="form3Example4"
								class="form-control form-control-lg"
								placeholder="Enter password" name="password" /> <label
								class="form-label" for="form3Example4">Password</label>
						</div>
						<div class="text-center text-lg-start mt-4 pt-2">
							<button type="submit" class="btn btn-primary btn-lg my-div"
								style="padding-left: 2.5rem; padding-right: 2.5rem;">Login</button>
						</div>
					</form:form>
				</div>
			</div>
		</div>
		<div
			class="d-flex flex-column flex-md-row text-center text-md-start justify-content-between py-4 px-4 px-xl-5 my-div">
			<div></div>
		</div>
	</section>
</body>
</html>