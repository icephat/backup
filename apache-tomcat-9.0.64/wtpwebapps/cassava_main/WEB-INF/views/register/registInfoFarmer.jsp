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
								<h4>กรุณากรอกข้อมูล (สำหรับเกษตรกร)</h4></a>        
								<div class="form-validation">
								<form class="form-valide" action="${pageContext.request.contextPath}/register/registInfoFarmerSave" method="post"
									modelAttribute="farmer"  enctype="multipart/form-data">
									
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
								<label class="col-lg-4 col-form-label" for="name">ชื่อ<span class="text-danger">*</span>
								</label>
								<div class="col-lg-6">
									<input type="text" class="form-control" id="name" name="user.firstName" placeholder="">
								</div>
							</div>
							<div class="form-group row">
								<label class="col-lg-4 col-form-label" for="surname">นามสกุล<span class="text-danger">*</span>
								</label>
								<div class="col-lg-6">
									<input type="text" class="form-control" id="surname" name="user.lastName" placeholder="">
								</div>
							</div>
							<div class="form-group row">
								<label class="col-lg-4 col-form-label" for="idcard">รหัสบัตรประชาชน<span class="text-danger">*</span>
								</label>
								<div class="col-lg-6">
									<input type="text" class="form-control" id="idcard" name="idcard" placeholder="">
								</div>
							</div>
							<div class="form-group row">
								<label class="col-lg-4 col-form-label" for="adderss">ที่อยู่<span class="text-danger">*</span>
								</label>
								<div class="col-lg-6">
									<input type="text" class="form-control" id="adderss" name="adderss" placeholder="">
								</div>
							</div>
							<div class="form-group row">
								<label class="col-lg-4 col-form-label" for="province">จังหวัด<span class="text-danger">*</span>
								</label>
								<div class="col-lg-6">
									<select name="farmer.subdistrict.district.province.name" id="province" class="col-lg-6"
												placeholder="" required>
												<option value=""></option>
												<option value="${farmer.subdistrict.district.province.provinceId}">กรุงเทพ</option>
												<option value="${farmer.subdistrict.district.province.provinceId}">ระยอง</option>
												<option value="${farmer.subdistrict.district.province.provinceId}">นครปฐม</option>
												<option value="${farmer.subdistrict.district.province.provinceId}">ชลบุรี</option>
												
									</select>
									
									
									<option value="">กรุณาเลือกจังหวัด</option>
        @foreach($provinces as $item)
        <option value="{{ $item }}">{{ $item }}</option>
        @endforeach
									
									
									
								</div>
							</div>
							<div class="form-group row">
								<label class="col-lg-4 col-form-label" for="district">อำเภอ<span class="text-danger">*</span>
								</label>
								<div class="col-lg-6">
									<select name="farmer.subdistrict.district.name" id="district" class="col-lg-6"
												placeholder="" required>
												<option value=""></option>
												<option value="1">ตลิ่งชัน</option>
												<option value="2">บางรัก</option>
												<option value="3">บ้านบึง</option>
												<option value="4">ศรีราชา</option>
												<option value="5">บางเลน</option>
												<option value="6">กำแพงแสน</option>
												<option value="7">แกลง</option>
												<option value="8">ปลวกแดง</option>
												
									</select>
								</div>
							</div>
							<div class="form-group row">
								<label class="col-lg-4 col-form-label" for="subdistrict">ตำบล<span class="text-danger">*</span>
								</label>
								<div class="col-lg-6">
									<select name="farmer.subdistrict.name" id="subdistrict" class="col-lg-6"
												placeholder="" required>
												<option value=""></option>
												<option value="1">กำแพงแสน</option>
												<option value="2">ทุ่งบัว</option>
												<option value="3">สี่พระยา</option>
												<option value="4">สีลม</option>
												<option value="5">บางเลน</option>
												<option value="6">บางปลา</option>
												<option value="7">บ่อวิน</option>
												<option value="8">เมืองศรีราชา</option>
												<option value="9">บ้านบึง</option>
												<option value="10">ตลิ่งชัน</option>
												<option value="11">ปลวกแดง</option>
												<option value="12">แกลง</option>
												
									</select>
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

