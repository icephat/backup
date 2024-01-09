<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="../layouts/mainLayoutHead.jsp" />
<!-- Custom Stylesheet -->
<jsp:useBean id="now" class="java.util.Date" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/style.css">
<link
	href="${pageContext.request.contextPath }/resources/plugins/tables/css/datatable/dataTables.bootstrap4.min.css"
	rel="stylesheet">

<link
	href="${pageContext.request.contextPath }/resources/plugins/bootstrap-material-datetimepicker/css/bootstrap-material-datetimepicker.css"
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
					<div class="card">
						<div class="card-body">
							<h4 class="card-title">อนุมัติส่งออกการสำรวจ</h4>
							<div class="general-button" align="right">
								<a
									href="${pageContext.request.contextPath}/permissionexport/requestApproved"
									class="btn btn-primary" role="button">คำขอการส่งออกที่ดำเนินการแล้ว</a>
							</div>
							<div class="table-responsive">
								<table
									class="table table-striped table-bordered zero-configuration">
									<thead>
										<tr>
											<th>วันที่ขออนุมัติ</th>
											<th>ชื่อผู้ขอ</th>
											<th>จำนวนครั้งการสำรวจ</th>
											<th>ช่วงวันส่งออก</th>
											<th>รายละเอียด</th>
											<th>ดำเนินการ</th>
										</tr>
									</thead>
									<tbody>


										<c:forEach items="${requests}" var="request" varStatus="loop">
											<tr>
												<td>${formatter.format(request.dateRequest)}</td>
												<td>${request.staffByStaffId.user.firstName}
													${request.staffByStaffId.user.lastName}</td>
												<td><a class="btn mb-1 btn-rounded btn-outline-info text-primary disabled">${request.requestdetails.size()}
														ครั้ง</a> </td>
												<td><c:if test="${now > request.dateExpire}">
															<span class="badge badge-danger">
																${formatter.format(request.dateApprove)}
																-${formatter.format(request.dateExpire)}</span>
														</c:if>

														<c:if test="${now <= request.dateExpire}">
															<span class="badge badge-warning">
																${formatter.format(request.dateApprove)}
																-${formatter.format(request.dateExpire)}</span>
														</c:if>
														</td>
												<td>
												<form
														action="${pageContext.request.contextPath}/permissionexport/requestDetail/${request.requestId}"
														method="post">
														<button type="submit" class="btn btn-info">
															<i class="fa fa-search" aria-hidden="true"></i>
														</button>
														<input type="hidden" name="toPage" value="approveindex"></input>
													</form>
													</td>
												<td><a
													href="${pageContext.request.contextPath}/permissionexport/requestApprove/${request.requestId}"
													class="btn btn-success" role="button"><i
														class="fa fa-check" aria-hidden="true"></i> อนุมัติ</a> <a
													href="${pageContext.request.contextPath}/permissionexport/requestReject/${request.requestId}"
													class="btn btn-danger" role="button"><i
														class="fa fa-times" aria-hidden="true"></i> ไม่อนุมัติ</a></td>
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
</body>
</html>