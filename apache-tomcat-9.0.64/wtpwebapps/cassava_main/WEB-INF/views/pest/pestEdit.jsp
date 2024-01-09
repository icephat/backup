<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<jsp:include page="../layouts/mainLayoutHead.jsp" />
<!-- Custom Stylesheet -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/image-uploader.min.css">
<link
	href="https://fonts.googleapis.com/css?family=Lato:300,700|Montserrat:300,400,500,600,700|Source+Code+Pro&display=swap"
	rel="stylesheet">
</head>
<body>
	<jsp:include page="../layouts/mainLayoutBodyHeader.jsp" />
	<div class="content-body">
	<div class="container-fluid">
		<div class="row justify-content-center">
			<div class="col-lg-12">
				<div class="card">
					<div class="card-body">
						<h4 class="card-title">ศัตรูพืช > รายละเอียด</h4>
						<div class="form-validation">
							<form class="form-valide"
								action="${pageContext.request.contextPath }/pest/pestUpdate"
								method="post" modelAttribute="pestDTO"
								enctype="multipart/form-data">
								<div class="form-group row">
									<label class="col-lg-4 col-form-label" for="val-username">ชื่อ<span
										class="text-danger">*</span>
									</label>
									<div class="col-lg-6">
										<input type="text" class="form-control" id="val-username"
											name="pest.name" placeholder="" value=${pest.name}>
									</div>
								</div>
								<div class="form-group row">
									<label class="col-lg-4 col-form-label" for="val-username">ชื่อวิทยาศาสตร์<span
										class="text-danger">*</span>
									</label>
									<div class="col-lg-6">
										<input type="text" class="form-control" id="val-username"
											name="pest.scientificName" placeholder=""
											value=${pest.scientificName}>
									</div>
								</div>
								<div class="form-group row">
									<label class="col-lg-4 col-form-label" for="val-username">แหล่งที่มา<span
										class="text-danger">*</span>
									</label>
									<div class="col-lg-6">
										<input type="text" class="form-control" id="val-username"
											name="pest.source" placeholder="" value=${pest.source}>
									</div>
								</div>
								<input type="hidden" name="pest.pestId" value="${pest.pestId}">
								<div class="form-group row">
									<div class="col-lg-8 ml-auto">
										<a href="${pageContext.request.contextPath}/pest/pestIndex"
											class="btn btn-light" role="button">กลับ</a> <input
											type="submit" class="btn btn-primary" role="button"
											value="บันทึก">
									</div>
								</div>
							</form>
						</div>
						<div class="row">
								<a
									href="${pageContext.request.contextPath}/pest/pestImageEdit/${pest.pestId}"
									class="btn btn-info" role="button">เพิ่ม / แก้ไขภาพ</a>
							</div>
							<div class="row">
								<div class="col-lg-10">
									<c:forEach items="${dtoList}" var="dto" varStatus="loop">
										<img alt="" class=" thumbnail  mt-4" width="150" height="150"
											src="data:image/jpeg;base64,${dto.image}">
									</c:forEach>
								</div>
							</div>
						<h4>สารป้องกันกำจัดศัตรูพืช</h4>
						<div class="table-responsive">
							<table
								class="table table-striped table-bordered zero-configuration">
								<thead>
									<tr>
										<th>ชื่อสามัญ</th>
										<th>%สารออกฤทธิ์ และสูตร</th>
										<th>กลุ่มกลไกการออกฤทธิ์</th>
										<th>ระดับความเป็นพิษ</th>
										<th>อัตราการใช้</th>
										<th>รายละเอียด</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${pestcides}" var="pestcide">
										<tr>
											<td>${pestcide.pesticideName}</td>
											<td>${pestcide.percentApi}WG</td>
											<td>${pestcide.pesticideMechanism}A</td>
											<td>(>${pestcide.toxicityLevel})</td>
											<td>${pestcide.mixingRatio}</td>
											<td><a
												href="${pageContext.request.contextPath}/pestcide/pestCideEdit/${pestcide.pestManagementId}"
												class="btn btn-info" role="button">แก้ไข</a> <a
												href="${pageContext.request.contextPath}/pestcide/pestCideDelete/${pestcide.pestManagementId}"
												class="btn btn-danger" role="button">ลบ</a></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
						<h4 class="card-title">สารป้องกันกำจัดศัตรูพืช > เพิ่มข้อมูล</h4>
						<div class="form-validation">
							<form class="form-valide"
								action="${pageContext.request.contextPath }/pestcide/pestCideSave"
								method="post" modelAttribute="pestCide">
								<div class="form-group row">
									<label class="col-lg-4 col-form-label" for="val-username">ชื่อสามัญ<span
										class="text-danger">*</span>
									</label>
									<div class="col-lg-6">
										<input type="text" class="form-control" id="val-username"
											name="pesticideName" placeholder="">
									</div>
								</div>
								<div class="form-group row">
									<label class="col-lg-4 col-form-label" for="val-username">ชื่อสามัญ(ภาษาอังกฤษ)<span
										class="text-danger">*</span>
									</label>
									<div class="col-lg-6">
										<input type="text" class="form-control" id="val-username"
											name="pesticideNameEng" placeholder="">
									</div>
								</div>
								<div class="form-group row">
									<label class="col-lg-4 col-form-label" for="val-username">%สารออกฤทธิ์
										และสูตร<span class="text-danger">*</span>
									</label>
									<div class="col-lg-6">
										<input type="text" class="form-control" id="val-username"
											name="percentApi" placeholder="">
									</div>
								</div>
								<div class="form-group row">
									<label class="col-lg-4 col-form-label" for="val-username">กลุ่มกลไกการออกฤทธิ์<span
										class="text-danger">*</span>
									</label>
									<div class="col-lg-6">
										<input type="text" class="form-control" id="val-username"
											name="pesticideMechanism" placeholder="">
									</div>
								</div>
								<div class="form-group row">
									<label class="col-lg-4 col-form-label" for="val-username">ระดับความเป็นพิษ<span
										class="text-danger">*</span>
									</label>
									<div class="col-lg-6">
										<input type="text" class="form-control" id="val-username"
											name="toxicityLevel" placeholder="">
									</div>
								</div>
								<div class="form-group row">
									<label class="col-lg-4 col-form-label" for="val-username">อัตราการใช้(กรัม/ลิตร)<span
										class="text-danger">*</span>
									</label>
									<div class="col-lg-6">
										<input type="text" class="form-control" id="val-username"
											name="mixingRatio" placeholder="">
									</div>
								</div>
								<div class="form-group row">
									<label class="col-lg-4 col-form-label" for="val-username">คำแนะนำ<span
										class="text-danger">*</span>
									</label>
									<div class="col-lg-6">
										<select name="instruction" id="instruction" class="form-control"
											" required>
											<option value=""></option>
											<option value="ฉีดพ่นเฉพาะจุด">ฉีดพ่นเฉพาะจุด</option>
											<option value="แช่ท่อนพันธุ์">แช่ท่อนพันธุ์</option>
										</select>
									</div>
								</div>
								<div class="form-group row">
									<label class="col-lg-4 col-form-label" for="val-username">รายละเอียดคำแนะนำ<span
										class="text-danger">*</span>
									</label>
									<div class="col-lg-6">
										<input type="text" class="form-control" id="val-username"
											name="instructionDetail" placeholder="">
									</div>
								</div>
								<div class="form-group row">
									<label class="col-lg-4 col-form-label" for="val-username">สมุดจด<span
										class="text-danger">*</span>
									</label>
									<div class="col-lg-6">
										<input type="text" class="form-control" id="val-username"
											name="note" placeholder="">
									</div>
								</div>
								<input type="hidden" name="pest.pestId" value="${pest.pestId}">
								<div class="form-group row">
									<div class="col-lg-8 ml-auto">
										<input type="submit" class="btn btn-primary" role="button"
											value="Add">
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
	<script type="text/javascript"
		src="https://code.jquery.com/jquery-3.2.1.min.js"
		integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
		crossorigin="anonymous"></script>

	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/image-uploader.min.js"></script>

	<script>
		$(function() {

			var isChange = false;

			$('.input-images-2')
					.bind(
							'DOMNodeInserted DOMNodeRemoved',
							function(event) {
								if (event.type == 'DOMNodeInserted'
										&& !isChange) {
									isChange = true;
									let list = new DataTransfer();
									let fileInput = document
											.querySelector('#f');
									//fileList = fileInput.files ;

									for (var i = 0; i < fileInput.files.length; i++) {

										list.items.add(fileInput.files[i]);
										//alert(list.files[i].name);

									}
									//alert(fileList.length);
									//if(list.files.length < $('input[name^=pho]')[0].files.length)
									for (var i = 0; i < $('input[name^=pho]')[0].files.length; i++) {
										list.items
												.add($('input[name^=pho]')[0].files[i]);
									}

									//alert(list.files.length);

									fileInput.prop('files', list.files);
									//fileInput.files =$('input[name^=pho]')[0].files ;
									// fileInput.files = new FileListItems(list.files) ;
								} else {
									//isChange = true ;
									let fileInput = document
											.querySelector('#nmfiles');
									fileInput.files = $('input[name^=pho]')[0].files;
									//alert('Content removed! Current content:' + '\n\n' + this.innerHTML);
								}
							});

			$(".input-images-2").mouseover(function() {
				if (isChange) {
					let fileInput = document.querySelector('#nmfiles');
					fileInput.files = $('input[name^=pho]')[0].files;
				}
				isChange = false;

			});

			let preloaded = [
			//{id: 1, src: 'https://picsum.photos/500/500?random=1'},
			//{id: 2, src: 'https://picsum.photos/500/500?random=2'},
			//{id: 3, src: 'https://picsum.photos/500/500?random=3'},
			//{id: 4, src: 'https://picsum.photos/500/500?random=4'},
			//{id: 5, src: 'https://picsum.photos/500/500?random=5'},
			//{id: 6, src: 'https://picsum.photos/500/500?random=6'},
			];

			$('.input-images-2').imageUploader({
				preloaded : preloaded,
				imagesInputName : 'photos',
				preloadedInputName : 'old',
				maxSize : 2 * 1024 * 1024,
				maxFiles : 10
			});

			// Input and label handler
			$('input').on('focus', function() {
				$(this).parent().find('label').addClass('active')
			}).on('blur', function() {
				if ($(this).val() == '') {
					$(this).parent().find('label').removeClass('active');
				}
			});

			// Sticky menu
			let $nav = $('nav'), $header = $('header'), offset = 4 * parseFloat($(
					'body').css('font-size')), scrollTop = $(this).scrollTop();

			// Initial verification
			setNav();

			// Bind scroll
			$(window).on('scroll', function() {
				scrollTop = $(this).scrollTop();
				// Update nav
				setNav();
			});

			function setNav() {
				if (scrollTop > $header.outerHeight()) {
					$nav.css({
						position : 'fixed',
						'top' : offset
					});
				} else {
					$nav.css({
						position : '',
						'top' : ''
					});
				}
			}
		});
	</script>
</body>
</html>