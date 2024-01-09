<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="../layouts/mainLayout.jsp" />
<title>pathogenEdit Page</title>
<jsp:include page="../layouts/mainLayoutStylesheet.jsp" />
</head>
<body>
		<div class="container-fluid">
			<div class="row justify-content-center">
				<div class="col-lg-12">
					<div class="card">
						<div class="card-body">
							<h4 class="card-title">เชื้อโรคพืช > รายละเอียด</h4>
							<div class="form-validation">
								<form class="form-valide" action="#" method="post">
									<div class="form-group row">
										<label class="col-lg-4 col-form-label" for="val-username">ชื่อวิทยาศาสตร์<span
											class="text-danger">*</span>
										</label>
										<div class="col-lg-6">
											<input type="text" class="form-control" id="val-username"
												name="val-username" placeholder="">
										</div>
									</div>
									<div class="form-group row">
										<label class="col-lg-4 col-form-label" for="val-username">ประเภทเชื้อ<span
											class="text-danger">*</span>
										</label>
										<div class="col-lg-6">
											<input type="text" class="form-control" id="val-username"
												name="val-username" placeholder="">
										</div>
									</div>
									<div class="form-group row">
										<div class="col-lg-8 ml-auto">
											<a href="${pageContext.request.contextPath}/pathogen/pathogenIndex"
												class="btn btn-light" role="button">กลับ</a> <a
												href="${pageContext.request.contextPath}/pathogen/pathogenUpdate"
												class="btn btn-primary" role="button">บันทึก</a>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	<jsp:include page="../layouts/mainLayoutContentBottom.jsp" />
</body>
<jsp:include page="../layouts/mainLayoutScript.jsp" />
</html>