<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>CAT Tambah Soal</title>
    <link href="
    <c:url value="/resources/bootstrap.min.css"/>
    " rel="stylesheet">
    <link href="
    <c:url value="/resources/vendor/datatables/dataTables.bootstrap4.css"/>
    "rel="stylesheet">
    <link href="
    <c:url value="/resources/vendor/font-awesome/css/font-awesome.min.css"/>
    " rel="stylesheet">
    <link href="
    <c:url value="/resources/css/sb-admin.css"/>
    " rel="stylesheet">
    <link href="
    <c:url value="/resources/css/sb-admin.css"/>
    " rel="stylesheet">
    <script src="
    <c:url value="/resources/vendor/jquery/jquery.js"/>
    "></script>
  </head>
  <body class="fixed-nav sticky-footer bg-dark" id="page-top">
    <!-- Navigation-->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
      <a class="navbar-brand" href="#"><b>ITS</b> Admin</a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav navbar-sidenav" id="exampleAccordion">
          <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Dashboard">
            <a class="nav-link" href="http://localhost:8080/framework-programming-fp/admin">
            <i class="fa fa-fw fa-dashboard"></i>
            <span class="nav-link-text">Dashboard</span>
            </a>
          </li>
          <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Soal">
            <a class="nav-link" href="http://localhost:8080/framework-programming-fp/soal/indexSoal">
            <i class="fa fa-fw fa-superscript"></i>
            <span class="nav-link-text">Soal</span>
            </a>
          </li>
          <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Soal">
            <a class="nav-link" href="http://localhost:8080/framework-programming-fp/peserta/indexPeserta">
            <i class="fa fa-fw fa-user"></i>
            <span class="nav-link-text">Peserta</span>
            </a>
          </li>
        </ul>
        <ul class="navbar-nav sidenav-toggler">
          <li class="nav-item">
            <a class="nav-link text-center" id="sidenavToggler">
            <i class="fa fa-fw fa-angle-left"></i>
            </a>
          </li>
        </ul>
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <span class="navbar-text">
            Welcome, admin
            </span>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle mr-lg-2" id="alertsDropdown" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fa fa-fw fa-user"></i>
            </a>
            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="alertsDropdown">
              <a class="dropdown-item small" data-toggle="modal" data-target="#exampleModal" href="#">
              <i class="fa fa-fw fa-sign-out"></i>
              Logout
              </a>
            </div>
          </li>
        </ul>
      </div>
    </nav>
    <div class="content-wrapper">
    <div class="container-fluid">
      <div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-pencil-square-o"></i> Form Tambah Data Soal Ujian CAT
        </div>
        <div class="card-body">
          <form:form method="POST" action="tambahProcess" modelAttribute="soal">
            <div class="form-group">
              <label for="deskripsi">Deskripsi</label>
              <form:textarea class="form-control" placeholder="Deskripsi Soal" required="required" path="desc" cols="50" rows="10" />
            </div>
            <div class="container">
              <div class="row">
                <div class="col">
                  <label for="opsi1">Opsi 1</label>
                  <form:textarea class="form-control" placeholder="Opsi 1" required="required" path="opsi1" cols="50" rows="10" />
                </div>
                <div class="col">
                  <label for="opsi2">Opsi 2</label>
                  <form:textarea class="form-control" placeholder="Opsi 2" required="required" path="opsi2" cols="50" rows="10" />
                </div>
                <div class="w-100">
                  <br>
                </div>
                <div class="col">
                  <label for="opsi3">Opsi 3</label>
                  <form:textarea class="form-control" placeholder="Opsi 2" required="required" path="opsi3" cols="50" rows="10" />
                </div>
                <div class="col">
                  <label for="opsi4">Opsi 4</label>
                  <form:textarea class="form-control" placeholder="Opsi 2" required="required" path="opsi4" cols="50" rows="10" />
                </div>
              </div>
              <center>
                <div class="form-group">
                  <div class="col-6">
                    <label for="jawaban">Jawaban Benar</label>
                    <form:input class="form-control" placeholder="Ketik jawaban yang benar" required="required" path="kunci" />
                  </div>
                </div>
              </center>
              <center>
                <input class="btn btn-primary" type="submit" value="Submit">
              </center>
          </form:form>
          </div>
        </div>
      </div>
      <!-- /.container-fluid-->
      <!-- /.content-wrapper-->
      <footer class="sticky-footer">
        <div class="container">
          <div class="text-center">
            <small>Institut Teknologi Sepuluh Nopember &copy 2019</a></small>
          </div>
        </div>
      </footer>
      <!-- Scroll to Top Button-->
      <a class="scroll-to-top rounded" href="#page-top">
      <i class="fa fa-angle-up"></i>
      </a>
      <!-- Logout Modal-->
      <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel">Apakah anda yakin ingin Logout?</h5>
              <button class="close" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">×</span>
              </button>
            </div>
            <div class="modal-footer">
              <button class="btn btn-secondary" type="button" data-dismiss="modal">Batal</button>
              <a class="btn btn-danger" href="http://localhost:8000/logout" onclick="event.preventDefault(); document.getElementById('frm-logout').submit();">Logout</a>
              <form id="frm-logout" action="http://localhost:8000/logout" method="POST" style="display: none;">
              </form>
            </div>
          </div>
        </div>
      </div>
      <script src="
      <c:url value="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"/>
      "></script>
      <script src="
      <c:url value="/resources/js/sb-admin.min.js"/>
      "></script>
      <script src="
      <c:url value="/resources/jquery.min.js"/>
      "
      type="text/javascript"></script>
      <script
      src="
      <c:url value="/resources/vendor/datatables/jquery.dataTables.js"/>
      "
      type="text/javascript"></script>
      <script
      src="
      <c:url value="/resources/vendor/datatables/dataTables.bootstrap4.js"/>
      "
      type="text/javascript"></script>
      <script src="
      <c:url value="/resources/js/sb-admin-datatables.min.js"/>
      "
      type="text/javascript"></script>
    </div>
  </body>
</html>