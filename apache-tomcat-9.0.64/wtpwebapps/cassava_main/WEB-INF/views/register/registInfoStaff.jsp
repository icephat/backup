<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width,initial-scale=1">
	<link rel="stylesheet"
		href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>

	<!--**********************************
	            Content body start
	***********************************-->
	<div class="login-form-bg h-100">
		<div class="container h-100">
				<div class="row justify-content-center h-100">
					<div class="col-xl-6">
						<div class="form-input-content">
							<div class="card login-form mb-0">
								<div class="card-body pt-5">
								<a class="text-center" >
								 <h4>กรุณากรอกข้อมูล (สำหรับผู้ใช้ทั่วไป) </h4></a>        
									<div class="form-validation">
								<form class="form-valide" action="${pageContext.request.contextPath}/register/registInfoStaffSave" method="post"
									modelAttribute="staff"  enctype="multipart/form-data">
									
								<div class="form-group row">
								<label class="col-lg-4 col-form-label" for="username">ชื่อผู้ใช้<span class="text-danger">*</span>
								</label>
								<div class="col-lg-6">
									<input type="text" class="form-control" id="username" name="user.username" placeholder="">
								</div>
							</div>

							<div class="form-group row">
								<label class="col-lg-4 col-form-label" for="usertitle">คำนำหน้า<span class="text-danger">*</span>
								</label>
								<div class="col-lg-6">
									<input type="text" class="form-control" id="usertitle" name="user.title" placeholder="">
								</div>
							</div>
							<div class="form-group row">
								<label class="col-lg-4 col-form-label" for="firstName">ชื่อ<span class="text-danger">*</span>
								</label>
								<div class="col-lg-6">
									<input type="text" class="form-control" id="firstName" name="user.firstName" placeholder="">
								</div>
							</div>
							<div class="form-group row">
								<label class="col-lg-4 col-form-label" for="lastName">นามสกุล<span class="text-danger">*</span>
								</label>
								<div class="col-lg-6">
									<input type="text" class="form-control" id="lastName" name="user.lastName" placeholder="">
								</div>
							</div>
							<div class="form-group row">
								<label class="col-lg-4 col-form-label" for="position">ตำแหน่ง<span class="text-danger">*</span>
								</label>
								<div class="col-lg-6">
									<input type="text" class="form-control" id="position" name="position" placeholder="">
								</div>
							</div>
							<div class="form-group row">
								<label class="col-lg-4 col-form-label" for="division">ส่วนงาน<span class="text-danger">*</span>
								</label>
								<div class="col-lg-6">
									<input type="text" class="form-control" id="division" name="division" placeholder="">
								</div>
							</div>
							<div class="form-group row">
								<label class="col-lg-4 col-form-label" for="organization">หน่วยงาน<span class="text-danger">*</span>
								</label>
								<div class="col-lg-6">
									<input type="text" class="form-control" id="organization" name="staff.organization.name" placeholder="">
								</div>
							</div>
							<div class="form-group row">
								<label class="col-lg-4 col-form-label" for="phoneNo">เบอร์โทรศัพท์<span class="text-danger">*</span>
								</label>
								<div class="col-lg-6">
									<input type="text" class="form-control" id="phoneNo" name="user.phoneNo" placeholder="">
								</div>
							</div>	
							
							<div class="form-group row">
								<div class="col-lg-8 ml-auto">
									<a
											href="${pageContext.request.contextPath}"
											class="btn btn-light" role="button">ยกเลิก</a> <input
											type="submit" class="btn btn-primary" role="button"
											value="ลงทะเบียน">
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
</div>
<!--**********************************
	    Content body end
***********************************-->

	<script
		src="${pageContext.request.contextPath}/resources/plugins/common/common.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/custom.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/settings.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/gleek.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/styleSwitcher.js"></script>
	<grammarly-desktop-integration data-grammarly-shadow-root="true"></grammarly-desktop-integration>
	</body>
</html>
