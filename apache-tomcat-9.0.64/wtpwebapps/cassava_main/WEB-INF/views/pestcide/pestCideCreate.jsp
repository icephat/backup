<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="../layouts/mainLayout.jsp" />
<title>pestCreate Page</title>
<jsp:include page="../layouts/mainLayoutStylesheet.jsp" />
</head>
<body>
	<div class="container-fluid">
		<div class="row justify-content-center">
			<div class="col-lg-12">
				<div class="card">
					<div class="card-body">
						<h4 class="card-title">ศัตรูพืช > รายละเอียด</h4>
						<div class="form-validation">
							<form class="form-valide"
								action="${pageContext.request.contextPath }/pest/pestUpdate"
								method="post">
								<div class="form-group row">
									<label class="col-lg-4 col-form-label" for="val-username">ชื่อสามัญ<span
										class="text-danger">*</span>
									</label>
									<div class="col-lg-6">
										<input type="text" class="form-control" id="val-username"
											name="val-username" placeholder="">
									</div>
								</div>
								<div class="form-group row">
									<label class="col-lg-4 col-form-label" for="val-username">%สารออกฤทธิ์ และสูตร<span
										class="text-danger">*</span>
									</label>
									<div class="col-lg-6">
										<input type="text" class="form-control" id="val-username"
											name="val-username" placeholder="">
									</div>
								</div>
								<div class="form-group row">
									<label class="col-lg-4 col-form-label" for="val-username">กลุ่มกลไกการออกฤทธิ์<span
										class="text-danger">*</span>
									</label>
									<div class="col-lg-6">
										<input type="text" class="form-control" id="val-username"
											name="val-username" placeholder="">
									</div>
								</div>
								<div class="form-group row">
									<label class="col-lg-4 col-form-label" for="val-username">ระดับความเป็นพิษ<span
										class="text-danger">*</span>
									</label>
									<div class="col-lg-6">
										<input type="text" class="form-control" id="val-username"
											name="val-username" placeholder="">
									</div>
								</div>
								<div class="form-group row">
									<label class="col-lg-4 col-form-label" for="val-username">อัตราการใช้<span
										class="text-danger">*</span>
									</label>
									<div class="col-lg-6">
										<input type="text" class="form-control" id="val-username"
											name="val-username" placeholder="">
									</div>
								</div>
								<input type="hidden" name="#" value="#">
								<div class="form-group row">
									<div class="col-lg-8 ml-auto">
										<input
											type="submit" class="btn btn-primary" role="button"
											value="Add">
									</div>
								</div>
							</form>
						</div>
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
									<tr>
										<td>ไทอะมีทอกแซม</td>
										<td>25% WG</td>
										<td>4A</td>
										<td>(>1,563)</td>
										<td>4 กรัม/น้ำ 20 ลิตร</td>
										<td><a
											href="${pageContext.request.contextPath}/pestCide/pestCideEdit"
											class="btn btn-info" role="button">แก้ไข</a> <a
											href="${pageContext.request.contextPath}/pestCide/pestCideDelete"
											class="btn btn-danger" role="button">ลบ</a></td>
									</tr>
									<tr>

										<td>ไทอะมีทอกแซม</td>
										<td>25% WG</td>
										<td>4A</td>
										<td>(>1,563)</td>
										<td>4 กรัม/น้ำ 20 ลิตร</td>
										<td><a
											href="${pageContext.request.contextPath}/pestCide/pestCideEdit"
											class="btn btn-info" role="button">แก้ไข</a> <a
											href="${pageContext.request.contextPath}/pestCide/pestCideDelete"
											class="btn btn-danger" role="button">ลบ</a></td>
									</tr>
									<tr>

										<td>ไทอะมีทอกแซม</td>
										<td>25% WG</td>
										<td>4A</td>
										<td>(>1,563)</td>
										<td>4 กรัม/น้ำ 20 ลิตร</td>
										<td><a
											href="${pageContext.request.contextPath}/pestCide/pestCideEdit"
											class="btn btn-info" role="button">แก้ไข</a> <a
											href="${pageContext.request.contextPath}/pestCide/pestCideDelete"
											class="btn btn-danger" role="button">ลบ</a></td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="text-center"><a
											href="${pageContext.request.contextPath}/pest/pestCreate"
											class="btn btn-primary" role="button">บันทึก</a>
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