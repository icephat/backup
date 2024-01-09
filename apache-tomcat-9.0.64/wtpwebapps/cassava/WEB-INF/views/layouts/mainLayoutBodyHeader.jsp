<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
            <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
                <!--*******************
        Preloader start
    ********************-->
                <div id="preloader">
                    <div class="loader">
                        <svg class="circular" viewBox="25 25 50 50">
                            <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="3"
                                stroke-miterlimit="10" />
                        </svg>
                    </div>
                </div>
                <!--*******************
        Preloader end
    ********************-->


                <!--**********************************
        Main wrapper start
    ***********************************-->
                <div id="main-wrapper">

                    <!--**********************************
            Nav header start
        ***********************************-->
                    <div class="nav-header">
                        <div class="brand-logo">
                            <a href="${pageContext.request.contextPath }/home">

                                <!--**********************************
                    <b class="logo-abbr"><img src="{{ asset('images/logo.png')}}" alt=""> </b>
                    <span class="logo-compact"><img src="{{ asset('images/logo-compact.png')}}" alt=""></span>
                    <span class="brand-title">
                        <img src="{{ asset('images/logo-text.png')}}" alt="">
                    </span>
		***********************************-->

                            </a>
                        </div>
                    </div>
                    <!--**********************************
            Nav header end
        ***********************************-->

                    <!--**********************************
            Header start
        ***********************************-->
                    <div class="header">
                        <div class="header-content clearfix">
                            <div class="nav-control">
                                <div class="hamburger">
                                    <span class="toggle-icon"><i class="icon-menu"></i></span>
                                </div>
                            </div>
                            <div class="header-left">
                                <div class="input-group icons">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text bg-transparent border-0 pr-2 pr-sm-3"
                                            id="basic-addon1"><i class="mdi mdi-magnify"></i></span>
                                    </div>
                                    <input type="search" class="form-control" placeholder="Search Dashboard"
                                        aria-label="Search Dashboard">
                                    <div class="drop-down animated flipInX d-md-none">
                                        <form action="#">
                                            <input type="text" class="form-control" placeholder="Search">
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <div class="header-right">
                                <ul class="clearfix">
                                    <li class="icons dropdown"><a href="javascript:void(0)" data-toggle="dropdown">
                                            <i class="mdi mdi-email-outline"></i>
                                            <span class="badge badge-pill gradient-1">3</span>
                                        </a>
                                        <div class="drop-down animated fadeIn dropdown-menu">
                                            <div class="dropdown-content-heading d-flex justify-content-between">
                                                <span class="">3 New Messages</span>
                                                <a href="javascript:void()" class="d-inline-block">
                                                    <span class="badge badge-pill gradient-1">3</span>
                                                </a>
                                            </div>
                                            <div class="dropdown-content-body">
                                                <ul>
                                                    <li class="notification-unread">
                                                        <a href="javascript:void()">
                                                            <img class="float-left mr-3 avatar-img"
                                                                src="${pageContext.request.contextPath }/resources/images/avatar/1.jpg"
                                                                alt="">
                                                            <div class="notification-content">
                                                                <div class="notification-heading">Saiful Islam</div>
                                                                <div class="notification-timestamp">08 Hours ago</div>
                                                                <div class="notification-text">Hi Teddy, Just wanted to
                                                                    let you ...
                                                                </div>
                                                            </div>
                                                        </a>
                                                    </li>
                                                    <li class="notification-unread">
                                                        <a href="javascript:void()">
                                                            <img class="float-left mr-3 avatar-img"
                                                                src="${pageContext.request.contextPath }/resources/images/avatar/2.jpg"
                                                                alt="">
                                                            <div class="notification-content">
                                                                <div class="notification-heading">Adam Smith</div>
                                                                <div class="notification-timestamp">08 Hours ago</div>
                                                                <div class="notification-text">Can you do me a favour?
                                                                </div>
                                                            </div>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:void()">
                                                            <img class="float-left mr-3 avatar-img"
                                                                src="${pageContext.request.contextPath }/resources/images/avatar/3.jpg"
                                                                alt="">
                                                            <div class="notification-content">
                                                                <div class="notification-heading">Barak Obama</div>
                                                                <div class="notification-timestamp">08 Hours ago</div>
                                                                <div class="notification-text">Hi Teddy, Just wanted to
                                                                    let you ...
                                                                </div>
                                                            </div>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:void()">
                                                            <img class="float-left mr-3 avatar-img"
                                                                src="${pageContext.request.contextPath }/resources/images/avatar/4.jpg"
                                                                alt="">
                                                            <div class="notification-content">
                                                                <div class="notification-heading">Hilari Clinton</div>
                                                                <div class="notification-timestamp">08 Hours ago</div>
                                                                <div class="notification-text">Hello</div>
                                                            </div>
                                                        </a>
                                                    </li>
                                                </ul>
                                                0
                                            </div>
                                        </div>
                                    </li>
                                    <li class="icons dropdown"><a href="javascript:void(0)" data-toggle="dropdown"> <i
                                                class="mdi mdi-bell-outline"></i>
                                            <c:if test="${amount > 0}">
                                                <span class="badge badge-pill gradient-2">${amount}</span>
                                            </c:if>

                                        </a>
                                        <div class="drop-down animated fadeIn dropdown-menu dropdown-notfication">
                                            <div class="dropdown-content-heading d-flex justify-content-between">
                                                <c:if test="${amount > 0}">
                                                    <span class="">${amount} new Alert</span> <a
                                                        href="javascript:void()" class="d-inline-block"> <span
                                                            class="badge badge-pill gradient-2">${amount}</span>
                                                    </a>
                                                </c:if>
                                                <c:if test="${amount == 0}">
                                                    <span class="">Not new Alert</span> <a href="javascript:void()"
                                                        class="d-inline-block">
                                                    </a>
                                                </c:if>
                                            </div>
                                            <div class="dropdown-content-body">
                                                <c:if test="${amount > 0}">
                                                    <c:forEach items="${messageReceiverDTO}" var="messagereceiver">
                                                        <ul>
                                                            <li><a href="javascript:void()">
                                                                    <span
                                                                        class="mr-3 avatar-icon bg-success-lighten-2"><i
                                                                            class="mdi mdi-bell-outline"></i></span>
                                                                    <div class="notification-content">

                                                                        <h6 class="notification-heading">
                                                                            ${messagereceiver.title}</h6>
                                                                        <span
                                                                            class="notification-text">${messagereceiver.date}</span>

                                                                    </div>

                                                                </a></li>

                                                        </ul>
                                                    </c:forEach>
                                                </c:if>
                                                <div class="pull-right" style="margin-right: 10px;">
                                                    <a
                                                        href="${pageContext.request.contextPath}/alert/index">การแจ้งเตือนทั้งหมด</a>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <!--**********************************
                        <li class="icons dropdown d-none d-md-flex">
                            <a href="javascript:void(0)" class="log-user"  data-toggle="dropdown">
                                <span>English</span>  <i class="fa fa-angle-down f-s-14" aria-hidden="true"></i>
                            </a>
                            <div class="drop-down dropdown-language animated fadeIn  dropdown-menu">
                                <div class="dropdown-content-body">
                                    <ul>
                                        <li><a href="javascript:void()">English</a></li>
                                        <li><a href="javascript:void()">Dutch</a></li>
                                    </ul>
                                </div>
                            </div>
                        </li>
						**********************************-->

                                    <li class="icons dropdown">
                                        <div class="user-img c-pointer position-relative" data-toggle="dropdown">
                                            <span class="activity active"></span>
                                            <img src="${loggedUserPicture}" height="40" width="40" alt="">
                                        </div>
                                        <div class="drop-down dropdown-profile animated fadeIn dropdown-menu">
                                            <div class="dropdown-content-body">
                                                <ul>
                                                    <li>
                                                        <a href="app-profile.html"><i class="icon-user"></i>
                                                            <span>Profile</span></a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:void()">
                                                            <i class="icon-envelope-open"></i> <span>Inbox</span>
                                                            <div class="badge gradient-3 badge-pill gradient-1">3</div>
                                                        </a>
                                                    </li>

                                                    <hr class="my-2">
                                                    <li>
                                                        <a href="page-lock.html"><i class="icon-lock"></i> <span>Lock
                                                                Screen</span></a>
                                                    </li>
                                                    <li><a href="${pageContext.request.contextPath }/logout"><i
                                                                class="icon-key"></i>
                                                            <span>Logout</span></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!--**********************************
            Header end ti-comment-alt
        ***********************************-->

                    <!--**********************************
            Sidebar start
        ***********************************-->
                    <div class="nk-sidebar">
                        <div class="nk-nav-scroll">
                            <ul class="metismenu" id="menu">
                                <sec:authorize
                                    access="hasAnyRole('ROLE_systemAdmin','ROLE_fieldRegistrar','ROLE_infoAdmin')">
                                    <li>
                                        <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                                            <i class="icon-user menu-icon"></i><span class="nav-text">ผู้ใช้ระบบ</span>
                                        </a>
                                        <ul aria-expanded="false">
                                            <sec:authorize access="hasRole('ROLE_systemAdmin')">
                                                <li><a
                                                        href="${pageContext.request.contextPath }/organization/">หน่วยงาน</a>
                                                </li>
                                                <li><a
                                                        href="${pageContext.request.contextPath }/admin/">ผู้จัดการระบบ</a>
                                                </li>
                                            </sec:authorize>
                                            <sec:authorize
                                                access="hasAnyRole('ROLE_systemAdmin','ROLE_fieldRegistrar')">
                                                <li><a href="${pageContext.request.contextPath }/farmer/">เกษตรกร</a>
                                                </li>
                                                <li><a href="${pageContext.request.contextPath }/staff/">เจ้าหน้าที่</a>
                                                </li>
                                                <li><a
                                                        href="${pageContext.request.contextPath }/registcode/">รหัสลงทะเบียนเกษตรกร</a>
                                                </li>
                                                <li><a
                                                        href="${pageContext.request.contextPath }/registusercode/">รหัสลงทะเบียนเจ้าหน้าที่</a>
                                                </li>
                                            </sec:authorize>
                                            <sec:authorize access="hasAnyRole('ROLE_systemAdmin','ROLE_infoAdmin')">
                                                <li><a
                                                        href="${pageContext.request.contextPath }/message/index">แจ้งเตือนการระบาด</a>
                                                </li>
                                            </sec:authorize>
                                        </ul>
                                    </li>
                                </sec:authorize>

                                <sec:authorize access="hasRole('ROLE_systemAdmin')">
                                    <li>
                                        <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                                            <i class="icon-notebook menu-icon"></i><span
                                                class="nav-text">ข้อมูลพื้นฐาน</span>
                                        </a>
                                        <ul aria-expanded="false">
                                            <li><a
                                                    href="${pageContext.request.contextPath }/variety/index">พันธุ์มันสำปะหลัง</a>
                                            </li>
                                            <li><a href="${pageContext.request.contextPath }/pathogen/">เชื้อโรคพืช</a>
                                            </li>
                                            <li><a
                                                    href="${pageContext.request.contextPath }/disease/Index">โรคมันสำปะหลัง</a>
                                            </li>
                                            <li><a href="${pageContext.request.contextPath }/pest/">ศัตรูพืช</a></li>
                                            <li><a
                                                    href="${pageContext.request.contextPath }/naturalenemy/">ศัตรูธรรมชาติ</a>
                                            </li>
                                        </ul>
                                    </li>
                                </sec:authorize>

                                <sec:authorize access="hasAnyRole('ROLE_fieldRegistrar','ROLE_fieldResponsible')">
                                    <li>
                                        <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                                            <i class="icon-map menu-icon"></i><span class="nav-text">แปลงเพาะปลูก</span>
                                        </a>
                                        <ul aria-expanded="false">
                                            <sec:authorize access="hasRole('ROLE_fieldRegistrar')">
                                                <li><a
                                                        href="${pageContext.request.contextPath }/farmerorganization/index">เกษตรกรในหน่วยงาน</a>
                                                </li>
                                            </sec:authorize>

                                            <li><a
                                                    href="${pageContext.request.contextPath }/field/index">แปลงเพาะปลูก</a>
                                            </li>
                                        </ul>
                                    </li>
                                </sec:authorize>

                                <sec:authorize access="hasAnyRole('ROLE_staff','ROLE_farmer')">
                                    <li>
                                        <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                                            <i class="icon-magnifier menu-icon"></i><span
                                                class="nav-text">การสำรวจแปลง</span>
                                        </a>
                                        <ul aria-expanded="false">
                                            <li><a href="${pageContext.request.contextPath }/planting/">การเพาะปลูก</a>
                                            </li>
                                            <li><a href="${pageContext.request.contextPath }/survey/">การสำรวจ</a></li>
                                        </ul>
                                    </li>
                                </sec:authorize>
                                <li>
                                    <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                                        <i class="icon-paper-plane menu-icon"></i><span
                                            class="nav-text">ส่งออกข้อมูลหน่วยงาน</span>
                                    </a>
                                    <ul aria-expanded="false">
                                        <li><a
                                                href="${pageContext.request.contextPath}/permission/index">ขอสิทธิ์ส่งออกการสำรวจ</a>
                                        </li>
                                        <li><a
                                                href="${pageContext.request.contextPath}/permission/request">อนุมัติสิทธิ์ส่งออกการสำรวจ</a>
                                        </li>
                                        <li><a
                                                href="${pageContext.request.contextPath}/permissionexport/index">ส่งออกการสำรวจ</a>
                                        </li>
                                        <li><a
                                                href="${pageContext.request.contextPath}/permissionexport/approveIndex">อนุมัติส่งออกการสำรวจ</a>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                                        <i class="icon-paper-plane menu-icon"></i><span
                                            class="nav-text">ส่งออกข้อมูลระบบ</span>
                                    </a>

                                    <ul aria-expanded="false">
                                        <li><a href="${pageContext.request.contextPath}/permissionsystem/index">สิทธิ์ส่งออกข้อมูลทุกหน่วยงาน</a></li>
                                        <li><a href="${pageContext.request.contextPath}/permissionsystem/request">อนุมัติสิทธิ์ส่งออกข้อมูลทุกหน่วยงาน</a></li>
                                        <li><a href="">ขอส่งออกข้อมูลทุกหน่วยงาน</a></li>
                                        <li><a href="">อนุมัติส่งออกข้อมูลทุกหน่วยงาน</a></li>
                                        <li><a href="">ส่งออกข้อมูลทุกหน่วยงาน</a></li>
                                    </ul>

                                </li>


                                <sec:authorize
                                    access="hasAnyRole('ROLE_imageExaminer','ROLE_imageExporter','systemAdmin')">
                                    <li>
                                        <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                                            <i class="icon-eyeglass menu-icon"></i><span
                                                class="nav-text">ข้อมูลภาพ</span>
                                        </a>
                                        <ul aria-expanded="false">
                                            <sec:authorize access="hasRole('ROLE_imageExaminer')">
                                                <li><a
                                                        href="${pageContext.request.contextPath }/approve/Index">ตรวจสอบภาพ</a>
                                                </li>
                                            </sec:authorize>
                                            <sec:authorize access="hasRole('ROLE_imageExporter')">
                                                <li><a
                                                        href="${pageContext.request.contextPath }/export/index">ส่งออกภาพ</a>
                                                </li>
                                            </sec:authorize>
                                            <sec:authorize access="hasAnyRole('ROLE_imageExaminer')">
                                                <li><a
                                                        href="${pageContext.request.contextPath }/export/imagesumaryperson">สถิติการตรวจสอบ</a>
                                                </li>
                                            </sec:authorize>
                                            <sec:authorize access="hasAnyRole('ROLE_imageExaminer','systemAdmin')">
                                                <li><a
                                                        href="${pageContext.request.contextPath }/export/imagesumary">รายงานการตรวจสอบ</a>
                                                </li>
                                            </sec:authorize>
                                        </ul>
                                    </li>
                                </sec:authorize>


                                <li>
                                    <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                                        <i class="icon-paper-plane menu-icon"></i><span class="nav-text">API</span>
                                    </a>
                                    <ul aria-expanded="false">
                                        <li><a href="">สิทธิ์ส่งออก API</a></li>
                                        <li><a href="">อนุมัติสิทธิ์ส่งออก API</a></li>
                                        <li><a href="">ข้อมูล API</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                                        <i class="icon-paper-plane menu-icon"></i><span
                                            class="nav-text">สรุปข้อมูล</span>
                                    </a>
                                    <ul aria-expanded="false">
                                        <li><a href="">ข้อมูลสรุป 1</a></li>
                                        <li><a href="">ข้อมูลสรุป 2</a></li>
                                        <li><a href="">ข้อมูลสรุป 3</a></li>
                                        <li><a href="${pageContext.request.contextPath }/map/">แผนที่การระบาด</a></li>
                                    </ul>
                                </li>

                            </ul>
                        </div>
                    </div>
                    <!--**********************************
            Sidebar end
        ***********************************-->