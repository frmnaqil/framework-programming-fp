<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Register Peserta</title>
<link rel="shortcut icon" href="#">


<link href="<c:url value="/resources/bootstrap.min.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/sticky.css"/>" rel="stylesheet">
<link href="<c:url value="/resources/font-awesome.min.css"/>"
	rel="stylesheet">
<script src="<c:url value="/resources/jquery.min.js"/>"
	type="text/javascript"></script>

</head>

<body id="page-top">

	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container">
			<div class="navbar-header">
				<!-- Branding Image -->
				<a class="navbar-brand" href="<c:url value="/"/>"> ITS </a>
			</div>

			<div class="collapse navbar-collapse" id="app-navbar-collapse">
				<!-- Left Side Of Navbar -->
				<ul class="nav navbar-nav">
					<li>&nbsp;</li>
				</ul>
				<ul class="navbar-nav mr-auto">
					<li class="nav-item"><a class="nav-link" href="#">Ujian <span
							class="sr-only">(current)</span></a></li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="container pt-md-5" style="padding-bottom: 5em;">
		<div class="row justify-content-center">
			<div class="col-md-8">
				<div class="card">
					<div class="card-header">Register</div>
					<div class="card-body">
						<form:form class="form-horizontal" method="POST"
							action="registerProcess" modelAttribute="peserta">
							<div class="row form-group">
								<label for="name" class="col-md-4 col-form-label">Name</label>

								<div class="col-md-8">
									<form:input type="text" cssClass="form-control"
										path="name" required="required" autofocus="autofocus" />
									<form:errors path="name" cssClass="alert alert-danger"/>

								</div>
							</div>

							<div class="row form-group">
								<label for="email" class="col-md-4 col-form-label">E-Mail
									Address</label>

								<div class="col-md-8">
									<form:input type="email" cssClass="form-control"
										path="email" required="required" />
									<form:errors path="email" cssClass="alert alert-danger"/>

								</div>
							</div>

							<div class="row form-group">
								<label for="password" class="col-md-4 col-form-label">Password</label>

								<div class="col-md-8">
									<form:password cssClass="form-control"
										path="password" required="required" />
									<br>
									<form:errors path="password" cssClass="alert alert-danger"/>

								</div>
							</div>

							<div class="row form-group">
								<div class="col-md-8 ml-auto">
									<button type="submit" class="btn btn-primary">Register</button>
								</div>
							</div>
						</form:form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
