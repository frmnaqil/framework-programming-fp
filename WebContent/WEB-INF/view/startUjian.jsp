<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Home</title>
  <link rel="shortcut icon" href="#">


  <link href="<c:url value="/resources/bootstrap.min.css"/>" rel="stylesheet">
  <link href="<c:url value="/resources/vendor/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet">
  <link href="<c:url value="/resources/sticky.css"/>" rel="stylesheet">
  <link href="<c:url value="/resources/font-awesome.min.css"/>" rel="stylesheet">
  <script src="<c:url value="/resources/jquery.min.js"/>" type="text/javascript"></script>

</head>

<body id="page-top">

  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container">
                <div class="navbar-header">                 
                    <!-- Branding Image -->
                    <a class="navbar-brand" href="<c:url value="/"/>" >
                        ITS
                    </a>
                </div>

                <div class="collapse navbar-collapse" id="app-navbar-collapse">
                    <!-- Left Side Of Navbar -->
                    <ul class="nav navbar-nav">
                    	<li>&nbsp;</li>
                    </ul>
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item">
                          <a class="nav-link" href="#">Ujian <span class="sr-only">(current)</span></a>
                        </li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <!-- Authentication Links -->
                                                <li class="nav-item">
                            <span class="navbar-text" style="font-weight: bold;">
                                Welcome, mrbrigthzide!
                            </span>
                        </li>
                            <li class="dropdown">
                                <a class="nav-link dropdown-toggle mr-lg-2" id="alertsDropdown" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-fw fa-user"></i>
                                </a>   

                                <ul class="dropdown-menu dropdown-menu-right" role="menu">
                                    <li>
                                        <a class="btn btn-default btn-flat" href="http://localhost:8000/logout"
                                            onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                                     <i class="fa fa-sign-out"></i>
                                            Logout
                                        </a>

                                        <form id="logout-form" action="http://localhost:8000/logout" method="POST" style="display: none;">
                                            <input type="hidden" name="_token" value="5rZvKxsD1hATAaDk27WRFh2DDNnNKJiqEga2aF2D">
                                        </form>
                                    </li>
                                </ul>
                            </li>
                                            </ul>
                    
                </div>
            </div>
        </nav>
        
        <div class="container p-4 mx-auto">

<div class="d-flex justify-content-center">
<div class="card " style="width: 35rem;">
  <div class="card-header text-center">
    <h4>
      Informasi Tes
    </h4>
  </div>

  <div class="card-body">
                  <h5 class="card-title">Identitas Peserta</h5>
    <div class="row" style="padding-left: 2em;">
              <div class="col-3">
                <ul class="list-unstyled text-left" style="font-weight: 500;">
                  <li>Nama</li>
                  <li>Alamat Email</li>
                </ul>
              </div>
              <div class="col-1">
                <ul class="list-unstyled text-left" style="font-weight: 500;">
                  <li>:</li>
                  <li>:</li>
                </ul>
              </div>
              <div class="col-8">
                <ul class="list-unstyled text-left">
                  <li>mrbrigthzide</li>
                  <li>mrbrigthzide@gmail.com</li>
                </ul>
              </div>
    </div>
  </div>
  <div class="card-body">
                  <h5 class="card-title">Deskripsi Ujian</h5>
    <div class="row" style="padding-left: 2em;">
              <div class="col-3">
                <ul class="list-unstyled text-left" style="font-weight: 500;">
                  <li>Jumlah Soal</li>
                  <li>Durasi Ujian</li>
                </ul>
              </div>
              <div class="col-1">
                <ul class="list-unstyled text-left" style="font-weight: 500;">
                  <li>:</li>
                  <li>:</li>
                </ul>
              </div>
              <div class="col-8">
                <ul class="list-unstyled text-left">
                  <li>100 soal</li>
                  <li>90 Menit</li>
                </ul>
              </div>
    </div>
  </div>
</div>
</div> 
  <div class="text-center" style="padding-top: 2em;">
    <center>
    <form method="POST" action="http://localhost:8080/framework-programming-fp/soalujian" accept-charset="UTF-8"><input name="_token" type="hidden" value="5rZvKxsD1hATAaDk27WRFh2DDNnNKJiqEga2aF2D">
      <input class="btn btn-lg btn-outline-primary" type="submit" value="Mulai">
    </form>
    </center>
  </div>  
</div>

<script src="<c:url value="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"/>"></script>
  	<script src="<c:url value="/resources/js/sb-admin.min.js"/>"></script>
  	<script src="<c:url value="/resources/jquery.min.js"/>"
		type="text/javascript"></script>
	<script
		src="<c:url value="/resources/vendor/datatables/jquery.dataTables.js"/>"
		type="text/javascript"></script>
	<script
		src="<c:url value="/resources/vendor/datatables/dataTables.bootstrap4.js"/>"
		type="text/javascript"></script>
	<script src="<c:url value="/resources/js/sb-admin-datatables.min.js"/>"
		type="text/javascript"></script>
</body>

</html>
