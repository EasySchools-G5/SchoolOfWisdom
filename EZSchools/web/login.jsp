<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- META TAGS -->
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- Title -->
        <title>Eazy Schools || We Provide Transperacy</title>
        <script>
            function checkFormLogin(){
                var uname=document.getElementById("uname").value;
                var pass=document.getElementById("pass").value;
                var loginType=document.getElementById("utype").value;
                if(uname==""||pass==""||loginType==""){
                    document.getElementById("dmsg1").style.display="block";
                    return false;
                }
            }
        </script>
        <script type="text/javascript">
            function removeMsg(){
                $('#dmsg1').fadeOut('slow');
                $('#dmsg').fadeOut('slow');
            }
        </script>
        <style>
            #dmsg1{
                display: none;                                    
            }
        </style>
        <!-- Style Sheet-->
        <link rel="stylesheet" href="css/fonts.css"/>
        <link rel="stylesheet" href="css/meanmenu.css"/>
        <link rel="stylesheet" href="css/owl.carousel.css"/>
        <link rel="stylesheet" href="css/animate.css"/>
        <link rel="stylesheet" href="css/swipebox.css"/>
        <link rel="stylesheet" href="css/bootstrap.css"/>
        <link rel="stylesheet" href="css/main.css"/>
        <link rel="stylesheet" href="css/custom-responsive.css"/>


        <!-- Google Fonts-->
        <link href='http://fonts.googleapis.com/css?family=Lato:300,400,700' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=PT+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>

        <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->

        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

        <!-- Le fav and touch icons -->
        <link rel="shortcut icon" href="images/favicon.png" >

    </head>

    <body>
        <div id="website-loader"></div>
        <header id="header" class="site-header" role="banner">
            <div class="header-responsive text-center"><i class="glyphicon glyphicon-chevron-down"></i></div>
            <div class="top-contact-info text-center clearfix">
                <div class="container">
                    <div class="row">
                        <div class="common">
                            <span class="tel"><i class=" icon-calendar2"></i>+91 99886-77887</span>
                        </div>
                        <div class="common">
                            <span class="email"><i class="icon-email2"></i><a href="javascript:;">contact@eazyschools.in</a></span>
                        </div>
                        <div class="common">
                            <span class="schedule"><i class="icon-newspaper"></i>Mon-Fri 8am-6pm</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="top-bar clearfix"></div>

            <div id="sticky-header" class="navigation-area clearfix">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12 text-center for-big-logo">
                            <div class="logo-wrapper big-logo clearfix">
                                <a class="logo" href="index.jsp"><img src="images/logo.png" alt=""/></a>
                            </div>
                        </div>
                        <div class="col-lg-2 for-small-logo">
                            <div class="logo-wrapper small-logo clearfix">
                                <a class="logo" href="index.jsp"><img src="images/logo.png" alt=""/></a>
                            </div>
                        </div>
                        <div class="col-lg-8">
                            <nav class="navigation main-menu clearfix" role="navigation">
                                <ul class="nav nav-justified">
                                    <li><a href="index.jsp">HOME</a></li>
                                    <li><a href="about.jsp">ABOUT US</a></li>
                                    <li><a href="contact.jsp">CONTACT US</a></li>
                                    <li><a href="login.jsp">LOGIN</a></li>
                                </ul>
                            </nav>
                        </div>
                        <div class="col-lg-2">
                            <div class="social-icons clearfix">
                                <ul class="nav">
                                    <li><a href="javascript:;"><i class="icon-twitter"></i></a></li>
                                    <li><a href="javascript:;"><i class="icon-googleplus"></i></a></li>
                                    <li><a href="javascript:;"><i class="icon-facebook"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <div id="main-menu-wrap" class="clearfix"></div>
                    </div>
                </div>
            </div>
        </header>
    <main class="content" role="main">
        <div class="hentry contact-page clearfix">

            <div class="container-fluid">
                <div class="row">
                    <section class="blockquote-wrap clearfix">
                        <h3 class="hidden">blockquote</h3>
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-9 col-md-12 col-sm-12 center-block">
                                    <blockquote>
                                        <p> Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor.</p>
                                    </blockquote>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
        </div>
        <section class="common pattern-bg clearfix">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12">
                        <header class="entry-header clearfix">
                            <h2 class="entry-title">Login <span>Here</span></h2>
                            <div class="separator center clearfix">
                                <span class="full-border"></span>
                                <span class="short-border"></span>
                            </div>
                        </header>
                        <div class="hentry  clearfix">
                            <div class="container">
                                <div class="row">

                                    <div class="col-sm-4">

                                    </div>
                                    <div class="col-sm-4">
                                        <%
                                            String msg = request.getParameter("do");
                                            if (msg != null) {
                                                if (msg.equals("deactivate")) {
                                        %>
                                        <div id="dmsg" class="alert alert-danger">
                                            <strong>Id is deactivated : </strong> For More Details contact the support team.
                                            <a href='javascript:;' onclick="removeMsg()" style="float:right;" id="ex">x</a>
                                        </div>
                                        <%  } else {
                                        %>
                                        <div id="dmsg" class="alert alert-danger">
                                            <strong>Login Failed : </strong> Id Or Password Must be Wrong.
                                            <a href='javascript:;' onclick="removeMsg()" style="float:right;" id="ex">x</a>
                                        </div>
                                        <%            }
                                            }
                                        %>
                                        <div id="dmsg1">
                                            <div id="dmsg" class="alert alert-danger">
                                                <strong>All Fields are required</strong>
                                                <a href='javascript:;' onclick="removeMsg()" style="float:right;" id="ex">x</a>
                                            </div>
                                        </div>
                                        <div class="entry-content">
                                            <form onsubmit="return checkFormLogin();" id="" action="process/loginProcess.jsp" method="get">
                                                <div class="">
                                                    <label for="name">Username</label>
                                                    <input type="text" style="text-align: left;" name="uname" id="uname" placeholder="Your Username">
                                                </div>
                                                <div class="">
                                                    <label for="name">Password</label>
                                                    <input type="password" style="text-align: left;" name="pass" id="pass" placeholder="Your Password" data-rule-required="true" data-msg-required="Please enter your name" aria-required="true">
                                                </div>

                                                <div class="">
                                                    <label for="name">Login Type</label>
                                                    <select name="utype" id="utype" class="form-control">
                                                        <option value="">Select User Type</option>
                                                        <option value="admin">Admin</option>
                                                        <option value="employee">Employee</option>
                                                        <option value="school">Principal</option>
                                                        <option value="teacher">Teacher</option>
                                                        <option value="guardian">Guardian</option>
                                                    </select>
                                                </div>
                                                <br/>
                                                <div class="">
                                                    <input type="submit" class="al-btn green-border al-md-btn" value="Login">
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </section>
    </main>
    <footer id="footer-wrapper" class="clearfix">
        <div id="footer" class="clearfix">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-3 col-sm-6">
                        <section id="text-2" class="widget widget_text">
                            <h3 class="hidden">Alight</h3>
                            <figure class="footer-image clearfix">
                                <img src="images/footer-logo.png" alt="Footer Image"/>
                            </figure>
                            <div class="textwidget">
                                <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. </p>
                            </div>
                        </section>
                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-6">

                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-6">
                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-6">
                        <section id="text-3" class="widget widget_text">
                            <h3 class="entry-title">Contact <span>Info</span></h3>
                            <div class="vcard clearfix">
                                <p class="adr"><i class="icon-location-outline"></i> 8605 Santa Monica Blvd, Los Angels, CA 97845, US</p>
                                <p class="tel"><i class="icon-phone-outline"></i>+91-99887-99887</p>
                                <p class="email"><i class="icon-mail"></i> <a href="javascript:;">contact@eazyschools.in</a></p>
                                <p class="url"><i class="icon-world"></i> www.eazyschools.in</p>
                            </div>
                        </section>
                    </div>
                </div>
            </div>
        </div>
        <div class="copyright-statement text-center clearfix">
            <p>© Copyright 2014 - Alight. All Right Reserved.</p>
        </div>
    </footer>

    <a href="#top" id="scroll-top"><i class="glyphicon glyphicon-chevron-up"></i></a>

    <script src="js/jquery-1.11.1.js"></script>
    <script src="js/jquery-migrate-1.2.1.js"></script>
    <script src="js/modernizr.custom.45270.js"></script>
    <script src="js/isotope.pkgd.min.js"></script>
    <script src="js/jquery.meanmenu.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.form.min.js"></script>
    <script src="js/jquery.validate.min.js"></script>
    <script src="js/jquery.easypiechart.js"></script>
    <script src="js/jquery.sticky.js"></script>
    <script src="js/jquery.swipebox.min.js"></script>
    <script src="js/jquery.nicescroll.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>
    <script src="js/custom.js"></script>
</body>
</html>