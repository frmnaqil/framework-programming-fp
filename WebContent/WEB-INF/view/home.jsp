<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Home</title>
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
	<div class="container p-3 mx-auto flex-column text-center"
		style="max-width: 42em; margin-top: 2rem">

		<img class="mb-4"
			src="https://katamata.files.wordpress.com/2011/12/lambang-its-png-v2.png"
			alt="Logo-ITS" width="25%">

		<div class="inner cover">
			<h1>Selamat Datang di Ujian Online Berbasis Komputer</h1>
			<p class="lead">Computer Assisted Test ini dipersembahkan oleh
				Departemen Informatika bagi mahasiswa yang ingin mencoba simulasi
				Tes Kompetensi Dasar (TKD) secara online dengan bank soal yang
				terbaru.</p>
			<br>
			<p class="lead">
				<a href="http://localhost:8080/framework-programming-fp/signinPeserta" class="btn btn-lg btn-outline-primary mr-sm-1">Sign
					in</a> <a href="peserta/register"
					class="btn btn-lg btn-outline-secondary ml-sm-1">Register</a>
			</p>
		</div>


	</div>

</body>

</html>
