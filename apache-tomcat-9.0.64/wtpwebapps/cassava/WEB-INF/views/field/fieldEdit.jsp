<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="../layouts/mainLayoutHead.jsp" />
<!-- Custom Stylesheet -->
	<link rel="stylesheet"
		href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/style.css" >
<meta charset="UTF-8">
<title>FieldEdit Page</title>
<style type="text/css">
		.inputerror {
			border: 0;
			color: red;
			background-color: white;
			width:500px;
		}
	</style>
</head>
<body>
	<jsp:include page="../layouts/mainLayoutBodyHeader.jsp" />

	<!--**********************************
	            Content body start
	***********************************-->
		<div class="content-body">

		<div class="container-fluid">
			<form id="fieldData"
				modelAttribute="field" enctype="multipart/form-data">
				<div class="row">
					<div class="col-lg-12">
						<div class="card">
							<div class="card-body">
								<div class="form-validation">
									<h4 class="card-title">แปลงเพาะปลูก > รายละเอียด</h4>
									<div class="form-group row">
										<label class="col-lg-4 col-form-label" for="val-username">code
										</label>
										<div class="col-lg-6">
											<input type="text" class="form-control" id="code" name="code"
												value="${field.code}">
										</div>
									</div>
									<div class="form-group row">
										<label class="col-lg-4 col-form-label" for="val-username">ชื่อแปลง 
										</label>
										<div class="col-lg-6">
											<input type="text" class="form-control" id="name" name="name"
												value="${field.name}">
										</div>
									</div>
									<div class="form-group row">
										<label class="col-lg-4 col-form-label" for="val-username">เจ้าของแปลง
											
										</label>
										<div class="col-lg-6">
											<select name="framownerid" id="framownerid" class="form-control">
												<c:forEach items="${farmer}" var="farmer">
													<option value="${farmer.user.userId}"   
													<c:if test = "${farmer.user.userId==farmerOwner.user.userId}">
    													selected
   												   </c:if>>${farmer.user.title} ${farmer.user.firstName} ${farmer.user.lastName}(${farmer.user.username})</option>
												</c:forEach>
											</select>
										</div>
									</div>
									<br>
									<div class="form-group row">
										<label class="col-lg-4 col-form-label" for="val-username">ที่อยู่<span
											class="text-danger">*</span>
										</label>
										<div class="col-lg-6">
											<input type="text" class="form-control" id="addressCheck"
												name="address" value="${field.address}">
												<input class="inputerror" id="address" cssClass = "error" disabled/>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-lg-4 col-form-label" for="val-username">หมู่
										</label>
										<div class="col-lg-6">
											<input type="text" class="form-control" id="moo" name="moo"
												value="${field.moo}">
										</div>
									</div>

									<div class="form-group row">
										<label class="col-lg-4 col-form-label" for="val-username">ถนน
										</label>
										<div class="col-lg-6">
											<input type="text" class="form-control" id="road" name="road"
												value="${field.road}">
										</div>
									</div>
									<div class="form-group row">
										<label class="col-lg-4 col-form-label" for="val-username">จังหวัด<span
											class="subdistrict.name">*</span>
										</label>
										<div class="col-lg-6">
											<select name="subdistrict.district.province"
												id="province" class="form-control" required>
												<c:forEach items="${provinces}" var="province">
													<option value="${province.provinceId}"
													<c:if test = "${province.provinceId==fieldprovinces.provinceId}">
    													selected
   												   </c:if>
													>${province.name}</option>
												</c:forEach>
											</select>
											<input class="inputerror" id="provinces" cssClass = "error" disabled/>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-lg-4 col-form-label" for="val-username">อำเภอ
											<span class="text-danger">*</span>
										</label>
										<div class="col-lg-6">
											<select name="subdistrict.district.districtId"
												id="district" class="form-control" required>
												<c:forEach items="${district}" var="district">
													<option value="${district.districtId}"
													<c:if test = "${district.districtId==fielddistrict.districtId}">
    													selected
   												   </c:if>
													>${district.name}</option>
												</c:forEach>
											</select>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-lg-4 col-form-label" for="val-username">ตำบล<span
											class="text-danger">*</span>
										</label>
										<div class="col-lg-6">
											<select name="subdistrict.subdistrictId"
												id="subdistrict" class="form-control" required>
												<c:forEach items="${subdistrict}" var="subdistrict">
													<option value="${subdistrict.subdistrictId}"
													<c:if test = "${subdistrict.subdistrictId==fieldsubdistrict.subdistrictId}">
    													selected
   												   </c:if>
													>${subdistrict.name}</option>
												</c:forEach>
											</select>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-lg-4 col-form-label" for="val-username">ขนาดพื้นที่(ไร่)<span
											class="text-danger">*</span>
										</label>
										<div class="col-lg-6">
											<input type="text" class="form-control" id="sizeCheck" name="size"
												value="${field.size}">
											<input class="inputerror" id="size" cssClass = "error" disabled/>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-lg-4 col-form-label" for="val-username">จุดสังเกตแปลง
										</label>
										<div class="col-lg-6">
											<input type="text" class="form-control" id="val-username"
												name="landmark" value="${field.landmark}">
										</div>
									</div>
									<div class="form-group row">
										<label class="col-lg-4 col-form-label" for="val-username" >ละติจูด<span
											class="text-danger">*</span>
										</label>
										<div class="col-lg-6">
											<input type="text" class="form-control" id="latitudeCheck"
												name="latitude" value="${field.latitude}">
											<input class="inputerror" id="latitude" cssClass = "error" disabled/>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-lg-4 col-form-label" for="val-username">ลองจิจูด<span
											class="text-danger">*</span>
										</label>
										<div class="col-lg-6">
											<input type="text" class="form-control" id="longitudeCheck"
												name="longitude" value="${field.longitude}">
											<input class="inputerror" id="longitude" cssClass = "error" disabled/>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-lg-4 col-form-label" for="val-username">ความสูงจากระดับน้ำทะเล<span
											class="text-danger"></span>
										</label>
										<div class="col-lg-6">
											<input type="text" class="form-control" id="val-username"
												name="metresAboveSeaLv" value="${field.metresAboveSeaLv}">
										</div>
									</div>
									<div class="form-group row">
										<label class="col-lg-4 col-form-label" for="val-username">รูป<span
											class="text-danger"></span>
										</label>
										<div class="col-lg-6">
											 <input type="file" id="imageUpload" accept="image/*" onchange="previewImage(event)"name="img" >
											 <div class="row justify-content-center">
    										<img id="preview" src="data:image/jpeg;base64,${image.image}" alt="Image Preview" style="max-width: 200px; max-height: 200px; display: none;object-fit: cover;">
    										</div>
										</div>
									</div>

									<div class="form-group row">
										<div class="col-lg-8 ml-auto">
											<a href="${pageContext.request.contextPath}/field/index"
												class="btn btn-light" role="button">กลับ</a>
											<input type="submit" class="btn btn-primary" role="button" id="button"
											value="บันทึก">
										</div>
									</div>
									<input type="hidden" value="${field.fieldId}" name="fieldId">
								</div>
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
	<!--**********************************
	     Content body end
	***********************************-->
	<jsp:include page="../layouts/mainLayoutBodyFooter.jsp" />
	<script>
		$(function() {
			$("#button").click(
					function () {
						let address = document.getElementById("addressCheck").value;
						let size = document.getElementById("sizeCheck").value;
						let longitude = document.getElementById("longitudeCheck").value;
						let latitude = document.getElementById("latitudeCheck").value;
						var formData = new FormData($('#fieldData')[0]);
						$("#address").val("");
						$("#latitude").val("");
						$("#longitude").val("");
						$("#size").val("");
						$("#provinces").val("");
						let error = false;
						if(address==""){
							$("#address").val("กรุณากรอกที่อยู่");
							error = true;
						}
						if(size==""){
							error = true;
							$("#size").val("กรุณากรอกขนานพื้นที่");
							error = true;
						}else if(isNaN(size)){
							$('#size').val('กรุณากรอกขนานพื้นที่เป็นตัวเลข');
							error = true;
						}
						if(latitude==""){
							$("#latitude").val("กรุณากรอกละติจูด");
							error = true;
						}else if(isNaN(latitude)){
							$('#latitude').val('กรุณากรอกละติจูดเป็นตัวเลข');
							error = true;
						}
						if(longitude==""){
							$("#longitude").val("กรุณากรอกลองจิจูด");
							error = true;
						}else if(isNaN(longitude)){
							$('#longitude').val('กรุณากรอกลองจิจูดตัวเลข');
							error = true;
						}
						if(error==true){
							return false;
							}
						
						$.ajax({
							url: "${pageContext.request.contextPath}/field/update",
							type: 'POST',
							data: formData,
							dataType: 'json',
							success: function (response) {
							
								window.location.href = "${pageContext.request.contextPath}/field/index";
							},
							error: function (response) {
								const respJSON = response["responseText"];
								const myObj = JSON
									.parse(respJSON);
								for (var key in myObj.body) {
									$('#' + key).val(myObj.body[key]);
								}
								return false;
							},
							cache: false,
							contentType: false,
							processData: false
						});
						return false;
					});
			$("#province").change(
					function() {
						var selectedProvice = $("#province option:selected").val();
						if (selectedProvice == "") {
							$('#district').html("");
							$('#subdistrict').html("");
							return;
						}
						$.ajax({
									method : "GET",
									url : "${pageContext.request.contextPath}/province/"+ selectedProvice,
									success : function(response) {
										$('#district').html(response);
										console.log(response) ;
										var selectedDistrict = $("#district option:selected").val();
										$.ajax({
													method : "GET",
													url : "${pageContext.request.contextPath}/district/"+ selectedDistrict,
													success : function(response) {
														$('#subdistrict').html(response);
														console.log(response) ;
													},

												});
									},

								});

					});

	$("#district")
			.change(
					function() {
						var selectedDistrict = $("#district option:selected").val();
						$.ajax({
									method : "GET",
									url : "${pageContext.request.contextPath}/district/"+ selectedDistrict,
									success : function(response) {
										$('#subdistrict').html(response);
									},

								});

					});
			$("#uploadBtn")
					.click(
							function() {
								var proid = $(this).val();
								$.ajax({
											url : "${pageContext.request.contextPath }/field/userinField2",
											type : 'GET',
											data : data,
											success : function(data) {
												console.log("in")

											}
										})
							})

		})
		console.log("in") ;
		 function previewImage(event) {
            const file = event.target.files[0];
            const reader = new FileReader();

            reader.onload = function(e) {
                const previewElement = document.getElementById('preview');
                previewElement.src = e.target.result;
                previewElement.style.display = 'block';
            }

            reader.readAsDataURL(file);
        }
		 var check = [];
		 check.push('${image.image}');
		 console.log(check[0]);

		 if (check[0] !== '') {
		   console.log("in");
		   const previewElement = document.getElementById('preview');
		   previewElement.style.display = 'block';
		 }
	</script>
</body>
</html>