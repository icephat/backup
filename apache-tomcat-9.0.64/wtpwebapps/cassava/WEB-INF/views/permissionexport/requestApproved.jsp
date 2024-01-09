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
							<p align="right">
							
									<a
										href="${pageContext.request.contextPath}/permissionexport/approveIndex"
										class="btn btn-light" role="button">กลับ</a>
								</p>
							<div class="table-responsive">
								<table
									class="table table-striped table-bordered zero-configuration">
									<thead>
										<tr>
											<th>วันที่ขออนุมัติ</th>
											<th>ชื่อผู้ขอ</th>
											<th>จำนวนครั้งการสำรวจ</th>
											<th>ช่วงวันส่งออก</th>
											<th>สถานะ</th>
											<th>รายละเอียด</th>

										</tr>
									</thead>
									<tbody>


										<c:forEach items="${requests}" var="request" varStatus="loop">
											<tr>
												<td>${formatter.format(request.dateRequest)}</td>
												<td>${request.staffByStaffId.user.firstName}
													${request.staffByStaffId.user.lastName}</td>
												<td><a
													class="btn mb-1 btn-rounded btn-outline-info text-primary disabled">${request.requestdetails.size()}
														ครั้ง</a></td>
												<td><c:if test="${request.status.equals('Reject')}">
														<span class="badge badge-danger">
															${formatter.format(request.dateApprove)}
															-${formatter.format(request.dateExpire)}</span>
													</c:if> <c:if test="${request.status.equals('Approve')}">
														<span class="badge badge-success">
															${formatter.format(request.dateApprove)}
															-${formatter.format(request.dateExpire)}</span>
													</c:if></td>
												<td><c:if test="${request.status.equals('Reject')}">
														<span class="badge badge-danger">ไม่อนุมัติ</span>
													</c:if> <c:if test="${request.status.equals('Approve')}">
														<span class="badge badge-success">อนุมัติ</span>
													</c:if></td>
												<td>
												<form
														action="${pageContext.request.contextPath}/permissionexport/requestDetail/${request.requestId}"
														method="post">
														<button type="submit" class="btn btn-info">
															<i class="fa fa-search" aria-hidden="true"></i>
														</button>
														<input type="hidden" name="toPage" value="history"></input>


													</form>
													</td>

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