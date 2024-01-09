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
	<div class="row">
		<div class="col">
			<div class="card">
				<div class="card-body">
					<h4 class="card-title">รายการขอส่งออกข้อมูลที่อนุมัติ</h4>						
					<div class="table-responsive">
						<table class="table table-striped table-bordered zero-configuration">
							<thead>
								<tr>
									<th>วันที่ขออนุมัติ</th>
									<th>จำนวนครั้งการสำรวจ</th>
									<th>วันที่หมดอายุ</th>
									<th>รายละเอียด</th>
									<th>ส่งออก</th>
								</tr>
							</thead>
							
							<tbody>
							<c:forEach items="${listrequest}" var="requestdetail" varStatus="loop">
										<c:if test="${requestdetail[0].request.status.equals('Approve')}">
											<tr>
												<td>${date[loop.index]}</td>
												<td>${requestdetail[1]}</td>
												<td>1 ม.ค.2565</td>
												<td><a
													href="${pageContext.request.contextPath}/permissionexport/requestDetail/${requestdetail[0].request.requestId}"
													class="btn btn-info" role="button"><i
														class="fa fa-search" aria-hidden="true"></i></a></td>
												<td><a href="${pageContext.request.contextPath}/permissionexport/requestDetail/${requestdetail[0].request.requestId}" class="btn btn-success" role="button"><i
														class="fa fa-download" aria-hidden="true"></i></a></td>

											</tr>
											</c:if>
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
	<jsp:include page="../layouts/mainLayoutBodyFooter.jsp" />

	<script
		src="${pageContext.request.contextPath }/resources/plugins/tables/js/jquery.dataTables.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/plugins/tables/js/datatable/dataTables.bootstrap4.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/plugins/tables/js/datatable-init/datatable-basic.min.js"></script>

</body>
</html>