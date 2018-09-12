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
					<li class="active">Instructor Table</li>
				</ol>
			</div>
			<!-- /.col-lg-12 -->
		</div>
		<!-- /row -->
		<div class="row">
			<div class="col-sm-12">
				<div class="white-box">
					<h3 class="box-title">Instructor Table</h3>
					<hr>

					<div class=" table table-responsive">
						<table class="table table-hover pendingBookRequest">
							<thead>
								<tr>

									<th>FIRST NAME</th>
									<th>LAST NAME</th>
									<th>EMAIL</th>
									<th>SUBJECTS KNOWN</th>
									<th>ELIGIBLE CLASS</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="instructor" items="${instructors}">

									<tr class="active">
										<td><c:out value="${instructor.firstName}"></c:out></td>
										<td><c:out value="${instructor.lastName}"></c:out></td>
										<td><c:out value="${instructor.email}"></c:out></td>
										<td><c:forEach var="subject"
												items="${instructor.subjects}">
												<c:out value="${subject.name}"></c:out><br>
												</c:forEach>
										</td>
										<td><c:forEach var="standard"
												items="${instructor.standards}">
												Class-<c:out value="${standard.name}"></c:out><br>
												</c:forEach>
										</td>
										<td><a href='#' class='btn btn-success approve'
											data-toggle='modal' data-target='#editBookDetail'>Approve</a><br><a
											href='#' class='btn btn-danger delete'>Delete</a><br><a
											href='#' class='btn btn-info edit'>Edit</a></td>

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