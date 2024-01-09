<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="../layouts/mainLayout.jsp" />
<title>DiseaseEdit Page</title>
<jsp:include page="../layouts/mainLayoutStylesheet.jsp" />
</head>
<body>
	<div class="content-body">
		<div class="container-fluid">
			<div class="row justify-content-center">
				<div class="col-lg-12">
					<div class="card">
						<div class="card-body">
							<h4 class="card-title">โรคมันสำปะหลัง > รายละเอียด</h4>
							<div class="form-validation">
								<form class="form-valide"
									action="${pageContext.request.contextPath }/disease/diseaseUpdate"
									method="post" modelAttribute="disease">
									<div class="form-group row">
										<label class="col-lg-4 col-form-label" for="val-username">ชื่อโรค<span
											class="text-danger">*</span>
										</label>
										<div class="col-lg-6">
											<input type="text" class="form-control" id="val-username"
												name="name" placeholder="" value="${disease.targetofsurvey.name}">
										</div>
									</div>
									<div class="form-group row">
										<label class="col-lg-4 col-form-label" for="val-username">ลักษณะอาการ<span
											class="text-danger">*</span>
										</label>
										<div class="col-lg-6">
											<input type="text" class="form-control" id="val-username"
												name="symptom" placeholder="" value="${disease.symptom}">
										</div>
									</div>
									<div class="form-group row">
										<label class="col-lg-4 col-form-label" for="val-username">เชื้อสาเหตุ<span
											class="text-danger">*</span>
										</label>
										<div class="col-lg-6">
											<input type="text" class="form-control" id="val-username"
												name="source" placeholder="" value="${disease.source}">
										</div>
									</div>
									<div class="form-group row">
										<label class="col-lg-4 col-form-label" for="val-username">การควบคุมโรค<span
											class="text-danger">*</span>
										</label>
										<div class="col-lg-6">
											<input type="text" class="form-control" id="val-username"
												name="controlDisease" placeholder=""
												value="${disease.controlDisease}">
										</div>
									</div>
									<div class="form-group row">
										<label class="col-lg-4 col-form-label" for="val-username">การควบคุมแมลงพาหะ<span
											class="text-danger">*</span>
										</label>
										<div class="col-lg-6">
											<input type="text" class="form-control" id="val-username"
												name="controlPest" placeholder=""
												value="${disease.controlPest}">
										</div>
									</div>
									<div class="form-group row">
										<label class="col-lg-4 col-form-label" for="val-username">เลือกภาพ<span
											class="text-danger">*</span>
										</label>
										<div class="col-lg-6">
											<input type="text" class="form-control" id="val-username"
												name="imgdiseases" placeholder=""
												value="${disease.imgdiseases}">
										</div>
									</div>

									<input type="hidden" class="form-control" id="val-username"
										name="diseaseId" placeholder="" value="${disease.diseaseId}">
									<div class="form-group row">
										<div class="col-lg-8 ml-auto">
											<a
												href="${pageContext.request.contextPath }/disease/diseaseIndex"
												class="btn btn-light" role="button">กลับ</a> <input
												type="submit" class="btn btn-primary" role="button"
												value="บันทึก">
										</div>
									</div>
								</form>
							</div>
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