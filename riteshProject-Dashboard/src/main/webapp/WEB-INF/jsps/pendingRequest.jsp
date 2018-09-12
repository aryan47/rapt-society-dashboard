<%@ include file="includes/header.jsp"%>
<!-- ============================================================== -->
<!-- Page Content -->
<!-- ============================================================== -->
<div id="page-wrapper">
	<div class="container-fluid">
		<div class="row bg-title">
			<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
				<h4 class="page-title"></h4>
			</div>

			<div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">

				<ol class="breadcrumb">
					<li><a href="/">Dashboard</a></li>
					<li class="active">Pending Request</li>
				</ol>
			</div>
			<!-- /.col-lg-12 -->
		</div>
		<!-- /row -->
		<div class="row">
			<div class="col-sm-12">
				<div class="white-box">
					<h3 class="box-title">Pending Requests</h3>
					<hr>

					<div class=" table table-responsive">
						<table class="table table-hover pendingBookRequest">
							<thead>
								<tr>

									<th>NAME</th>
									<th>CLASS</th>
									<th>SUBJECT</th>
									<th>ADDRESS</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="book" items="${bookDetails}">

									<tr class="active">
										<td><c:out value="${book.name}"></c:out></td>
										<td><c:out value="${book.userRequestSubject.std}"></c:out></td>
										<td><c:out value="${book.userRequestSubject.subject}"></c:out></td>
										<td><c:out value="${book.addressEmbd.address}"></c:out></td>
										<td><a href='#' class='btn btn-success edit'
											data-toggle='modal' data-target='#editBookDetail'>Approve</a>&nbsp;<a
											href='#' class='btn btn-danger delete'>Delete</a></td>

									</tr>

								</c:forEach>
							</tbody>
						</table>

					</div>
				</div>
			</div>
		</div>
		<!-- /.row -->
	</div>
	<!-- /.container-fluid -->
	<%@ include file="includes/footer.jsp"%>