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
								<h4>กรุณาใส่รหัสลงทะเบียน</h4></a>
								<form class="mt-5 mb-5 login-input">
									<div class="form-group">
										<input type="text" class="form-control"  placeholder="รหัสลงทะเบียน" required>
									</div>
									<button class="btn login-form__btn submit w-100">ตรวจสอบ</button>
								</form>
								
								<form class="mt-5 mb-5 login-input" action="{{url('/register/registInfo')}}">
									<p class="mt-5 login-form__footer"><h4>ไม่มีรหัสลงทะเบียน</h4></p>
									<a href="${pageContext.request.contextPath}/register/registInfoFarmer" class="btn mb-1 btn-success	">ลงทะเบียนสำหรับเกษตรกร</a>	
									<a href="${pageContext.request.contextPath}/register/registInfoStaff" class="btn mb-1 btn-primary">ลงทะเบียนสำหรับผู้ใช้ทั่วไป</a>	
								</form>
						
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