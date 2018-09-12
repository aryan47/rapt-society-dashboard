<%@ include file="includes/header.jsp"%>
<!-- Page Content -->
<!-- ============================================================== -->
<div id="page-wrapper">
	<div class="container-fluid">
		<div class="row bg-title">
			<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
				<h4 class="page-title">Dashboard</h4>
			</div>

			<!-- /.col-lg-12 -->
		</div>
		<!-- /.row -->
		<!-- ============================================================== -->
		<!-- Different data widgets -->
		<!-- ============================================================== -->
		<!-- .row -->
		<div class="row">
			<div class="col-lg-4 col-sm-6 col-xs-12">
				<div class="white-box analytics-info">
					<h3 class="box-title">Total Visit</h3>
					<ul class="list-inline two-part">
						<li>
							<div id="sparklinedash"></div>
						</li>
						<li class="text-right"><i class="ti-arrow-up text-success"></i>
							<span class="counter text-success">659</span></li>
					</ul>
				</div>
			</div>
			<div class="col-lg-4 col-sm-6 col-xs-12">
				<div class="white-box analytics-info">
					<h3 class="box-title">Total Page Views</h3>
					<ul class="list-inline two-part">
						<li>
							<div id="sparklinedash2"></div>
						</li>
						<li class="text-right"><i class="ti-arrow-up text-purple"></i>
							<span class="counter text-purple">869</span></li>
					</ul>
				</div>
			</div>
			<div class="col-lg-4 col-sm-6 col-xs-12">
				<div class="white-box analytics-info">
					<h3 class="box-title">Unique Visitor</h3>
					<ul class="list-inline two-part">
						<li>
							<div id="sparklinedash3"></div>
						</li>
						<li class="text-right"><i class="ti-arrow-up text-info"></i>
							<span class="counter text-info">911</span></li>
					</ul>
				</div>
			</div>
		</div>
		<!--/.row -->
		<!--row -->
		<!-- /.row -->
		<div class="row">
			<div class="col-md-12 col-lg-12 col-sm-12 col-xs-12">
				<div class="white-box">
					<h3 class="box-title">Products Yearly Sales</h3>
					<ul class="list-inline text-right">
						<li>
							<h5>
								<i class="fa fa-circle m-r-5 text-info"></i>Mac
							</h5>
						</li>
						<li>
							<h5>
								<i class="fa fa-circle m-r-5 text-inverse"></i>Windows
							</h5>
						</li>
					</ul>
					<div id="ct-visits" style="height: 405px;"></div>
				</div>
			</div>
		</div>
		<!-- ============================================================== -->
		<!-- table -->
		<!-- ============================================================== -->
		<div class="row">
			<div class="col-md-12 col-lg-12 col-sm-12">
				<div class="white-box">
					<div class="col-md-3 col-sm-4 col-xs-6 pull-right">
						<a href="/pendingRequest" class="btn btn-success pull-right">process request</a>
					</div>
					<h3 class="box-title ">Recent Pending</h3><hr>
					<div class="table-responsive">
						<table class="table pendingBookRequest" >
							<thead>
								<tr>

									<th>NAME</th>
									<th>CLASS</th>
									<th>SUBJECT</th>
									<th>ADDRESS</th>

								</tr>
							</thead>
							<tbody>
								<c:forEach var="book" items="${bookDetails}">

									<tr class="active">
										<td><c:out value="${book.name}"></c:out></td>
										<td><c:out value="${book.userRequestSubject.std}"></c:out></td>
										<td><c:out value="${book.userRequestSubject.subject}"></c:out></td>
										<td><c:out value="${book.addressEmbd.address}"></c:out></td>
									</tr>

								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		<!-- ============================================================== -->
		<!-- chat-listing & recent comments -->
		<!-- ============================================================== -->
		<div class="row">
			<!-- .col -->
			<div class="col-md-12 col-lg-8 col-sm-12">
				<div class="white-box">
					<h3 class="box-title">Recent Comments</h3>
					<div class="comment-center p-t-10">
						<div class="comment-body">
							<div class="user-img">
								<img src="plugins/images/users/pawandeep.jpg" alt="user"
									class="img-circle">
							</div>
							<div class="mail-contnet">
								<h5>Pavan kumar</h5>
								<span class="time">10:20 AM 20 may 2016</span> <br /> <span
									class="mail-desc">Donec ac condimentum massa. Etiam
									pellentesque pretium lacus. Phasellus ultricies dictum
									suscipit. Aenean commodo dui pellentesque molestie feugiat.
									Aenean commodo dui pellentesque molestie feugiat</span> <a
									href="javacript:void(0)"
									class="btn btn btn-rounded btn-default btn-outline m-r-5"><i
									class="ti-check text-success m-r-5"></i>Approve</a><a
									href="javacript:void(0)"
									class="btn-rounded btn btn-default btn-outline"><i
									class="ti-close text-danger m-r-5"></i> Reject</a>
							</div>
						</div>
						<div class="comment-body">
							<div class="user-img">
								<img src="plugins/images/users/sonu.jpg" alt="user"
									class="img-circle">
							</div>
							<div class="mail-contnet">
								<h5>Sonu Nigam</h5>
								<span class="time">10:20 AM 20 may 2016</span> <br /> <span
									class="mail-desc">Donec ac condimentum massa. Etiam
									pellentesque pretium lacus. Phasellus ultricies dictum
									suscipit. Aenean commodo dui pellentesque molestie feugiat.
									Aenean commodo dui pellentesque molestie feugiat</span>
							</div>
						</div>
						<div class="comment-body b-none">
							<div class="user-img">
								<img src="plugins/images/users/arijit.jpg" alt="user"
									class="img-circle">
							</div>
							<div class="mail-contnet">
								<h5>Arijit singh</h5>
								<span class="time">10:20 AM 20 may 2016</span> <br /> <span
									class="mail-desc">Donec ac condimentum massa. Etiam
									pellentesque pretium lacus. Phasellus ultricies dictum
									suscipit. Aenean commodo dui pellentesque molestie feugiat.
									Aenean commodo dui pellentesque molestie feugiat</span>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-4 col-md-6 col-sm-12">
				<div class="panel">
					<div class="sk-chat-widgets">
						<div class="panel panel-default">
							<div class="panel-heading">CHAT LISTING</div>
							<div class="panel-body">
								<ul class="chatonline">
									<li>
										<div class="call-chat">
											<button class="btn btn-success btn-circle btn-lg"
												type="button">
												<i class="fa fa-phone"></i>
											</button>
											<button class="btn btn-info btn-circle btn-lg" type="button">
												<i class="fa fa-comments-o"></i>
											</button>
										</div> <a href="javascript:void(0)"><img
											src="plugins/images/users/varun.jpg" alt="user-img"
											class="img-circle"> <span>Varun Dhavan <small
												class="text-success">online</small></span></a>
									</li>
									<li>
										<div class="call-chat">
											<button class="btn btn-success btn-circle btn-lg"
												type="button">
												<i class="fa fa-phone"></i>
											</button>
											<button class="btn btn-info btn-circle btn-lg" type="button">
												<i class="fa fa-comments-o"></i>
											</button>
										</div> <a href="javascript:void(0)"><img
											src="plugins/images/users/genu.jpg" alt="user-img"
											class="img-circle"> <span>Genelia Deshmukh <small
												class="text-warning">Away</small></span></a>
									</li>
									<li>
										<div class="call-chat">
											<button class="btn btn-success btn-circle btn-lg"
												type="button">
												<i class="fa fa-phone"></i>
											</button>
											<button class="btn btn-info btn-circle btn-lg" type="button">
												<i class="fa fa-comments-o"></i>
											</button>
										</div> <a href="javascript:void(0)"><img
											src="plugins/images/users/ritesh.jpg" alt="user-img"
											class="img-circle"> <span>Ritesh Deshmukh <small
												class="text-danger">Busy</small></span></a>
									</li>
									<li>
										<div class="call-chat">
											<button class="btn btn-success btn-circle btn-lg"
												type="button">
												<i class="fa fa-phone"></i>
											</button>
											<button class="btn btn-info btn-circle btn-lg" type="button">
												<i class="fa fa-comments-o"></i>
											</button>
										</div> <a href="javascript:void(0)"><img
											src="plugins/images/users/arijit.jpg" alt="user-img"
											class="img-circle"> <span>Arijit Sinh <small
												class="text-muted">Offline</small></span></a>
									</li>
									<li>
										<div class="call-chat">
											<button class="btn btn-success btn-circle btn-lg"
												type="button">
												<i class="fa fa-phone"></i>
											</button>
											<button class="btn btn-info btn-circle btn-lg" type="button">
												<i class="fa fa-comments-o"></i>
											</button>
										</div> <a href="javascript:void(0)"><img
											src="plugins/images/users/govinda.jpg" alt="user-img"
											class="img-circle"> <span>Govinda Star <small
												class="text-success">online</small></span></a>
									</li>
									<li>
										<div class="call-chat">
											<button class="btn btn-success btn-circle btn-lg"
												type="button">
												<i class="fa fa-phone"></i>
											</button>
											<button class="btn btn-info btn-circle btn-lg" type="button">
												<i class="fa fa-comments-o"></i>
											</button>
										</div> <a href="javascript:void(0)"><img
											src="plugins/images/users/hritik.jpg" alt="user-img"
											class="img-circle"> <span>John Abraham<small
												class="text-success">online</small></span></a>
									</li>
									<li>
										<div class="call-chat">
											<button class="btn btn-success btn-circle btn-lg"
												type="button">
												<i class="fa fa-phone"></i>
											</button>
											<button class="btn btn-info btn-circle btn-lg" type="button">
												<i class="fa fa-comments-o"></i>
											</button>
										</div> <a href="javascript:void(0)"><img
											src="plugins/images/users/varun.jpg" alt="user-img"
											class="img-circle"> <span>Varun Dhavan <small
												class="text-success">online</small></span></a>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- /.col -->
		</div>
	</div>
	<!-- /.container-fluid -->
	<%@ include file="includes/footer.jsp"%>