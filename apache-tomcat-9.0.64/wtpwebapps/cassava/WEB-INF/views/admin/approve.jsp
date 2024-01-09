<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<jsp:include page="../layouts/mainLayoutHead.jsp" />
<!-- Custom Stylesheet -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/style.css">
<link
	href="${pageContext.request.contextPath }/resources/plugins/tables/css/datatable/dataTables.bootstrap4.min.css"
	rel="stylesheet">
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
							<h4 class="card-title">ผู้จัดการระบบ > เพิ่มผู้จัดการระบบ</h4>
							<div class="table-responsive">
								<table
									class="table table-striped table-bordered zero-configuration">
									<thead>
										<tr>
											<th>ชื่อ สกุล</th>
											<th>ตำแหน่ง</th>
											<th>ส่วนงาน</th>
											<th>หน่วยงาน</th>
											<th>รายละเอียด</th>
										</tr>
									</thead>
									<tbody>

										<c:forEach items="${staffs}" var="staff">
											<tr>
												<td>${staff.user.title} ${staff.user.firstName}  ${staff.user.lastName}<br>${staff.user.username}</td>
												<td>${staff.position}</td>												
												<td>${staff.division}</td>
												<td>${staff.organization.name}</td>												
												<td><a
													href="${pageContext.request.contextPath}/admin/approve/${staff.staffId}/create"
													class="btn btn-primary" role="button"><i class="fa fa-edit" aria-hidden="true"></i></a></td>
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
	<jsp:include page="../layouts/mainLayoutBodyFooter.jsp" />
	<script
		src="${pageContext.request.contextPath }/resources/plugins/tables/js/jquery.dataTables.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/plugins/tables/js/datatable/dataTables.bootstrap4.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/plugins/tables/js/datatable-init/datatable-basic.min.js"></script>
</body>
</html>