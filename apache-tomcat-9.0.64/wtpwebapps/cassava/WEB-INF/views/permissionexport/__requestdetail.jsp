<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="../layouts/mainLayoutHead.jsp" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css">
<meta charset="UTF-8">
<title>Export Index</title>
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
			<form
				action="${pageContext.request.contextPath }/permission/requestdetailSave"
				modelAttribute="requestdetail" method="post">
				<div class="row">
					<div class="col-12">
						<div class="card">
							<div class="card-body">
								<h4 class="card-title">ขอส่งออกการสำรวจ</h4>
								<p align="right">
									<a
										href="${pageContext.request.contextPath}/permissionexport/index"
										class="btn btn-light" role="button">กลับ</a>
								</p>

								<div class="table-responsive">
									<table
										class="table table-striped table-bordered zero-configuration">
										<thead>
											<tr>
												<th>วันที่สำรวจ</th>
												<th>ชื่อแปลง</th>
												<th>เจ้าของแปลง</th>
												<th>อำเภอ</th>
												<th>จังหวัด</th>
												<th>รายละเอียด</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${listrequestdetail}" var="requestdetail">
												<tr>
													<td>${requestdetail[0].surveyTarget.survey.date}</td>
													<td>${requestdetail[0].surveyTarget.survey.planting.field.name}</td>
													<td>${requestdetail[1].firstName} ${requestdetail[1].lastName}</td>
													<td>${requestdetail[0].surveyTarget.survey.planting.field.subdistrict.district.name}</td>
													<td>${requestdetail[0].surveyTarget.survey.planting.field.subdistrict.district.province.name}</td>
													<td><a
														href="${pageContext.request.contextPath}/survey/summary/${requestdetail[0].surveyTarget.survey.surveyId}"
														class="btn btn-info" role="button">Info</a></td>
												</tr>
											</c:forEach>
										</tbody>

									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</form>
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
</body>
</html>