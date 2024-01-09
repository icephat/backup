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
		<div class="container-fluid">
			<div class="row justify-content-center">
				<div class="col-lg-12">
					<div class="card">
						<div class="card-body">
							<div class="form-validation">
								<form:form class="form-valide" action="${pageContext.request.contextPath }/field/fieldSave" method="post"
									modelAttribute = "fieldsave"
								>
									<div class="form-group row">
										<label class="col-lg-4 col-form-label" for="val-username">ชื่อแปลง <span class="text-danger">*</span>
										</label>
										<div class="col-lg-6">
											<input type="text" class="form-control" id="val-username" name="name" placeholder="ชื่อแปลง">
										</div>
									</div>
									<!-- 
									<div class="form-group row">
										<label class="col-lg-4 col-form-label" for="val-email">เจ้าของแปลง <span class="text-danger">*</span>
										</label>
										<div class="col-lg-6">
											<input type="text" class="form-control" id="val-email" name="val-email" placeholder="นางสวย สินสาคร">
										</div>
									</div> -->
									<div class="form-group row">
										<label class="col-lg-4 col-form-label" for="val-address">ที่อยู่ <span class="text-danger">*</span>
										</label>
										<div class="col-lg-6">
											<input type="text" class="form-control" id="val-address" name="address" placeholder="ที่อยู่แปลง" required>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-lg-4 col-form-label" for="val-road">ถนน <span class="text-danger">*</span>
										</label>
										<div class="col-lg-6">
											<input type="text" class="form-control" id="val-road" name="road" placeholder="ถนน">
										</div>
									</div>
									<div class="form-group row">
										<label class="col-lg-4 col-form-label" for="val-moo">หมู่ <span class="text-danger">*</span>
										</label>
										<div class="col-lg-6">
											<input type="text" class="form-control" id="val-moo" name="moo" placeholder="หมู่ที่">
										</div>
									</div>
									 
									<div class="form-group row">
										<label class="col-lg-4 col-form-label" for="val-skill">ตำบล <span class="text-danger">*</span>
										</label>
										<div class="col-lg-6">
											<select class="form-control" id="val-skill" name="subdistrictid" required>
												<option value="">เลือกตำบล</option>
												<c:forEach items="${subdistricts}" var ="subdistrict">
													<option value="${subdistrict.subdistrictId}">${subdistrict.name}</option>
												</c:forEach>
											</select>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-lg-4 col-form-label" for="val-landmark">Landmark <span class="text-danger">*</span>
										</label>
										<div class="col-lg-6">
											<input type="text" class="form-control" id="val-currency" name="landmark" placeholder="landmark">
										</div>
									</div>
									<div class="form-group row">
										<label class="col-lg-4 col-form-label" for="val-latitude">ค่าละติจูด <span class="text-danger">*</span>
										</label>
										<div class="col-lg-6">
											<input type="number" step="any" class="form-control" id="val-latitude" name="latitude" placeholder="0.00" required>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-lg-4 col-form-label" for="val-longitude">ค่าลองติจูด <span class="text-danger">*</span>
										</label>
										<div class="col-lg-6">
											<input type="number" step="any" class="form-control" id="val-longitude" name="longitude" placeholder="0.00" required>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-lg-4 col-form-label" for="val-digits">ความสูงจากระดับน้ำทะเล <span class="text-danger">*</span>
										</label>
										<div class="col-lg-6">
											<input type="number" step="any" class="form-control" id="val-digits" name="metresAboveSeaLv" placeholder="0.00">
										</div>
									</div>
									<div class="form-group row">
										<label class="col-lg-4 col-form-label" for="val-number">ขนาดแปลง(ไร่) <span class="text-danger">*</span>
										</label>
										<div class="col-lg-6">
											<input type="text"  step="any" class="form-control" id="val-number" name="size" placeholder="0.00">
										</div>
									</div>
									<div class="form-group row">
										<label class="col-lg-4 col-form-label" for="val-skill">ตำบล <span class="text-danger">*</span>
										</label>
										<div class="col-lg-6">
											<select class="form-control" id="val-skill" name="status" required>
												<option value="">เลือกสถานะ</option>
												<option value="ใช้งาน">ใช้งาน</option>
												<option value="ยกเลิก">ยกเลิก</option>
											</select>
										</div>
									</div>
									
									<div class="form-group row">
										<div class="col-lg-8 ml-auto">
											<button type="submit" class="btn btn-primary">Submit</button>
										</div>
									</div>
								</form:form>
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