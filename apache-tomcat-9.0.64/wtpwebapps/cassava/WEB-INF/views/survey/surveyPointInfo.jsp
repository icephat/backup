<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<jsp:include page="../layouts/mainLayoutHead.jsp" />
<!-- Custom Stylesheet -->
<style type="text/css">
/* =============================================
* RADIO BUTTONS
=============================================== */
#radios label {
	cursor: pointer;
	position: relative;
}

#radios label+label {
	margin-left: 1px;
}

input[type="radio"] {
	opacity: 0;
	/* hidden but still tabable */
	position: absolute;
}

input[type="radio"]+span {
	font-family: 'Material Icons';
	/*  color check  */
	color: #6F63F2D4;
	border-radius: 25%;
	padding: 4px;
	transition: all 0.4s;
	-webkit-transition: all 0.4s;
}

input[type="radio"]:checked+span {
	color: #D9E7FD;
	background-color: #6F63F2D4;
}

input[type="radio"]:focus+span {
	color: #fff;
}
</style>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/style.css">
<link
	href="${pageContext.request.contextPath }/resources/plugins/tables/css/datatable/dataTables.bootstrap4.min.css"
	rel="stylesheet">
<!-- FormStep -->
<link href="https://fonts.googleapis.com/css?family=Raleway"
	rel="stylesheet">
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
							<form id="regForm" modelAttribute="SurveyTargetPointDTO"
								method="POST"
								action="${pageContext.request.contextPath }/survey/point/save">
								<h4 class="card-title">การสำรวจ > การเพาะปลูก ${surveyTarget.survey.planting.name}(${surveyTarget.survey.planting.code}) - ข้อมูลสำรวจ > ${surveyTarget.targetofsurvey.name}
								</h4>
								<div class="card-body">
									<div class="row">
										<div class="col-12">
											<div class="table-responsive" style="width: auto;">
												<table class="table header-border"
													style="text-align: center;">
													<thead>
														<tr>
															<th style="padding: 36px;"></th>
															<c:forEach items="${pointNumber}" var="point">
																<th>จุดที่ ${point+1}</th>
															</c:forEach>
														</tr>
													</thead>
													<tbody>
														<c:forEach items="${itemNumber}" var="item" varStatus="j">
															<tr>
																<td>ต้นที่ ${item+1}</td>
																<c:forEach items="${pointNumber}" var="point"
																	varStatus="i">
																	<td>
																		<div class="container">
																			<div class="radio_container">
																				<c:forEach var="ii" begin="0" end="5">


																					<label
																						for="surveyTargetPointDTO.surveyValue[${i.index}][${j.index}]<c:if test="
																						${ii> 0}">${ii}</c:if>"
																						class="material-icons"> <input
																						type="radio"
																						name="surveyValue[${i.index}][${j.index}]"
																						id="surveyTargetPointDTO.surveyValue[${i.index}][${j.index}]<c:if test="
																							${ii> 0}">${ii}</c:if>"
																						value="${ii}"
																						<c:if
																							test="${surveyTargetPointDTO.surveyValue[i.index][j.index] == ii}">
																							checked</c:if>>
																						<span>${ii}</span>
																					</label>
																				</c:forEach>
																				<span> <a
																					href="${pageContext.request.contextPath }/survey/image/${surveyTargetPointDTO.surveyTargetPointIdList[i.index][j.index]}"
																					data-toggle="tooltip" data-placement="top"
																					title="จัดการภาพถ่าย"><span class="badge badge-pill gradient-3 badge-primary">${countImage[i.index][j.index]} <i
																						class="fa fa-camera m-r-5" style="color: #FFFFF0;"></i></span> </a>
																				</span>
																			</div>
																			<input type="hidden"
																				name="surveyTargetPointIdList[${i.index}][${j.index}]"
																				value="${surveyTargetPointDTO.surveyTargetPointIdList[i.index][j.index]}">
																		</div>
																	</td>
																</c:forEach>
															</tr>
														</c:forEach>
													</tbody>
												</table>
											</div>
											<p align="center">
												<label class="inline-label"><input
													style="display: inline-block; opacity: 1; position: static;"
													type="radio" name="status" value="Editing"
													<c:if
														test="${surveyTarget.status == 'Editing'}"> checked</c:if>>อยู่ระหว่างกรอกข้อมูล
												</label> <label class="inline-label"> <input
													style="display: inline-block; opacity: 1; position: static;"
													type="radio" name="status" value="Complete"
													<c:if
														test="${surveyTarget.status != 'Editing'}"> checked</c:if>>
													กรอกข้อมูลครบแล้ว
												</label>
											</p>
											<input type="hidden" name="surveyTargetId"
												value="${surveyTarget.surveyTargetId }">
											<p align="center">
												<a
													href="${pageContext.request.contextPath }/survey/point/${surveyId}"
													class="btn btn-light" role="button">กลับ</a> <input
													type="submit" class="btn btn-primary" role="button"
													value="บันทึก" />
											</p>
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="../layouts/mainLayoutBodyFooter.jsp" />
</html>