<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="h-100" >
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>
    <!--*******************
        Preloader start
    ********************-->
    <div id="preloader">
        <div class="loader">
            <svg class="circular" viewBox="25 25 50 50">
                <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="3" stroke-miterlimit="10" />
            </svg>
        </div>
    </div>
    <!--*******************
        Preloader end
    ********************-->

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
								<a class="text-center">
									<h4>ลงทะเบียนด้วยบัญชี Google</h4>
									<h5 class="text-primary">${userName}</h5>
								</a>
																							
								 <form class="mt-5 mb-5 login-input" action="/cassava/register/farmer/confirm" method="post">
                                    <div class="form-group">
                                        <label class="form-check-label">
                                            <input type="checkbox" class="form-check-input" value="1" name="check">ยอมรับเงื่อนไขทั้งหมด</label>
                                        <p><span class="text-danger"></span></p>
                                        
                                        <c:if test="${check == 0}">
                                        	<span style="color: red">กรุณากดยอมรับเงื่อนไข</span>
                                        </c:if>
                                    </div>
                                    <p align="center">
                                        <a href="${pageContext.request.contextPath}/register/code" class="btn mb-1 btn-light">กลับ</a>
                                        <button class="btn btn-primary">ยืนยัน</button>
                                    </p>
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