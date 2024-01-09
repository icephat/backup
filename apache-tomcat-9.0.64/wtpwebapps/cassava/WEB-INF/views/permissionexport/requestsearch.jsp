<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="../layouts/mainLayoutHead.jsp" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css">
<meta charset="UTF-8">
<title>sec Index</title>
<!-- Custom Stylesheet -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/style.css">

</head>
<body>
	<jsp:include page="../layouts/mainLayoutBodyHeader.jsp" />


	<!--**********************************
	            Content body start
	***********************************-->
	<div class="content-body">
		<div class="container-fluid">

			<div class="row">
				<div class="col-12">
					<div class="card">
						<div class="card-body">
							<h4 class="card-title">ขอส่งออกการสำรวจ</h4>
							<p align="right">
								<a
									href="${pageContext.request.contextPath}/permissionexport/index"
									class="btn btn-light" role="button">กลับ</a>
							</p>
							<form
								action="${pageContext.request.contextPath }/permissionexport/surveySearch"
								method="post">
								<div class="form-group">
									<label for="message-text" class="col-form-label">ช่วงเวลาข้อมูล
										(วันที่เริ่ม - วันสิ้นสุด)</label>
									<div class="input-daterange input-group" id="date-range">
										<input type="date" class="form-control" name="dateStart"
											value="${datestart}" required> <span
											class="input-group-addon bg-info b-0 text-white">
											จนถึงวันที </span> <input type="date" class="form-control"
											value="${dateend}" name="dateEnd" required>
									</div>
								</div>
								<div class="row ">
									<div class="col-md-3">
										<label for="val-username" class="form-label">ชื่อแปลง</label>
										<input type="text" class="form-control" name="fieldname"
											value="${fieldname}">
									</div>
									<div class="col-md-3">
										<p>โรค</p>
										<select name="disease" id="disease" class="selectpicker"
											multiple required>
											<option value=""
												<c:if test="${check[0][0]==0 }">
												selected="selected"
												</c:if>>ไม่มี</option>
											<option value=""
												<c:if test="${check[0][0]-1==listdisease.size() }">	
												selected="selected"
												</c:if>>เลือกทั้งหมด</option>
											<c:forEach items="${listdisease}" var="disease"
												varStatus="loop">
												<option value="${disease.targetOfSurveyId}"
													<c:if test="${check[0][loop.index+1]==1 }">
												selected="selected"
												</c:if>>${disease.name}</option>
											</c:forEach>
										</select>
									</div>
									<div class="col-md-3">
										<p>แมลงศัตรูพืช</p>
										<select name="pest" id="pest" class="selectpicker" multiple
											required>
											<option value=""
												<c:if test="${check[1][0]==0 }">
												selected="selected"
												</c:if>>ไม่มี</option>
											<option value=""
												<c:if test="${check[1][0]-1==listpest.size() }">
												selected="selected"
												</c:if>>เลือกทั้งหมด
											</option>
											<c:forEach items="${listpest}" var="pest" varStatus="loop">
												<option value="${pest.targetOfSurveyId}"
													<c:if test="${check[1][loop.index+1]==1 }">
												selected="selected"
												</c:if>>${pest.name}</option>
											</c:forEach>
										</select>
									</div>
									<div class="col-md-3">
										<p>ศัตรูธรรมชาติ</p>
										<select name="naturalenemy" id="naturalenemy"
											class="selectpicker" multiple required>
											<option value=""
												<c:if test="${check[2][0]==0 }">
												selected="selected"
												</c:if>>ไม่มี</option>
											<option value=""
												<c:if test="${check[2][0]-1==listnaturalenemy.size() }">
												selected="selected"
												</c:if>>เลือกทั้งหมด</option>
											<c:forEach items="${listnaturalenemy}" var="naturalenemy"
												varStatus="loop">
												<option value="${naturalenemy.targetOfSurveyId}"
													<c:if test="${check[2][loop.index+1]==1 }">
												selected="selected"
												</c:if>>${naturalenemy.name}</option>
											</c:forEach>
										</select>
									</div>
									<div class="col-md-3">
										<p>จังหวัด</p>
										<select name="province" id="province" class="selectpicker"
											multiple required>
											<option value=""
												<c:if test="${check[3][0]-1==listprovince.size() }">
												selected="selected"
												</c:if>>เลือกทั้งหมด</option>
											<c:forEach items="${listprovince}" var="province">
												<option value="${province.provinceId}"
													<c:if test="${check[3][loop.index+1]==1 }">
												selected="selected"
												</c:if>>${province.name}</option>
											</c:forEach>
										</select>
									</div>
									<label><input type="checkbox" id="select-all">
										Select All </label>
								</div>
								<div class=" ">
									<div>
										<p align="center">
											<button type="submit" class="btn btn-info">ค้นหา</button>
										</p>
									</div>
								</div>
							</form>
						</div>
					</div>
					<div class="card">
						<div class="card-body">

							<form
								action="${pageContext.request.contextPath }/permission/requestdetailSave"
								modelAttribute="requestdetail" method="post">
								<div class="table-responsive">
									<table
										class="table table-striped table-bordered zero-configuration">
										<thead>
											<tr>
												<th>เลือก</th>
												<th>วันที่สำรวจ</th>
												<th>ชื่อแปลง</th>
												<th>อำเภอ</th>
												<th>จังหวัด</th>												
												<th>สิ่งสำรวจ</th>
												<th>ความรุนแรง</th>
												<th>%การพบ</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${listsurvey}" var="surveytarget">
												<tr>
													<td>
														<p align="center">
															<input type="checkbox" class="form-check-input"
																name="listsurveyid"
																value="${surveytarget[0].surveyTargetId}">
														</p>
													</td>
													<td>${formatter.format(surveytarget[0].survey.date)}</td>
													<td>${surveytarget[0].survey.planting.field.name}</td>
													<td>${surveytarget[0].survey.planting.field.subdistrict.district.name}</td>
													<td>${surveytarget[0].survey.planting.field.subdistrict.district.province.name}</td>
													<td><c:choose>
															<c:when test="${surveytarget[2].equals('dis')}">
   																โรค
 															 </c:when>
															<c:when test="${surveytarget[2].equals('pes')}">
   																แมลงศัตรูพืช
 															 </c:when>
															<c:when test="${surveytarget[2].equals('nat')}">
   																ศัตรูธรรมชาติ
  															</c:when>
														</c:choose></td>
													<td>${surveytarget[0].targetofsurvey.name}</td>
													<td><a
														href="${pageContext.request.contextPath}/survey/summary/${surveytarget[0].survey.surveyId}"
														class="btn btn-info" role="button">Info</a></td>
												</tr>
											</c:forEach>
										</tbody>

									</table>

									<div class="table-responsive">
										<p align="center">
											<a
												href="${pageContext.request.contextPath}/permissionexport/permissions"
												class="btn btn-light" role="button">กลับ</a>
											<button type="submit" class="btn mb-1 btn-primary">ขอส่งออกข้อมูล</button>

										</p>
									</div>
							</form>

						</div>
					</div>
				</div>
			</div>
		</div>

	</div>
	</div>
	<jsp:include page="../layouts/mainLayoutBodyFooter.jsp" />
	<script>
	$(document).ready(function() {
		  $('.selectpicker').selectpicker();
		  $('.selectpicker').on('changed.bs.select', function(e, clickedIndex, isSelected, previousValue) {
			var id = this.id;
			if(id==='province'){
				var provinceIds = []; // Create an empty JavaScript array to hold the naturalEnemyIds
				  <c:forEach items="${listprovince}" var="province">
				  provinceIds.push('${province.provinceId}'); // Add naturalEnemyId value to the array
				  </c:forEach>
				if (clickedIndex === 0 && isSelected) {
				      $(this).selectpicker('selectAll');
				}else if (clickedIndex === 0 && !isSelected) {
					  $(this).selectpicker('deselectAll');
				}else if (previousValue[0] === 'เลือกทั้งหมด' && clickedIndex > 0 && !isSelected){
			    	$(this).find('option:eq(0)').prop('selected', false);
			    }else if (previousValue.length+1 === provinceIds.length && isSelected){
			    	$(this).find('option:eq(0)').prop('selected', true);
			    } 
			}else {
				 if (clickedIndex === 1 && isSelected) {
				      $(this).selectpicker('selectAll');
				      $(this).find('option:eq(0)').prop('selected', false);
				    } else if (clickedIndex === 1 && !isSelected) {
				      $(this).selectpicker('deselectAll');
				      $(this).find('option:eq(0)').prop('selected', true);
				    } else if (previousValue[0] === 'เลือกทั้งหมด' && clickedIndex > 1 && !isSelected){
				    	$(this).find('option:eq(1)').prop('selected', false);
				    }
				    if (!isSelected && previousValue.length === 1) {
				    	 $(this).find('option:eq(0)').prop('selected', true);
				    }
				    if(clickedIndex === 0 && isSelected){
						$(this).selectpicker('deselectAll');
						  $(this).find('option:eq(0)').prop('selected', true);
					}else if (isSelected && previousValue.length >= 1) {
				    	$(this).find('option:eq(0)').prop('selected', false);
					}
				    var check = true ;
				    for (var i = 0; i < previousValue.length; i++) {
				        var va = previousValue[i];
				        if (va === 'ไม่มี' || va === 'เลือกทั้งหมด') {
				          check = false;
				        }
				      }
				    if(check&&(clickedIndex!=0&&clickedIndex!=1)){
				    	console.log('in') ;
				    if ( isSelected && id ==='naturalenemy') {
				    	var naturalEnemyIds = []; // Create an empty JavaScript array to hold the naturalEnemyIds
						  <c:forEach items="${listnaturalenemy}" var="naturalenemy">
						    naturalEnemyIds.push('${naturalenemy.targetOfSurveyId}'); // Add naturalEnemyId value to the array
						  </c:forEach>
							if(previousValue.length+1 === naturalEnemyIds.length||(isSelected&&previousValue[0]=='ไม่มี'&&naturalEnemyIds.length==1)){
					    	$(this).find('option:eq(1)').prop('selected', true);
							}
					}else if ( isSelected && id ==='pest') {
				    	var pestIds = []; // Create an empty JavaScript array to hold the naturalEnemyIds
						  <c:forEach items="${listpest}" var="pest">
						  pestIds.push('${pest.targetOfSurveyId}'); // Add naturalEnemyId value to the array
						  </c:forEach>
							if(previousValue.length+1 === pestIds.length||(isSelected&&pestIds.length==1)){
					    	$(this).find('option:eq(1)').prop('selected', true);
							}
					}else if ( isSelected && id ==='disease') {
				    	var diseaseIds = []; // Create an empty JavaScript array to hold the naturalEnemyIds
						  <c:forEach items="${listdisease}" var="disease">
						  diseaseIds.push('${disease.targetOfSurveyId}'); // Add naturalEnemyId value to the array
						  </c:forEach>
							if(previousValue.length+1 === diseaseIds.length){
					    	$(this).find('option:eq(1)').prop('selected', true);
							}
					}
				    }
			}//&&previousValue[0]!='ไม่มี'&&previousValue[0]!='เลือกทั้งหมด'||(isSelected&&previousValue[0]=='ไม่มี'&&diseaseIds.length==1)
			$(this).selectpicker('refresh');
		  });
		});
	const selectAll = document.querySelector("#select-all");
    const items = document.querySelectorAll(".form-check-input");
    
    selectAll.addEventListener("click", () => {
      items.forEach(item => {
        item.checked = selectAll.checked;
      });
    });

    items.forEach(item => {
      item.addEventListener("click", () => {
        const allChecked = document.querySelectorAll(".form-check-input:checked").length === items.length;
        selectAll.checked = allChecked;
      });
    });
	</script>
	<script
		src="${pageContext.request.contextPath }/resources/plugins/tables/js/jquery.dataTables.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/plugins/tables/js/datatable/dataTables.bootstrap4.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/plugins/tables/js/datatable-init/datatable-basic.min.js"></script>
</body>
</body>
</html>