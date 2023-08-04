<%-- 
    Document   : Home
    Created on : Apr 28, 2022, 8:26:37 PM
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
        <meta name="author" content="UIdeck">
        
        <title>JSP Page</title>

        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/line-icons.css">
        <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
        <link rel="stylesheet" href="assets/css/owl.theme.default.css">
        <link rel="stylesheet" href="assets/css/slicknav.min.css">
        <link rel="stylesheet" href="assets/css/animate.css">
        <link rel="stylesheet" href="assets/css/main.css">    
        <link rel="stylesheet" href="assets/css/responsive.css">
    </head>
    <body>
        <header id="home" class="hero-area"> 
            <jsp:include page="Menu.jsp"></jsp:include>
                <div class="container">      
                    <div class="row space-100 justify-content-center">
                        <div class="col-lg-10 col-md-12 col-xs-12">
                            <div class="contents">
                                <h2 class="head-title">Find the job that fits your life</h2>
                                <div class="job-search-form">
                                    <form action="searchjob" method="post">
                                        <div class="row">
                                            <div class="col-lg-5 col-md-6 col-xs-12">
                                                <div class="form-group">
                                                    <input class="form-control" type="text" name="tittle" value="${search}" placeholder="Job Title">
                                                </div>
                                            </div>
                                            <div class="col-lg-3 col-md-6 col-xs-12">
                                                <div class="form-group">
                                                    <div class="search-category-container">
                                                        <label class="styled-select">
                                                            <select name="location">
                                                                <option value="NONE">Locations</option>
                                                                <option value="HA NOI">HA NOI</option>
                                                                <option value="HO CHI MINH">HO CHI MINH</option>
                                                                <option value="HAI PHONG">HAI PHONG</option>
                                                                <option value="CAN THO">CAN THO</option>
                                                                <option value="DA NANG">DA NANG</option>
                                                                <option value="BIEN HOA">BIEN HOA</option>
                                                                <option value="THU DUC">THU DUC</option>
                                                                <option value="HAI DUONG">HAI DUONG</option>
                                                                <option value="THUAN AN">THUAN AN</option>
                                                                <option value="HUE">HUE</option>
                                                            </select>
                                                        </label>
                                                    </div>
                                                    <i class="lni-map-marker"></i>
                                                </div>
                                            </div>
                                            <div class="col-lg-3 col-md-6 col-xs-12">
                                                <div class="form-group">
                                                    <div class="search-category-container">
                                                        <label class="styled-select">
                                                            <select name="category">
                                                                <option value="0">All Categories</option>
                                                                <c:forEach items="${allCategory}" var="o">
                                                                    <option value="${o.id}">${o.name}</option>
                                                                </c:forEach>
                                                        </select>
                                                    </label>
                                                </div>
                                                <i class="lni-layers"></i>
                                            </div>
                                        </div>
                                        <div class="col-lg-1 col-md-6 col-xs-12">
                                            <button type="submit" class="button"><i class="lni-search"></i></button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div> 
            </div>             
        </header>
        <section class="category section bg-gray">
            <div class="container">
                <div class="section-header">  
                    <h2 class="section-title">Browse Categories</h2>
                </div>
                <div class="row">
                    <c:forEach items="${allCategory}" var="o">
                        <div class="col-lg-3 col-md-6 col-xs-12 f-category">
                            <a href="alljob?CategoryID=${o.id}">
                                <div class="icon bg-color-1">${o.icon}</div>
                                <h3>${o.name}</h3>
                                <p>(${o.countjob})</p>
                            </a>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </section>
        <div id="browse-jobs" class="section bg-gray">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-12 col-sm-12">
                        <div class="text-wrapper">
                            <div>
                                <h3>7,000+ Browse Jobs</h3>
                                <p>Search all the open positions on the web. Get your own personalized salary estimate. Read reviews on over 600,000 companies worldwide. The right job is out there.</p>
                                <a class="btn btn-common" href="alljob">Search jobs</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-12 col-sm-12">
                        <div class="img-thumb">
                            <img class="img-fluid" src="assets/img/search.png" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <section class="how-it-works section">
            <div class="container">
                <div class="section-header">  
                    <h2 class="section-title">How It Works?</h2>
                </div>
                <div class="row">
                    <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                        <div class="work-process">
                            <span class="process-icon">
                                <i class="lni-user"></i>
                            </span>
                            <h4>Create an Account</h4>
                            <p>Post a job to tell us about your project. We'll quickly match you with the right freelancers find place best.</p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                        <div class="work-process step-2">
                            <span class="process-icon">
                                <i class="lni-search"></i>
                            </span>
                            <h4>Search Jobs</h4>
                            <p>Post a job to tell us about your project. We'll quickly match you with the right freelancers find place best.</p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                        <div class="work-process step-3">
                            <span class="process-icon">
                                <i class="lni-cup"></i>
                            </span>
                            <h4>Apply</h4>
                            <p>Post a job to tell us about your project. We'll quickly match you with the right freelancers find place best.</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section id="latest-jobs" class="section bg-gray">
            <div class="container">
                <div class="section-header">  
                    <h2 class="section-title">New Jobs</h2>
                </div>
                <div class="row">
                    <c:forEach items="${listJ}" var="o">
                        <div class="col-lg-6 col-md-12 col-xs-12">
                            <div class="jobs-latest">
                                <div class="img-thumb">
                                    <img src="${o.logo}" style="max-width: 100px; min-height: 100px" alt="">
                                </div>
                                <div class="content">
                                    <h3><a href="detail?JobID=${o.jId}">${o.jName}</a></h3>
                                    <p class="brand">${o.company}</p>
                                    <div class="tags">  
                                        <span><i class="lni-map-marker"></i>${o.location}</span>  
                                        <span>$${o.salary}</span> 
                                    </div>
                                       <c:if test="${o.type == 'FULL TIME'}">
                                            <span class="full-time">${o.type}</span>
                                            </c:if>
                                            <c:if test="${o.type == 'PART TIME'}">
                                            <span class="part-time">${o.type}</span>
                                            </c:if>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                    <div class="col-12 text-center mt-4">
                        <a href="alljob" class="btn btn-common">Browse All Jobs</a>
                    </div>
                </div>
            </div>
        </section>
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
