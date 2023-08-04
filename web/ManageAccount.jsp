<%-- 
    Document   : ManageAccount
    Created on : Apr 30, 2022, 4:07:50 PM
    Author     : thinh
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="keywords" content="Bootstrap, Landing page, Template, Registration, Landing">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/line-icons.css">
        <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
        <link rel="stylesheet" href="assets/css/owl.theme.default.css">
        <link rel="stylesheet" href="assets/css/slicknav.min.css">
        <link rel="stylesheet" href="assets/css/animate.css">
        <link rel="stylesheet" href="assets/css/main.css">
        <link rel="stylesheet" href="assets/css/responsive.css">
        <title>JSP Page</title>
    </head>
    <body>
        <header id="home" class="hero-area">
            <jsp:include page="Menu.jsp"></jsp:include>
            </header>
            <div class="page-header">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="inner-header">
                                <h3>Manage</h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="content">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-4 col-md-4 col-xs-12">
                            <div class="right-sideabr">
                                <h4>Manage</h4>
                                <ul class="list-item">
                                    <li><a href="#">Notifications <span class="notinumber">2</span></a></li>
                                    <li><a href="managejobs">Manage Jobs</a></li>
                                    <li><a class="active" href="manageaccount">Manage Account</a></li>
                                    <li><a href="changepassword">Change Password</a></li>
                                    <li><a href="logout">Log Out</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-8 col-md-8 col-xs-12">
                            <div class="job-alerts-item candidates">
                                <h3 class="alerts-title">Manage Account</h3>
                                <div class="alerts-list">
                                    <div class="row">
                                        <div class="col-lg-3 col-md-3 col-xs-12">
                                            <p>ID</p>
                                        </div>
                                        <div class="col-lg-3 col-md-3 col-xs-12">
                                            <p>User</p>
                                        </div>
                                        <div class="col-lg-3 col-md-3 col-xs-12">
                                            <p>Role</p>
                                        </div>
                                        <div class="col-lg-3 col-md-3 col-xs-12">
                                            <p>Action</p>
                                        </div>
                                    </div>
                                </div>
                            <c:forEach items="${listA}" var="o">
                                <div class="alerts-content">
                                    <div class="row">
                                        <div class="col-lg-3 col-md-5 col-xs-12">
                                            <h3>${o.id}</h3>
                                        </div>
                                        <div class="col-lg-3 col-md-2 col-xs-12">
                                            <div><i class="lni-user"></i>${o.user}</div>
                                        </div>
                                        <div class="col-lg-3 col-md-3 col-xs-12">
                                            <c:if test="${o.isAdmin==1}">
                                                <div class="full-time">Admin</div>
                                            </c:if>
                                        </div>
                                        <div class="col-lg-3 col-md-2 col-xs-12">
                                            <form action="deleteaccount" method="POST">
                                                <div class="row">
                                                    <div class="col-lg-6 col-md-6 col-xs-12">
                                                        <a> <input class="btn-danger" style="font-size: 11px" type="submit" value="Admin/User" onclick="if (confirm('Are you sure about that?'))
                                                            form.action = 'updateaccount?UserID=${o.id}';
                                                        else
                                                            return false;"/>  
                                                        </a>
                                                    </div>
                                                    <div class="col-lg-6 col-md-6 col-xs-12">
                                                        <a> <input style="font-size: 11px; margin-right: 5px" class="btn-danger" type="submit" value="Delete" onclick="if (confirm('Are you sure about that?'))
                                                            form.action = 'deleteaccount?UserID=${o.id}';
                                                        else
                                                            return false;"/>  
                                                        </a>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                            <br>
                            <ul class="pagination">
                                <c:forEach begin="1" end="${end}" var="i">
                                    <li class="${tag == i?"active":""}"><a href="manageaccount?index=${i}">${i}</a></li>
                                    </c:forEach>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="Footer.jsp"></jsp:include>
        <a href="#" class="back-to-top">
            <i class="lni-arrow-up"></i>
        </a>
        <div id="preloader">
            <div class="loader" id="loader-1"></div>
        </div>
        <script src="assets/js/jquery-min.js"></script>
        <script src="assets/js/popper.min.js"></script>
        <script src="assets/js/owl.carousel.min.js"></script>     
        <script src="assets/js/jquery.slicknav.js"></script>     
        <script src="assets/js/jquery.counterup.min.js"></script>      
        <script src="assets/js/waypoints.min.js"></script>     
        <script src="assets/js/form-validator.min.js"></script>
        <script src="assets/js/contact-form-script.js"></script>   
        <script src="assets/js/main.js"></script>
    </body>
</html>
