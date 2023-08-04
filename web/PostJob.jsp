<%-- 
    Document   : PostJob
    Created on : Apr 28, 2022, 8:40:05 PM
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
        <link rel="stylesheet" href="assets/css/summernote.css">
        <link rel="stylesheet" href="assets/css/main.css">
        <link rel="stylesheet" href="assets/css/responsive.css">
        <title>JSP Page</title>
    </head>
    <header id="home" class="hero-area">
        <jsp:include page="Menu.jsp"></jsp:include>
        </header>
        <div class="page-header">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="inner-header">
                            <h3>Post A Job</h3>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <section class="section">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-9 col-md-12 col-xs-12">
                        <div class="post-job box">
                            <h3 class="job-title">Post a new Job</h3>
                            <form class="form-ad" action="postjob" method="post">
                                <div class="form-group">
                                    <label class="control-label">Job Title</label>
                                    <input type="text" name="jName" class="form-control" placeholder="Write job title" required>
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Company</label>
                                    <input type="text" name="company" class="form-control" placeholder="Write company name" required>
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Logo Company</label>
                                    <input type="text" name="logo" class="form-control" placeholder="Paste link logo" required>
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Location <span>(optional)</span></label>
                                    <input type="text" name="location" class="form-control" placeholder="e.g.London" required>
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Category</label>
                                    <div class="search-category-container">
                                        <label class="styled-select">
                                            <select name="CategoryID" class="dropdown-product selectpicker">
                                            <c:forEach var="o" items="${listC}">
                                                <option value="${o.id}">${o.name}</option>
                                            </c:forEach>
                                        </select>
                                    </label>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label">Type</label>
                                <div class="search-category-container">
                                    <label class="styled-select">
                                        <select name="type" class="dropdown-product selectpicker">
                                            <option value="FULL TIME">FULL TIME</option>
                                            <option value="PART TIME">PART TIME</option>
                                        </select>
                                    </label>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label">Salary</label>
                                <input type="number" name="salary" class="form-control" placeholder="$/year" required>
                            </div>
                            <section id="editor">
                                <div class="form-group">
                                    <label for="comment">Description</label>
                                    <textarea class="form-control" name="desc" rows="5" id="comment" required></textarea>
                                </div>
                                <div class="form-group">
                                    <label for="comment">JD</label>
                                    <textarea class="form-control" name="jd" rows="5" id="comment" required></textarea>
                                </div>
                            </section>
                            <div class="form-group">
                                <label class="control-label">Application email</label>
                                <input type="email" name="email" class="form-control" placeholder="Enter an email address" required>
                            </div>
                            <div class="form-group">
                                <label class="control-label">Application phone</label>
                                <input type="text" name="phone" class="form-control" placeholder="Enter an number phone" required>
                            </div>
                            <div class="form-group">
                                <label class="control-label">Closing Date <span>(optional)</span></label>
                                <input type="date" min="1000-01-01" max="2050-12-31" name="closingDate" class="form-control" required>
                            </div>
                            <input type="submit" class="btn btn-common" value="Submit your job">
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <footer>
        <section class="footer-Content">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-3 col-xs-12">
                        <div class="widget">
                            <div class="footer-logo"><img src="assets/img/logo-footer.png" alt=""></div>
                            <div class="textwidget">
                                <p>Sed consequat sapien faus quam bibendum convallis quis in nulla. Pellentesque volutpat odio eget diam cursus semper.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-4 col-xs-12">
                        <div class="widget">
                            <h3 class="block-title">Quick Links</h3>
                            <ul class="menu">
                                <li><a href="#">About Us</a></li>
                                <li><a href="#">Support</a></li>
                                <li><a href="#">License</a></li>
                                <li><a href="#">Contact</a></li>
                            </ul>
                            <ul class="menu">
                                <li><a href="#">Terms & Conditions</a></li>
                                <li><a href="#">Privacy</a></li>
                                <li><a href="#">Refferal Terms</a></li>
                                <li><a href="#">Product License</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-4 col-xs-12">
                        <div class="widget">
                            <h3 class="block-title">Subscribe Now</h3>
                            <p>Sed consequat sapien faus quam bibendum convallis.</p>
                            <form method="post" id="subscribe-form" name="subscribe-form" class="validate">
                                <div class="form-group is-empty">
                                    <input type="email" value="" name="Email" class="form-control" id="EMAIL" placeholder="Enter Email..." required="">
                                    <button type="submit" name="subscribe" id="subscribes" class="btn btn-common sub-btn"><i class="lni-envelope"></i></button>
                                    <div class="clearfix"></div>
                                </div>
                            </form>
                            <ul class="mt-3 footer-social">
                                <li><a class="facebook" href="#"><i class="lni-facebook-filled"></i></a></li>
                                <li><a class="twitter" href="#"><i class="lni-twitter-filled"></i></a></li>
                                <li><a class="linkedin" href="#"><i class="lni-linkedin-fill"></i></a></li>
                                <li><a class="google-plus" href="#"><i class="lni-google-plus"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </footer>
    <a href="#" class="back-to-top">
        <i class="lni-arrow-up"></i>
    </a>
    <div id="preloader">
        <div class="loader" id="loader-1"></div>
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
