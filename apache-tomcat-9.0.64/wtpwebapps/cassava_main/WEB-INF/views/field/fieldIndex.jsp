<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
		<div class= "container-fluid">
			<div class = "row">
				<div class = "col-12">
					<div class = "card">
						<div class = "card-body">
							<h4 class = "card-title">แปลงเพาะปลูก</h4>
							<p>
								<a  href="${pageContext.request.contextPath }/field/fieldCreate"
									class="btn mb-1 btn-primary">เพิ่มข้อมูลแปลงเพาะปลูก</a>
							</p>
							<div class = "row">
								<div class="col-3">
									<div class="card">
										<div class="card-body">
											<div class="text-center">
												<img alt="" class=" thumbnail rounded-circle mt-4"
													width="150" height="150"
													src="${pageContext.request.contextPath}/resources/images/casava/fields.png">
												<h4 class="card-widget__title text-dark mt-3">แปลงเพาะปลูก1</h4>
												<p class="text-muted">หน่วยงานที่ 1</p>
												<p class="text-muted">
													<h3>
														<a href="${pageContext.request.contextPath}/field/fieldEdit/{disease.id}"> <i
															class="fa fa-edit" aria-hidden="true"></i>
														</a> <a href=""> <i class="fa fa-trash" aria-hidden="true"></i>
														</a>
													</h3>
												</p>
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
		<jsp:include page="../layouts/mainLayoutContentBottom.jsp" />
	</body>
	<script src="${pageContext.request.contextPath }/plugins/tables/js/jquery.dataTables.min.js"></script>
	<script src="${pageContext.request.contextPath }/plugins/tables/js/datatable/dataTables.bootstrap4.min.js"></script>
	<script src="${pageContext.request.contextPath }/plugins/tables/js/datatable-init/datatable-basic.min.js"></script>
	<jsp:include page="../layouts/mainLayoutScript.jsp" />
</html>