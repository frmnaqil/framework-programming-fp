<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>CAT BKD - Soal Ujian</title>
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
              <a class="nav-link" href="http://localhost:8080/framework-programming-fp/startUjian">Ujian <span class="sr-only">(current)</span></a>
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
    <div class="container p-4">
      <div class="row">
        <div class="col-4">
          <div class="card text-center text-white bg-dark" style="width: 324px; height: 64px;">
            <p id="demo" style="font-size: 40px;font-weight: bold; "></p>
          </div>
          <br>
          <div class="card border-primary mb-3" style="max-width: 324px; height: 248px; overflow: auto;">
            <div class="card-header bg-primary text-white text-center">Peta Soal</div>
            <div class="card-body pt-0">
              <div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">
                <p class="btn-block text-center font-weight-bold"><br>- - - - - - - - - - TIU - - - - - - - - - -</p>
                <div class="btn-group mr-2" role="group" aria-label="First group" style="margin-left: 5px; margin-bottom: 5px;" >
                  <a href="#" class="btn btn-sm btn-outline-primary
                    btn-block" style="width: 40px; font-weight:  500" >1
                  </a>
                </div>
              </div>
            </div>
          </div>
          <div class="card text-center" style="width: 324px; ">
            <div class="card-body">
              <div class="row">
                <div class="col">
                  <p class="font-weight-bold">Soal Terjawab</p>
                  <h3>0</h3>
                </div>
                <div class="col">
                  <p class="font-weight-bold">Masih Kosong</p>
                  <h3>100</h3>
                </div>
              </div>
              <br>
              <a href="http://localhost:8080/framework-programming-fp/startUjian" class="btn btn-success btn-block font-weight-bold">Selesai Ujian</a>
            </div>
          </div>
        </div>
        <div class="col-8">
          <div class="card text-left">
            <div class="card-body">
              <h5 class="card-title">Soal No. 1</h5>
              <p class="card-text">Jenis : TIU</p>
              <p class="card-text">Bidang : Verbal - Sinonim</p>
            </div>
          </div>
          <br>
          <div class="card text-left">
            <div class="card-body">
              <p class="card-text">aa</p>
              <form method="POST" action="http://localhost:8000/ujian/1" accept-charset="UTF-8">
                <input name="_token" type="hidden" value="dCX0HqGG0Cz8B1NJVgx4OTmondOp3C84VDUQ1s0C">
                <div class="radio">
                  <label><input type="radio" name="optradio" value="A"
                    > A. a</label>
                </div>
                <div class="radio">
                  <label><input type="radio" name="optradio" value="B"
                    > B. b</label>
                </div>
                <div class="radio">
                  <label><input type="radio" name="optradio" value="C"
                    > C. c</label>
                </div>
                <div class="radio">
                  <label><input type="radio" name="optradio" value="D"
                    > D. d</label>
                </div>
                <div class="radio">
                  <label><input type="radio" name="optradio" value="E"
                    > E. e</label>
                </div>
                <input name="_method" type="hidden" value="PUT">
              </form>
            </div>
          </div>
          <br>
          <br>
          <center>
            <a href="#" class="btn btn-outline-secondary mr-3 disabled" style="font-weight: 500;"><i class="fa fa-chevron-circle-left"></i> Sebelumnya</a>
            <a href="#" class="btn btn-outline-secondary ml-3 " style="font-weight: 500;">Selanjutnya <i class="fa fa-chevron-circle-right"></i></a>
          </center>
        </div>
      </div>
    </div>
    <script type="text/javascript">
      var waktuJS = new Date(1558263627 * 1000).getTime();
      var waktuJS = waktuJS + 5400000;
    </script>
    <script>
      // Set the date we're counting down to
      
      //var countDownDate = new Date("Sep 5, 2018 15:37:25").getTime();
      
      
      // Update the count down every 1 second
      var x = setInterval(function() {
      
          // Get todays date and time
          var now = new Date().getTime();
          // Find the distance between now an the count down date
          var distance = waktuJS - now;
          
          // Time calculations for days, hours, minutes and seconds
          var days = Math.floor(distance / (1000 * 60 * 60 * 24));
          var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
          var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
          var seconds = Math.floor((distance % (1000 * 60)) / 1000);
          
          // Output the result in an element with id="demo"
          document.getElementById("demo").innerHTML =  ('0' + hours).slice(-2) + " : "
          + ('0' + minutes).slice(-2) + " : " + ('0' + seconds).slice(-2) + "";
          
          // If the count down is over, write some text 
          if (distance < 0) {
              clearInterval(x);
          }
      }, 1000);
    </script>
    <script type="text/javascript">
      $(document).ready(function() {
        $('input[name=optradio]').change(function(){
          $('form').submit();
        });
      });
    </script>
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