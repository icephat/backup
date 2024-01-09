<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="../layouts/mainLayoutHead.jsp" />
<!-- Custom Stylesheet -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/style.css">
</head>
<body>
	<jsp:include page="../layouts/mainLayoutBodyHeader.jsp" />

	<!--**********************************
	            Content body start
	***********************************-->
	<div class="content-body">
		<div class="container-fluid">
			<div class="row">
				<div class="col-12">
					<div class="card">
						<div class="card-body">
							<h4 class="card-title">เชื้อโรคพืช</h4>
							<p align="right">
								<a
									href="${pageContext.request.contextPath}/pathogen/pathogenCreate"
									class="btn mb-1 btn-primary">เพิ่มข้อมูล</a>
							</p>


							<div class="table-responsive">
								<table
									class="table table-striped table-bordered zero-configuration">
									<thead>
										<tr>
											<th>ชื่อวิทยาศาสตร์</th>
											<th>ประเภทเชื้อ</th>
											<th>รายละเอียด</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${pathogens}" var="pathogen">
											<tr>
												<td>${pathogen.scientificName}</td>
												<td>${pathogen.pathogentype.name}</td>
												<td><a
													href="${pageContext.request.contextPath}/pathogen/pathogenEdit/${pathogen.pathogenId}"
													class="btn btn-info" role="button">Edit</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a
													href="${pageContext.request.contextPath}/pathogen/pathogenDelete/${pathogen.pathogenId}"
													onclick="return confirm('Are you sure you want to delete this item?');"
													class="btn btn-danger" role="button">Delete</a></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--**********************************
	     Content body end
	***********************************-->

	<jsp:include page="../layouts/mainLayoutBodyFooter.jsp" />

	<!-- Custom Script -->
	<script
		src="${pageContext.request.contextPath }/resources/plugins/tables/js/jquery.dataTables.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/plugins/tables/js/datatable/dataTables.bootstrap4.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/plugins/tables/js/datatable-init/datatable-basic.min.js"></script>
	<jsp:include page="../layouts/mainLayoutScript.jsp" />
</body>
</html>

