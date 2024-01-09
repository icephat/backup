<!DOCTYPE html>
<html lang="th">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>หน้าหลัก</title>
<!-- Favicon icon -->
<link rel="icon" type="image/png" sizes="16x16"
	th:href="@{images/favicon.png}">
<!-- Pignose Calender -->
<link th:href="@{/plugins/pg-calendar/css/pignose.calendar.min.css}"
	rel="stylesheet">
<!-- Chartist -->
<link rel="stylesheet"
	th:href="@{/plugins/chartist/css/chartist.min.css}">
<link rel="stylesheet"
	th:href="@{/plugins/chartist-plugin-tooltips/css/chartist-plugin-tooltip.css}">
<!-- Custom Stylesheet -->
<link th:href="@{css/style.css}" rel="stylesheet">

<style type="text/css">
/* Chart.js */
@
-webkit-keyframes chartjs-render-animation {from { opacity:0.99
	
}

to {
	opacity: 1
}

}
@
keyframes chartjs-render-animation {from { opacity:0.99
	
}

to {
	opacity: 1
}

}
.chartjs-render-monitor {
	-webkit-animation: chartjs-render-animation 0.001s;
	animation: chartjs-render-animation 0.001s;
}
</style>
<style class="datamaps-style-block">
.datamap path.datamaps-graticule {
	fill: none;
	stroke: #777;
	stroke-width: 0.5px;
	stroke-opacity: .5;
	pointer-events: none;
}

.datamap .labels {
	pointer-events: none;
}

.datamap path:not(.datamaps-arc), .datamap circle, .datamap line {
	stroke: #FFFFFF;
	vector-effect: non-scaling-stroke;
	stroke-width: 1px;
}

.datamaps-legend dt, .datamaps-legend dd {
	float: left;
	margin: 0 3px 0 0;
}

.datamaps-legend dd {
	width: 20px;
	margin-right: 6px;
	border-radius: 3px;
}

.datamaps-legend {
	padding-bottom: 20px;
	z-index: 1001;
	position: absolute;
	left: 4px;
	font-size: 12px;
	font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
}

.datamaps-hoverover {
	display: none;
	font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
}

.hoverinfo {
	padding: 4px;
	border-radius: 1px;
	background-color: #FFF;
	box-shadow: 1px 1px 5px #CCC;
	font-size: 12px;
	border: 1px solid #CCC;
}

.hoverinfo hr {
	border: 1px dotted #CCC;
}
</style>

</head>

<body>
	<div id="main-wrapper" class="show">

		<!--**********************************
            Nav header start
        ***********************************-->
		<div class="nav-header" style="background-color: #afd7f6;">
			<div class="brand-logo">
				<a href="home.html"> <!--**********************************
                    <b class="logo-abbr"><img src="https://kurdis.agri.kps.ku.ac.th/cassava/images/logo.png" alt=""> </b>
                    <span class="logo-compact"><img src="https://kurdis.agri.kps.ku.ac.th/cassava/images/logo-compact.png" alt=""></span>
                    <span class="brand-title">
                        <img src="https://kurdis.agri.kps.ku.ac.th/cassava/images/logo-text.png" alt="">
                    </span>
***********************************-->

				</a>
			</div>
		</div>
		<!--**********************************
            Nav header end
        ***********************************-->

		<!--**********************************
            Header start
        ***********************************-->
		<div class="header">
			<div class="header-content clearfix">
				<div class="nav-control">
					<div class="hamburger">
						<span class="toggle-icon"><i class="icon-menu"></i></span>
					</div>
				</div>
				
				<div class="header-left">
					<div class="input-group icons">
						<div class="input-group-prepend">
							<span
								class="input-group-text bg-transparent border-0 pr-2 pr-sm-3"
								id="basic-addon1"><i class="mdi mdi-magnify"></i></span>
						</div>
						<input type="search" class="form-control"
							placeholder="Search Dashboard" aria-label="Search Dashboard">
						<div class="drop-down animated flipInX d-md-none">
							<form action="#">
								<input type="text" class="form-control" placeholder="Search">
							</form>
						</div>
					</div>
				</div>
					<div class="header-right">
					<ul class="clearfix">
						
						<li class="icons dropdown">
							<div class="user-img c-pointer position-relative"
								data-toggle="dropdown">
								<span class="activity active"></span> <img
									src="https://kurdis.agri.kps.ku.ac.th/cassava/images/user/1.png"
									height="40" width="40" alt="">
							</div>
							<div
								class="drop-down dropdown-profile animated fadeIn dropdown-menu">
								<div class="dropdown-content-body">
									<ul>
										<li><a href="./profile"><i class="icon-user"></i>
												<span>Profile</span></a></li>
										

										
										<li><a
											href="./login"><i
												class="icon-key"></i> <span>Logout</span></a></li>
									</ul>
								</div>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<!--**********************************
            Header end ti-comment-alt
        ***********************************-->

		<!--**********************************
            Sidebar start
        ***********************************-->
		<div class="nk-sidebar">
			<div class="slimScrollDiv"
				style="position: relative; overflow: hidden; width: auto; height: 100%;">
				<div class="nk-nav-scroll"
					style="overflow: hidden; width: auto; height: 100%;">
					<ul class="metismenu" id="menu">
						<li><a class="has-arrow" href="javascript:void()"
							aria-expanded="false"> <i class="icon-user menu-icon"></i><span
								class="nav-text">ผู้ใช้ระบบ</span>
						</a>
							<ul aria-expanded="false" class="collapse">
								<li><a href="./profile">ข้อมูลผู้ใช้</a></li>
								<li><a href="./activityopen">กิจกรรมที่คุณกำลังเปิด</a></li>

								<li><a href="./activityhistory">ประวัติการเข้าร่วมกิจกรรม</a></li>
								<li><a href="./openedActivity">ประวัติการเปิดกิจกรรม</a>
								</li>
								<li><a href="./requesthistory">ประวัติคำขอเข้าร่วม</a></li>

							</ul></li>

						<li><a class="has-arrow" href="javascript:void()"
							aria-expanded="false"> <i class="icon-notebook menu-icon"></i><span
								class="nav-text">กิจกรรม</span>
						</a>
							<ul aria-expanded="false" class="collapse">
								<li><a href="./activity">กิจกรรมที่เปิด</a></li>

								<li><a href="./openactivity">เปิดกิจกรรม</a></li>

							</ul></li>

					</ul>
				</div>
				<div class="slimScrollBar"
					style="background: transparent; width: 5px; position: absolute; top: 0px; opacity: 0.4; display: block; border-radius: 7px; z-index: 99; right: 1px; height: 30px;">
				</div>
				<div class="slimScrollRail"
					style="width: 5px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(51, 51, 51); opacity: 0.2; z-index: 90; right: 1px;">
				</div>
			</div>
		</div>
		<!--**********************************
            Sidebar end
        ***********************************-->

		<!--**********************************
            Content body start
        ***********************************-->
		<div class="content-body" style="min-height: 876px;">
			<div class="container-fluid">
				<div class="row">
					<div class="col-12">
						<div class="card">
							<div class="card-body">
								<h4 class="card-title">Data Table</h4>
								<div class="table-responsive">
									<div id="DataTables_Table_0_wrapper"
										class="dataTables_wrapper container-fluid dt-bootstrap4">
										<div class="row">
											<div class="col-sm-12 col-md-6">
												<div class="dataTables_length"
													id="DataTables_Table_0_length">
													<label>Show <select
														name="DataTables_Table_0_length"
														aria-controls="DataTables_Table_0"
														class="form-control form-control-sm"><option
																value="10">10</option>
															<option value="25">25</option>
															<option value="50">50</option>
															<option value="100">100</option></select> entries
													</label>
												</div>
											</div>
											<div class="col-sm-12 col-md-6">
												<div id="DataTables_Table_0_filter"
													class="dataTables_filter">
													<label>Search:<input type="search"
														class="form-control form-control-sm" placeholder=""
														aria-controls="DataTables_Table_0"></label>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-sm-12">
												<table
													class="table table-striped table-bordered zero-configuration dataTable"
													id="DataTables_Table_0" role="grid"
													aria-describedby="DataTables_Table_0_info">
													<thead>
														<tr role="row">
															<th class="sorting_asc" tabindex="0"
																aria-controls="DataTables_Table_0" rowspan="1"
																colspan="1" aria-sort="ascending"
																aria-label="Name: activate to sort column descending"
																style="width: 233.641px;">Username</th>
															<th class="sorting" tabindex="0"
																aria-controls="DataTables_Table_0" rowspan="1"
																colspan="1"
																aria-label="Position: activate to sort column ascending"
																style="width: 367.375px;">Firstname</th>
															<th class="sorting" tabindex="0"
																aria-controls="DataTables_Table_0" rowspan="1"
																colspan="1"
																aria-label="Office: activate to sort column ascending"
																style="width: 175.141px;">Lastname</th>
															<th class="sorting" tabindex="0"
																aria-controls="DataTables_Table_0" rowspan="1"
																colspan="1"
																aria-label="Age: activate to sort column ascending"
																style="width: 88.5469px;">status</th>
															<th class="sorting" tabindex="0"
																aria-controls="DataTables_Table_0" rowspan="1"
																colspan="1"
																aria-label="Start date: activate to sort column ascending"
																style="width: 160.562px;">Address</th>
															<th class="sorting" tabindex="0"
																aria-controls="DataTables_Table_0" rowspan="1"
																colspan="1"
																aria-label="Salary: activate to sort column ascending"
																style="width: 136.828px;">Skills</th>
														</tr>
													</thead>
													<tbody>

														<tr th:each="user : ${users}">
															<td th:text="${user.username}" />
															<td th:text="${user.firstName}" />
															<td th:text="${user.lastName}" />
															<td th:text="${user.status}" />
															<td th:text="${user.address}" />
															<td th:text="${user.skills}" />
														</tr>

													</tbody>
												</table>
											</div>
										</div>
										<div class="row">
											<div class="col-sm-12 col-md-5">
												<div class="dataTables_info" id="DataTables_Table_0_info"
													role="status" aria-live="polite">Showing 1 to 10 of
													57 entries</div>
											</div>
											<div class="col-sm-12 col-md-7">
												<div class="dataTables_paginate paging_simple_numbers"
													id="DataTables_Table_0_paginate">
													<ul class="pagination">
														<li class="paginate_button page-item previous disabled"
															id="DataTables_Table_0_previous"><a href="#"
															aria-controls="DataTables_Table_0" data-dt-idx="0"
															tabindex="0" class="page-link">Previous</a></li>
														<li class="paginate_button page-item active"><a
															href="#" aria-controls="DataTables_Table_0"
															data-dt-idx="1" tabindex="0" class="page-link">1</a></li>
														<li class="paginate_button page-item "><a href="#"
															aria-controls="DataTables_Table_0" data-dt-idx="2"
															tabindex="0" class="page-link">2</a></li>
														<li class="paginate_button page-item "><a href="#"
															aria-controls="DataTables_Table_0" data-dt-idx="3"
															tabindex="0" class="page-link">3</a></li>
														<li class="paginate_button page-item "><a href="#"
															aria-controls="DataTables_Table_0" data-dt-idx="4"
															tabindex="0" class="page-link">4</a></li>
														<li class="paginate_button page-item "><a href="#"
															aria-controls="DataTables_Table_0" data-dt-idx="5"
															tabindex="0" class="page-link">5</a></li>
														<li class="paginate_button page-item "><a href="#"
															aria-controls="DataTables_Table_0" data-dt-idx="6"
															tabindex="0" class="page-link">6</a></li>
														<li class="paginate_button page-item next"
															id="DataTables_Table_0_next"><a href="#"
															aria-controls="DataTables_Table_0" data-dt-idx="7"
															tabindex="0" class="page-link">Next</a></li>
													</ul>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
		<!-- #/ container -->
	</div>
	<!--**********************************
            Content body end
        ***********************************-->


	<!--**********************************
            Footer start
        ***********************************-->
	<div class="footer">
		<!--**********************************
            <div class="copyright">
                <p>Copyright &copy; Designed & Developed by <a href="https://themeforest.net/user/quixlab">Quixlab</a> 2018</p>
            </div>
			***********************************-->
	</div>
	<!--**********************************
            Footer end
        ***********************************-->
	</div>


	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sidebar/0.2.2/js/sidebar.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/bootstrap.bundle.min.js"></script>
	<script
		src="https://kurdis.agri.kps.ku.ac.th/cassava/plugins/common/common.min.js"></script>
	<script src="https://kurdis.agri.kps.ku.ac.th/cassava/js/custom.min.js"></script>
	<script src="https://kurdis.agri.kps.ku.ac.th/cassava/js/gleek.js"></script>
	<script
		src="https://kurdis.agri.kps.ku.ac.th/cassava/js/styleSwitcher.js"></script>


</body>




</html>