<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset = "UTF-8">
		<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css">
		<jsp:include page="../layouts/mainLayout.jsp" />
		<title>FieldIndex Page</title>
		<jsp:include page="../layouts/mainLayoutStylesheet.jsp" />
	</head>
	<body>
		
		<div class="container-fluid">
			<div class="row justify-content-center">
				<div class="col-lg-12">
					<div class="card">
						<div class="card-body">
							<h4 class="card-title">รายชื่อพืชในแปลงปลูก</h4>
							<!--  
							<a href="${pageContext.request.contextPath }/planting/plantingAdd">เพิ่มข้อมูลพืชในแปลง</a>-->
							<p align="right">
								<a  href="${pageContext.request.contextPath }/planting/plantingAdd" class="btn mb-1 btn-primary">เพิ่มข้อมูลแปลงเพาะปลูก</a>
							</p>
							<div class="table-responsive">
								<table class="table table-bordered zero-configuration">
									<thead>
										<tr>
											<th>ลำดับที่</th>
											<th>ชื่อแปลง</th>
											<th>ชื่อพืช</th>
											<th>รายชื่อพืชก่อนหน้า</th>
											<th>วันลงปลูก</th>
											<th>วันเก็บเกี่ยว</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${plantings }" var="planting">
											<tr>
												
												<th>${planting.plantingId }</th>
												<th>${fieldName}</th>
												<th>${planting.name}</th>
												<th>${planting.previousPlant }</th>
												<th>
													<c:set var="date" value="${planting.primaryPlantPlantingDate }" />
													<fmt:formatDate value="${date}" />
												</th>
												<th>
													<c:set var="date" value="${planting.primaryPlantHarvestDate }" />
													<fmt:formatDate value="${date}" />
												</th>
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
		<jsp:include page="../layouts/mainLayoutContentBottom.jsp" />
	</body>
	<script src="${pageContext.request.contextPath }/plugins/tables/js/jquery.dataTables.min.js"></script>
	<script src="${pageContext.request.contextPath }/plugins/tables/js/datatable/dataTables.bootstrap4.min.js"></script>
	<script src="${pageContext.request.contextPath }/plugins/tables/js/datatable-init/datatable-basic.min.js"></script>
	<jsp:include page="../layouts/mainLayoutScript.jsp" />
</html>