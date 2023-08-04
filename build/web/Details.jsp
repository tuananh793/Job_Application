<%-- 
    Document   : Details
    Created on : Apr 28, 2022, 8:06:43 PM
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
        <style>
            .content {
                display: flex;
            }

            .content1:first-child {
                flex: 0 0 150px; /* Kích thước cố định cho khối đầu tiên */
            }

            .content1:last-child {
                flex: 1; /* Chiếm phần còn lại của "content" */
            }

        </style>
    </head>
    <body>
        <header id="home" class="hero-area"> 
            <jsp:include page="Menu.jsp"></jsp:include>          
            </header>
            <div class="page-header">
                <div class="container">
                    <div class="row">         
                        <div class="col-lg-8 col-md-6 col-xs-12">
                            <div class="breadcrumb-wrapper">                                                                                     
                                <div class="content">
                                    <div class ="content1" >
                                        <img style="width: 100px ; height: 100px"  src="${detail.logo}" alt="">
                                </div>
                                <div class ="content1">
                                    <h3 class="product-title">${detail.jName}</h3>
                                    <p class="brand">${detail.company}</p>
                                    <div class="tags">  
                                        <span><i class="lni-map-marker"></i>${detail.location}</span>  
                                        <span><i class="lni-calendar"></i>Posted: ${detail.publicDate}</span> <br> 
                                        <span><i class="lni-phone"></i>${detail.phone}</span> 
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-xs-12">
                        <div class="month-price">
                            <span class="year">Yearly</span>
                            <div class="price">$${detail.salary}</div>
                        </div>
                    </div>
                </div>
            </div>
        </div> 
        <section class="job-detail section">
            <div class="container">
                <div class="row justify-content-between">
                    <div class="col-lg-8 col-md-12 col-xs-12">
                        <div class="content-area">  
                            <h4>Job Description</h4>
                            <p>${detail.desc}</p>
                            <h4>What You Need for this Position</h4>
                            <ul>
                                ${detail.jd}
                            </ul>
                            <h5>How To Apply</h5>
                            <p></p>
                            <a href="#" class="btn btn-common">Apply job</a> 
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-12 col-xs-12">
                        <div class="sideber">
                            <div class="widghet">
                                <h3>Job Location</h3>
                                <div class="maps">
                                    <div id="map" class="map-full">
                                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d476861.2536842292!2d105.37248187207723!3d20.973446117554797!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135008e13800a29%3A0x2987e416210b90d!2zSMOgIE7hu5lpLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1651224320437!5m2!1svi!2s" allowfullscreen=""></iframe>
                                    </div>
                                </div>
                            </div>
                            <div class="widghet">
                                <h3>Share This Job</h3>
                                <div class="share-job">
                                    <form method="post" class="subscribe-form">
                                        <div class="form-group">
                                            <input type="email" name="Email" class="form-control" placeholder="https://joburl.com" required="">
                                            <button type="submit" name="subscribe" class="btn btn-common sub-btn"><i class="lni-files"></i></button>
                                            <div class="clearfix"></div>
                                        </div>
                                    </form>
                                    <ul class="mt-4 footer-social">
                                        <li><a class="facebook" href="#"><i class="lni-facebook-filled"></i></a></li>
                                        <li><a class="twitter" href="#"><i class="lni-twitter-filled"></i></a></li>
                                        <li><a class="linkedin" href="#"><i class="lni-linkedin-fill"></i></a></li>
                                        <li><a class="google-plus" href="#"><i class="lni-google-plus"></i></a></li>
                                    </ul>
                                    <div class="meta-tag">
                                        <span class="meta-part"><a href="#"><i class="lni-star"></i> Write a Review</a></span>
                                        <span class="meta-part"><a href="#"><i class="lni-warning"></i> Reports</a></span>
                                        <span class="meta-part"><a href="#"><i class="lni-share"></i> Share</a></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section id="featured" class="section bg-gray pb-45">
            <div class="container">
                <h4 class="small-title text-left">Similar Jobs</h4>
                <div class="row">
                    <div class="col-lg-6 col-md-12 col-xs-12">
                        <a class="job-listings-featured" href="job-details.html">
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-xs-12">
                                    <div class="job-company-logo">
                                        <img src="assets/img/features/img1.png" alt="">
                                    </div>
                                    <div class="job-details">
                                        <h3>Software Engineer</h3>
                                        <span class="company-neme">MizTech</span>
                                        <div class="tags">  
                                            <span><i class="lni-map-marker"></i> New York</span>  
                                            <span><i class="lni-user"></i>John Smith</span>   
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-xs-12 text-right">
                                    <div class="tag-type">
                                        <sapn class="heart-icon">
                                            <i class="lni-heart"></i>
                                        </sapn>
                                        <span class="full-time">Full Time</span>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-6 col-md-12 col-xs-12">
                        <a class="job-listings-featured" href="job-details.html">
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-xs-12">
                                    <div class="job-company-logo">
                                        <img src="assets/img/features/img2.png" alt="">
                                    </div>
                                    <div class="job-details">
                                        <h3>Graphic Designer</h3>
                                        <span class="company-neme">Hunter Inc.</span>
                                        <div class="tags">  
                                            <span><i class="lni-map-marker"></i> New York</span>  
                                            <span><i class="lni-user"></i>John Smith</span>   
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-xs-12 text-right">
                                    <div class="tag-type">
                                        <sapn class="heart-icon">
                                            <i class="lni-heart"></i>
                                        </sapn>
                                        <span class="part-time">Part Time</span>
                                    </div>
                                </div>
                            </div>
                        </a>
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
