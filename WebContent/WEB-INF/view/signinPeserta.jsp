<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <meta name="description" content="">
      <meta name="author" content="">
      <title>CAT BKD - Sign In Peserta</title>
      <link rel="shortcut icon" href="#">
      <link href="
      <c:url value="/resources/bootstrap.min.css"/>
      " rel="stylesheet">
      <link href="
      <c:url value="/resources/vendor/bootstrap/css/bootstrap.min.css"/>
      " rel="stylesheet">
      <link href="
      <c:url value="/resources/sticky.css"/>
      " rel="stylesheet">
      <link href="
      <c:url value="/resources/font-awesome.min.css"/>
      " rel="stylesheet">
      <script src="
      <c:url value="/resources/jquery.min.js"/>
      " type="text/javascript"></script>
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
            </div>
         </div>
      </nav>
      <div class="container pt-md-5" style="padding-bottom: 9em;">
         <div class="row justify-content-center">
            <div class="col-md-7">
               <div class="card">
                  <h5 class="card-header">Login Peserta</h5>
                  <div class="card-body">
                     <form method="POST" action="http://localhost:8080/framework-programming-fp/startUjian">
                        <input type="hidden" name="_token" value="dCX0HqGG0Cz8B1NJVgx4OTmondOp3C84VDUQ1s0C">
                        <div class="row form-group">
                           <label for="email" class="col-md-4 col-form-label">Alamat Email</label>
                           <div class="col-md-8">
                              <input id="email" type="email" class="form-control" name="email" value="" placeholder="Masukkan Alamat Email" required autofocus>
                           </div>
                        </div>
                        <div class="row form-group">
                           <label for="password" class="col-md-4 col-form-label">Password</label>
                           <div class="col-md-8">
                              <input id="password" type="password" class="form-control" name="password" placeholder=" Masukkan Password" required>
                           </div>
                        </div>
                        <br>
                        <div class="form-group row">
                           <div class="col-sm-8 ml-auto">
                              <button type="submit" class="btn btn-primary">Login</button>
                           </div>
                        </div>
                     </form>
                  </div>
               </div>
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
   </body>
</html>