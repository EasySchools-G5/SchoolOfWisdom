<%
    String type = (String) session.getAttribute("session_type");
    if (((String) session.getAttribute("session_id") != null) && (type.equals("admin"))) {
%>
<!DOCTYPE html>

<head>
    <style>
        #dmsg1{
            display: none;                                    
        }
        #dmsg2{
            display: none;                                    
        }
        #dmsg3{
            display: none;                                    
        }
    </style>
    <script type="text/javascript">
        $(document).ready(function() {
            $("#start_datepicker").datepicker();
           
        });
        function removeMsg(){
            $('#msg').fadeOut('slow');
            $('#dmsg3').fadeOut('slow');
        }function removeMsg1(){
            $('#dmsg1').fadeOut('slow');
        }function removeMsg2(){
            $('#dmsg2').fadeOut('slow');
        }
    </script>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Eazy Admin Panel</title>
    <script type="text/javascript" src="../panel/myjs/allSimple.js"></script>
    <link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="stylesheet" type="text/css"/>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.5/jquery.min.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"></script>

    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Raleway:100,900,800,700,600,500,400,300,200' rel='stylesheet' type='text/css'><!-- Google Fonts -->
    <!-- Styles -->
    <link rel="stylesheet" href="../panel/css/bootstrap.css" type="text/css" /><!-- Bootstrap -->
    <link href="../panel/css/jquery.mCustomScrollbar.css" rel="stylesheet" /><!-- Custom Scroll Bar -->
    <link rel="stylesheet" href="../panel/font-awesome/css/font-awesome.css" type="text/css" /><!-- Font Awesome -->
    <link rel="stylesheet" href="../panel/css/style.css" type="text/css" /><!-- Style -->
    <link rel="shortcut icon" href="../images/favicon.png" >
    <link rel="stylesheet" href="../panel/css/responsive.css" type="text/css" /><!-- Responsive Style -->

    <!-- Script -->
    <script src="../panel/ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script><!-- Jquery -->
    <script src="../panel/js/jquery.mCustomScrollbar.concat.min.js"></script><!-- Scroll Bar -->
    <script src="../panel/cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script><!-- Circle Chart -->
    <script type="text/javascript"  src="../panel/js/bootstrap.js"></script><!-- Bootstrap -->
    <script type="text/javascript"  src="../panel/js/script.js"></script><!-- Script -->
    <script type="text/javascript" src="../panel/js/tcal.js"></script> <!-- Input Calendar -->
    <script type="text/javascript" src="../panel/js/jquery.sparkline.min.js"></script> <!-- Sparkline -->
    <script type="text/javascript" src="https://www.google.com/jsapi"></script> <!-- Google Map -->
    <script src="../panel/js/jquery-ui.custom.min.js"></script> <!-- Jquery UI Custom -->
    <script src="../panel/js/jquery.easypiechart.min.js"></script> <!-- Easy Pie Chart -->
    <script type="text/javascript" src="../panel/xoxco.com/projects/code/tagsinput/jquery.tagsinput.js"></script><!-- Sidebar Add Tag -->
    <script src="../panel/js/jquery.nicescroll.min.js"></script>
    <script src="../panel/js/header-line-chart.js"></script>
    <script src="../panel/js/jquery.flot.min.js"></script><!-- Chart -->
    <script src="../panel/js/flot-chart-header.js"></script>
    <script src="../panel/js/flot-jquery-header.js"></script>
    <script src="../panel/js/side-navigation-tag.js"></script>
    <script src="../panel/js/jquery.jigowatt.js"></script><!-- AJAX Form Submit -->

    <!-- Custom Scroll- -->
    <script>
        (function($){
            $(window).load(function(){
                $("#content_1").mCustomScrollbar({
                    scrollButtons:{
                        enable:true
                    }
                });
            });
        })(jQuery);
    </script>
</head>
<body>
    <div class="wrapper">
        <header>
            <div class="logo">
                <img src="../panel/images/logo.png" alt="" />
            </div><!-- Logo -->
            <div class="welcome-user">
                <img src="../panel/images/user.png" alt=""/>
                <span><%=(String) session.getAttribute("session_user")%></span>
                <p>Welcome Admin</p>
            </div>
            <div class="side-navigation">
                <ul>
                    <li><a href="index.jsp"><i class="icon-home"></i>Home</a></li>
                    <li><a  href="javascript:;"><i class="icon-book"></i>Clients Section</a>
                        <ul>
                            <li><a href="index.jsp?page=client"><i class="icon-pencil"></i>Add Client</a></li>
                            <li><a href="index.jsp?page=list"><i class="icon-list"></i>List Of Clients</a></li>
                        </ul>
                    </li>
                    <li><a  href="javascript:;"><i class="icon-book"></i>Employee Section</a>
                        <ul>
                            <li><a href="index.jsp?page=employee"><i class="icon-pencil"></i>Add Employee</a></li>
                            <li><a href="index.jsp?page=elist"><i class="icon-list"></i>List Of Empoloyee</a></li>
                        </ul>
                    </li>
                    <li><a href="index.jsp?page=change"><i class="icon-key"></i>Change Password</a></li>
                    <li><a href="logout.jsp"><i class="icon-key"></i>Logout</a></li>
                </ul>
            </div>
            <a class="slide-up-btn"><i class="icon-align-justify"></i></a>
        </header><!-- Header End -->

        <section class="main-section">
            <div class="responsive-logo">
                <img src="../panel/images/logo.png" alt="" />
            </div>
            <div class="responsive-menu">
                <div class="responsive-menu-dropdown">
                    <a title="" class="red">MENU <i class="icon-align-justify" ></i></a>
                </div>
                <ul>
                    <li><a title=""><i class="icon-home"></i>Home</a>
                    </li>
                    <li><a  href="javascript:;"><i class="icon-book"></i>Clients Section</a>
                        <ul>
                            <li><a href="index.jsp?page=client"><i class="icon-pencil"></i>Add Client</a></li>
                            <li><a href="index.jsp?page=list"><i class="icon-list"></i>List Of Clients</a></li>
                        </ul>
                    </li>
                    <li><a  href="javascript:;"><i class="icon-book"></i>Employee Section</a>
                        <ul>
                            <li><a href="index.jsp?page=employee"><i class="icon-pencil"></i>Add Employee</a></li>
                            <li><a href="index.jsp?page=elist"><i class="icon-list"></i>List Of Empoloyee</a></li>
                        </ul>
                    </li>
                    <li><a href="index.jsp?page=change"><i class="icon-key"></i>Change Password</a></li>
                    <li><a href="logout.jsp"><i class="icon-key"></i>Logout</a></li>
                </ul>
            </div>
            <div class="container" >
                <div class="row">    
                    <%
                        String path1 = request.getParameter("page");
                        if (path1 == null) {
                    %>
                    <jsp:include page="home.jsp"/>
                    <%               } else if (path1 != null) {
                        String path = path1+ ".jsp";
                        //path = path + ".jsp";
                    %>
                    <jsp:include page="<%=path%>"/>
                    <%
                        }

                    %>
                    <!-- Body Sec -->
                </div><!-- main-bg-->
            </div><!-- Row -->
        </section><!-- Main Section -->
    </div><!-- Wrapper -->
</body><!-- Body -->
</html><!-- Html -->
<%    } else {
        response.sendRedirect("../index.jsp");
    }
%>