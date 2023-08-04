<%-- 
    Document   : ChangePassword
    Created on : Apr 30, 2022, 11:50:26 PM
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
        <link rel="stylesheet" href="assets/css/style.css">
        <title>JSP Page</title>
    </head>
    <body>
        <header id="home" class="hero-area">
            <jsp:include page="Menu.jsp"></jsp:include>
            </header>
            <div id="content">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-4 col-md-4 col-xs-12">
                            <div class="right-sideabr">
                                <h4>Manage</h4>
                                <ul class="list-item">
                                    <li><a href="#">Notifications <span class="notinumber">2</span></a></li>
                                    <li><a href="managejobs">Manage Jobs</a></li>
                                    <c:if test="${sessionScope.isAdmin == 1}">

                                    <li><a href="manageaccount">Manage Account</a></li>
                                    </c:if>                                
                                <li><a class="active" href="changepassword">Change Password</a></li>
                                <li><a href="logout">Log Out</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-8 col-sm-8 col-xs-12">
                        <div class="job-alerts-item">
                            <h3 class="alerts-title">Change Password</h3>
                            <form class="form" action="changepassword" method="post">
                                <div class="form-group is-empty">
                                    <label class="control-label">Old Password*</label>
                                    <input class="form-control" type="password" name="old" required>
                                    <span class="material-input"></span>
                                </div>
                                <div class="form-group is-empty">
                                    <label class="control-label">New Password*</label>
                                    <input class="form-control" type="password" name="new" required>
                                    <span class="material-input"></span>
                                </div>
                                <div class="form-group is-empty">
                                    <label class="control-label">Confirm New Password*</label>
                                    <input class="form-control" type="password" name="cfnew" required>
                                    <span class="material-input"></span>
                                </div>
                                <input type="submit" class="btn btn-common" value="Save change"/>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="assets/js/jquery-min.js"></script>
        <script src="assets/js/popper.min.js"></script>
        <script src="assets/js/color-switcher.js"></script>
        <script src="assets/js/owl.carousel.min.js"></script>
        <script src="assets/js/jquery.slicknav.js"></script>
        <script src="assets/js/jquery.counterup.min.js"></script>
        <script src="assets/js/waypoints.min.js"></script>
        <script src="assets/js/form-validator.min.js"></script>
        <script src="assets/js/contact-form-script.js"></script>
        <script src="assets/js/main.js"></script>
    </body>
</html>
