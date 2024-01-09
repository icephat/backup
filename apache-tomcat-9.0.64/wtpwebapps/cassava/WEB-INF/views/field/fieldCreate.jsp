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
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/style.css">
<meta charset="UTF-8">
<title>FieldCreate Page</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/image-uploader.min.css">
<link
	href="https://fonts.googleapis.com/css?family=Lato:300,700|Montserrat:300,400,500,600,700|Source+Code+Pro&display=swap"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/style.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/image-uploader.min.css">
<link
	href="https://fonts.googleapis.com/css?family=Lato:300,700|Montserrat:300,400,500,600,700|Source+Code+Pro&display=swap"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<style type="text/css">
		.inputerror {
			border: 0;
			color: red;
			background-color: white;
			width:500px;
		}
		
.close {
	display: none;
}

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: "Poppins", sans-serif;
}

::selection {
	color: #fff;
	background: #6990F2;
}

.wrapper {
	width: 430px;
	background: #fff;
	border-radius: 5px;
	padding: 30px;
	box-shadow: 7px 7px 12px rgba(0, 0, 0, 0.05);
}

.wrapper header {
	color: #6990F2;
	font-size: 27px;
	font-weight: 600;
	text-align: center;
}

.wrapper form {
	height: 167px;
	display: flex;
	cursor: pointer;
	margin: 30px 0;
	align-items: center;
	justify-content: center;
	flex-direction: column;
	border-radius: 5px;
	border: 2px dashed #6990F2;
}

form :where(i, p) {
	color: #6990F2;
}

form i {
	font-size: 50px;
}

form p {
	margin-top: 15px;
	font-size: 16px;
}

section .row {
	margin-bottom: 10px;
	background: #E9F0FF;
	list-style: none;
	padding: 15px 20px;
	border-radius: 5px;
	display: flex;
	align-items: center;
	justify-content: space-between;
}

section .row i {
	color: #6990F2;
	font-size: 30px;
}

section .details span {
	font-size: 14px;
}

.progress-area .row .content {
	width: 100%;
	margin-left: 15px;
}

.progress-area .details {
	display: flex;
	align-items: center;
	margin-bottom: 7px;
	justify-content: space-between;
}

.progress-area .content .progress-bar {
	height: 6px;
	width: 100%;
	margin-bottom: 4px;
	background: #fff;
	border-radius: 30px;
}

.content .progress-bar .progress {
	height: 100%;
	width: 0%;
	background: #6990F2;
	border-radius: inherit;
}

.uploaded-area {
	max-height: 232px;
	overflow-y: scroll;
}

.uploaded-area.onprogress {
	max-height: 150px;
}

.uploaded-area::-webkit-scrollbar {
	width: 0px;
}

.uploaded-area .row .content {
	display: flex;
	align-items: center;
}

.uploaded-area .row .details {
	display: flex;
	margin-left: 15px;
	flex-direction: column;
}

.uploaded-area .row .details .size {
	color: #404040;
	font-size: 11px;
}

.uploaded-area i.fa-check {
	font-size: 16px;
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
			
				<div class="row">
					<div class="col-lg-12">
						<div class="card">
							<div class="card-body">
							<form id="fieldData"
				modelAttribute="field" method="post" enctype="multipart/form-data">
								<div class="form-validation">
									<h4 class="card-title">แปลงเพาะปลูก > รายละเอียด</h4>
									<div class="form-group row">
										<label class="col-lg-4 col-form-label" for="val-username">code
										</label>
										<div class="col-lg-6">
											<input type="text" class="form-control" id="code" name="code"
												value="">
										</div>
									</div>
									<div class="form-group row">
										<label class="col-lg-4 col-form-label" for="val-username">ชื่อแปลง
										</label>
										<div class="col-lg-6">
											<input type="text" class="form-control" id="name" name="name"
												value="">
										</div>
									</div>
									<div class="form-group row">
										<label class="col-lg-4 col-form-label" for="val-username">เจ้าของแปลง
											
										</label>
										<div class="col-lg-6">
											<select name="framownerid" id="framownerid"
												class="form-control">
												<c:forEach items="${farmer}" var="farmer">
													<option value="${farmer.user.userId}">${farmer.user.title}
														${farmer.user.firstName}
														${farmer.user.lastName}(${farmer.user.username})</option>
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
											<input type="text" class="form-control" 
												name="address" value="" id="addressCheck">
											<input class="inputerror" id="address" cssClass = "error" disabled/>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-lg-4 col-form-label" for="val-username">หมู่
										</label>
										<div class="col-lg-6">
											<input type="text" class="form-control" id="moo" name="moo"
												value="">
										</div>
									</div>

									<div class="form-group row">
										<label class="col-lg-4 col-form-label" for="val-username">ถนน
										</label>
										<div class="col-lg-6">
											<input type="text" class="form-control" id="road" name="road"
												value="">
										</div>
									</div>
									<div class="form-group row">
										<label class="col-lg-4 col-form-label" for="val-username">จังหวัด<span
											class="text-danger">*</span>
										</label>
										<div class="col-lg-6">
											<select name="subdistrict.district.province" id="province"
												class="form-control" >
												<option value=""></option>
												<c:forEach items="${provinces}" var="province">
													<option value="${province.provinceId}">${province.name}</option>
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
											<select name="subdistrict.district.districtId" id="district"
												class="form-control" >
												<option value=""></option>
											</select>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-lg-4 col-form-label" for="val-username">ตำบล<span
											class="text-danger">*</span>
										</label>
										<div class="col-lg-6">
											<select name="subdistrict.subdistrictId" id="subdistrict"
												class="form-control" >
												<option value=""></option>
											</select>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-lg-4 col-form-label" for="val-username">ขนาดพื้นที่(ไร่)<span
											class="text-danger">*</span>
										</label>
										<div class="col-lg-6">
											<input type="text" class="form-control"  name="size" id="sizeCheck"
												value="">
											<input class="inputerror" id="size" cssClass = "error" disabled/>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-lg-4 col-form-label" for="val-username">จุดสังเกตแปลง
										</label>
										<div class="col-lg-6">
											<input type="text" class="form-control" id="val-username"
												name="landmark" value="">
										</div>
									</div>

									<div class="form-group row">
										<label class="col-lg-4 col-form-label" for="val-username">ละติจูด<span
											class="text-danger">*</span>
										</label>
										<div class="col-lg-6">
											<input type="text" class="form-control"  id="latitudeCheck"
												name="latitude" value="">
											<input class="inputerror" id="latitude" cssClass = "error" disabled/>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-lg-4 col-form-label" for="val-username">ลองจิจูด<span
											class="text-danger">*</span>
										</label>
										<div class="col-lg-6">
											<input type="text" class="form-control"  id="longitudeCheck"
												name="longitude" value="">
											<input class="inputerror" id="longitude" cssClass = "error" disabled/>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-lg-4 col-form-label" for="val-username">ความสูงจากระดับน้ำทะเล<span
											class="text-danger"></span>
										</label>
										<div class="col-lg-6">
											<input type="text" class="form-control" id="val-username"
												name="metresAboveSeaLv" value="">
										</div>
									</div>
									<div class="form-group row">
										<label class="col-lg-4 col-form-label" for="val-username">รูป<span
											class="text-danger"></span>
										</label>
										<div class="col-lg-6">
											<input type="file" id="imageUpload" name="img"
												accept="image/*" onchange="previewImage(event)"> 
												<div class="row justify-content-center"><img
												id="preview" src="#" alt="Image Preview"
												style="max-width: 200px; max-height: 200px; display: none; object-fit: cover;">
												</div>

										</div>
									</div>
									

									<!--<div class="form-group row">
										<label class="col-lg-4 col-form-label" for="val-username">สถานะแปลง<span
											class="text-danger">*</span>
										</label>
										<div class="col-lg-6">
											<select name="status" id="status" class="form-control">
													<option value="ใช้งาน">ใช้งาน</option>
													<option value="ยกเลิก">ยกเลิก</option>
												
											</select>
										</div>
									</div>-->
									

								</div><div class="col-lg-8 ml-auto">
											<a
												href="${pageContext.request.contextPath }/field/index"
												class="btn btn-light" role="button">กลับ</a>
											<!--   <input
												type="submit" class="btn btn-primary" role="button"
												value="Next">-->
											<button id="uploadBtn" class="btn btn-primary">บันทึก</button>

										</div>
								</form>
								
							</div>
						</div>
					</div>
				</div>
			
			
		</div>
	</div>
	<!--**********************************
	     Content body end
	***********************************-->
	<jsp:include page="../layouts/mainLayoutBodyFooter.jsp" />
		<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/image-uploader.min.js"></script>
	<script>
		$(function() {
			$("#uploadBtn").click(
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
							url: "${pageContext.request.contextPath}/field/fieldsave",
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
			
			$("#province")
					.change(
							function() {
								var selectedProvice = $(
										"#province option:selected").val();
								if (selectedProvice == "") {
									$('#district').html("");
									$('#subdistrict').html("");
									return;
								}
								$
										.ajax({
											method : "GET",
											url : "${pageContext.request.contextPath}/province/"
													+ selectedProvice,
											success : function(response) {
												$('#district').html(response);
												console.log(response);
												var selectedDistrict = $(
														"#district option:selected")
														.val();
												$
														.ajax({
															method : "GET",
															url : "${pageContext.request.contextPath}/district/"
																	+ selectedDistrict,
															success : function(
																	response) {
																$(
																		'#subdistrict')
																		.html(
																				response);
																console
																		.log(response);
															},

														});
											},

										});

							});

			$("#district")
					.change(
							function() {
								var selectedDistrict = $(
										"#district option:selected").val();
								$
										.ajax({
											method : "GET",
											url : "${pageContext.request.contextPath}/district/"
													+ selectedDistrict,
											success : function(response) {
												$('#subdistrict')
														.html(response);
											},

										});

							});
			$("#framowner").click(function() {
				var proid = $(this).val();
				console.log(proid);
			})

		})
		function previewImage(event) {
			console.log(event);
			var element = document.getElementById('preview');
			element.value = "";
			const file = event.target.files[0];
			const reader = new FileReader();

			reader.onload = function(e) {
				const previewElement = document.getElementById('preview');
				previewElement.src = e.target.result;
				previewElement.style.display = 'block';
			}

			reader.readAsDataURL(file);
		}


    	$('.input-images-2').bind('DOMNodeInserted DOMNodeRemoved', function(event) {
    		if (event.type == 'DOMNodeInserted' && !isChange) {
    			isChange = true ;
    			let list = new DataTransfer();
    			let fileInput = document.querySelector('#f');
    			//fileList = fileInput.files ;
    			
    			for (var i = 0; i < fileInput.files.length; i++)
    			 {
    				
    				 list.items.add(fileInput.files[i]);
    				 //alert(list.files[i].name);
    			
    			 }
    			 //alert(fileList.length);
    			 //if(list.files.length < $('input[name^=pho]')[0].files.length)
    				 for (var i = 0; i < $('input[name^=pho]')[0].files.length; i++)
    				 {
    				   list.items.add($('input[name^=pho]')[0].files[i]);
    				 }

    			 //alert(list.files.length);
    			
    			 fileInput.prop('files', list.files);
    			 //fileInput.files =$('input[name^=pho]')[0].files ;
    			// fileInput.files = new FileListItems(list.files) ;
    		} else  {
    			//isChange = true ;
    			let fileInput = document.querySelector('#nmfiles');
    			fileInput.files =$('input[name^=pho]')[0].files ;
    			//alert('Content removed! Current content:' + '\n\n' + this.innerHTML);
    		}
    	});




           
    	
    	$( ".input-images-2" ).mouseover(function() {
    		if(isChange){
    			let fileInput = document.querySelector('#nmfiles');
    			fileInput.files =$('input[name^=pho]')[0].files ;
    		}
      		isChange = false ;
      		
    	});
    	




        let preloaded = [
           
        ];

        $('.input-images-2').imageUploader({
            preloaded: preloaded,
            imagesInputName: 'photos',
            preloadedInputName: 'old',
            maxSize: 2 * 1024 * 1024,
            maxFiles: 10
        });
        



        // Input and label handler
        $('input').on('focus', function () {
            $(this).parent().find('label').addClass('active')
        }).on('blur', function () {
            if ($(this).val() == '') {
                $(this).parent().find('label').removeClass('active');
            }
        });

        // Sticky menu
        let $nav = $('nav'),
            $header = $('header'),
            offset = 4 * parseFloat($('body').css('font-size')),
            scrollTop = $(this).scrollTop();

        // Initial verification
        setNav();

        // Bind scroll
        $(window).on('scroll', function () {
            scrollTop = $(this).scrollTop();
            // Update nav
            setNav();
        });

        function setNav() {
            if (scrollTop > $header.outerHeight()) {
                $nav.css({position: 'fixed', 'top': offset});
            } else {
                $nav.css({position: '', 'top': ''});
            }
        }
		    
	</script>
</body>
</html>