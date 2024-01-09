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
	href="${pageContext.request.contextPath }/resources/plugins/bootstrap-material-datetimepicker/css/bootstrap-material-datetimepicker.css"
	rel="stylesheet">
<!-- Page plugins css -->
<link
	href="${pageContext.request.contextPath }/resources/plugins/clockpicker/dist/jquery-clockpicker.min.css"
	rel="stylesheet">
<!-- Color picker plugins css 
    <link href="./plugins/jquery-asColorPicker-master/css/asColorPicker.css" rel="stylesheet">-->
<!-- Date picker plugins css -->
<link
	href="${pageContext.request.contextPath }/resources/plugins/bootstrap-datepicker/bootstrap-datepicker.min.css"
	rel="stylesheet">
<!-- Daterange picker plugins css -->
<link
	href="${pageContext.request.contextPath }/resources/plugins/timepicker/bootstrap-timepicker.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath }/resources/plugins/bootstrap-daterangepicker/daterangepicker.css"
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
				<div class="col">
					<div class="card gradient-1">
						<div class="card-body">
							<h3 class="card-title text-white">ออกรหัสลงทะเบียนสำหรับ</h3>
							<h2 class="text-white">เกษตรกร</h2>
							<span class="float-left ">
								<div class="bootstrap-modal">
									<button type="button" class="btn mb-1 btn-light opacity-5"
										data-toggle="modal" data-target="#exampleModal"
										data-whatever="@mdo">ออกรหัสลงทะเบียน</button>
									<div class="modal fade" id="exampleModal" tabindex="-1"
										role="dialog" aria-labelledby="exampleModalLabel"
										aria-hidden="true">
										<div class="modal-dialog" role="document">

											<div class="modal-content">

												<div class="modal-header">
													<h5 class="modal-title" id="exampleModalLabel">รหัสลงทะเบียนสำหรับเกษตรกร</h5>
													<button type="button" class="close" data-dismiss="modal"
														aria-label="Close">
														<span aria-hidden="true">&times;</span>
													</button>
												</div>
												<div class="modal-body text-gray">
													<form class="form-valide"
														action="${pageContext.request.contextPath }/registCode/createRegistFarmerCode"
														method="post" modelAttribute="registercode">
														<div class="form-group">
															<label for="recipient-name" class="col-form-label ">จำกัดจำนวนคน
																(1-100)</label> <input type="text" class="form-control"
																id="numUserPermit" name="numUserPermit">
														</div>
														<div class="form-group">
															<c:forEach items="${organizations}" var="organization">
																<select name="organization.organizationId"
																	id="registerCodeId" class="form-control" required>
																	<option value="${organization.organizationId}">${organization.name}</option>
																</select>
															</c:forEach>
														</div>
														<div class="form-group">
															<label for="message-text" class="col-form-label">ช่วงเวลาการใช้
																(วันที่เริ่ม - วันหมดอายุ)</label>
															<div class="input-daterange input-group" id="date-range">
																<input type="text" class="form-control" name="startDate">
																<span class="input-group-addon bg-info b-0 text-white">
																	จนถึงวันที </span> <input type="text" class="form-control"
																	name="expireDate">
															</div>
														</div>
														<input type="hidden" name="userType" value="Farmer">
														<input type="submit" class="btn btn-primary" role="button"
															value="ออกรหัส">
													</form>
												</div>
												<div class="modal-footer">
													<button type="button" class="btn btn-secondary"
														data-dismiss="modal">Close</button>
												</div>
											</div>
										</div>
									</div>

								</div>
							</span>
						</div>

					</div>
				</div>
			</div>
			<div class="row">
				<c:forEach items="${registcodes}" var="registcode">
					<div class="col-3">
						<div class="card card-widget">
							<div class="card-body">
								<h5 class="mt-4">${registcode.code }</h5>
								<span>${registcode.startDate } - ${registcode.expireDate } </span>
								<div class="mt-4">
									<h6>
										ใช้แล้ว (${registcode.numUseRegist }/${registcode.numUserPermit })<span class="pull-right">0%</span>
									</h6>
									<div class="progress mb-3" style="height: 7px">
										<div class="progress-bar gradient-1" style="width: 0%;"
											role="progressbar">
											<span class="sr-only">0% Complete</span>
										</div>
									</div>
								</div>
								<div class="mt-4">
									<h6 class="m-t-10 text-muted">
										สิริลักษณ์ ช่วยชู<span class="pull-right">กำลังใช้งาน </span>
									</h6>
								</div>
								<div class="mt-4">
									<h6 class="m-t-10 text-muted">
										ออกให้เกษตรกร${registcode.organization.name }<span class="pull-right text-red">
										 <a class="pull-right text-red"
											href="${pageContext.request.contextPath}/registCode/registerCodeFarmerDelete/${registcode.registerCodeId }"
											onclick="return confirm('Are you sure you want to delete this item?');">
											<i  class="fa fa-trash" aria-hidden="true"></i></a></span>
									</h6>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
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
	<script
		src="${pageContext.request.contextPath }/resources/plugins/bootstrap-daterangepicker/daterangepicker.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/plugins/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/plugins/moment/moment.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/plugins/bootstrap-material-datetimepicker/js/bootstrap-material-datetimepicker.js"></script>
	<!-- Clock Plugin JavaScript -->
	<script
		src="${pageContext.request.contextPath }/resources/plugins/clockpicker/dist/jquery-clockpicker.min.js"></script>
	<!-- Color Picker Plugin JavaScript -->
	<script
		src="${pageContext.request.contextPath }/resources/plugins/jquery-asColorPicker-master/libs/jquery-asColor.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/plugins/jquery-asColorPicker-master/libs/jquery-asGradient.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/plugins/jquery-asColorPicker-master/dist/jquery-asColorPicker.min.js"></script>
	<!-- Date Picker Plugin JavaScript -->
	<script
		src="${pageContext.request.contextPath }/resources/plugins/bootstrap-datepicker/bootstrap-datepicker.min.js'"></script>
	<!-- Date range Plugin JavaScript -->
	<script
		src="${pageContext.request.contextPath }/resources/plugins/timepicker/bootstrap-timepicker.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/plugins/bootstrap-daterangepicker/daterangepicker.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/js/plugins-init/form-pickers-init.js"></script>
</body>
</html>

