<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Debug</title>
<link href="<c:url value="/resources/bootstrap.min.css"/>"
	rel="stylesheet">
<link
	href="<c:url value="/resources/vendor/datatables/dataTables.bootstrap4.css"/>"
	rel="stylesheet">
</head>
<body>
	Peserta Debug
	<%--Debug result : ${peserta.name} ${peserta.email} ${peserta.password} --%>

	<div class="content-wrapper">
		<div class="container-fluid">
			<div class="card mb-3">
				<div class="card-header">
					<a class="btn btn-success float-right btn-sm"
						href="{{ url('/admin/peserta/create') }}"><i
						class="fa fa-plus-circle"></i> Tambah Peserta</a> <i
						class="fa fa-table"></i> Daftar Peserta Ujian CAT
				</div>
				<div class="card-body">
					<div class="table-responsive">
						<table class="table table-bordered" id="dataTable">
							<thead>
								<tr>
									<th>No</th>
									<th>Nama</th>
									<th>Email</th>
									<th>Aksi</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="peserta" items="${pesertas}">
									<tr>
										<td>${peserta.id}</td>
										<td>${peserta.name}</td>
										<td>${peserta.email}</td>
										<td>button crud</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
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