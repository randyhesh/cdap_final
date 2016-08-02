<%--
  Created by IntelliJ IDEA.
  User: Heshani
  Date: 7/23/2016
  Time: 10:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*" errorPage=""%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>

<head>
    <meta>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="A fully featured admin theme which can be used to build CRM, CMS, etc.">
    <meta name="author" content="Coderthemes">

    <!-- App Favicon -->
    <link rel="shortcut icon" href="backend_resources/images/favicon.ico">

    <!-- App title -->
    <title>Intrusion Prediction System</title>

    <!--Morris Chart CSS -->
    <link rel="stylesheet" href="backend_resources/plugins/morris/morris.css">

    <!-- Switchery css -->
    <link href="backend_resources/plugins/switchery/switchery.min.css" rel="stylesheet" />

    <!-- App CSS -->
    <link href="backend_resources/css/style.css" rel="stylesheet" type="text/css" />

    <!-- HTML5 Shiv and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
    <!-- Modernizr js -->
    <script src="backend_resources/js/modernizr.min.js"></script>

    <script>
        (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
                    (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
                m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
        })(window,document,'script','../../www.google-analytics.com/analytics.js','ga');

        ga('create', 'UA-79190402-1', 'auto');
        ga('send', 'pageview');

    </script>

</head>


<body class="fixed-left">

<!-- Begin page -->
<div id="wrapper">

    <!-- Top Bar Start -->
    <div class="topbar">

        <!-- LOGO -->
        <div class="topbar-left">
            <a href="index-2.html" class="logo">
                <i class="zmdi zmdi-group-work icon-c-logo"></i>
                <span>IPS</span></a>
        </div>

        <nav class="navbar navbar-custom">
            <ul class="nav navbar-nav">
                <li class="nav-item" style="line-height: 68px">
                    <button class="button-menu-mobile open-left waves-light waves-effect">
                        <i class="zmdi zmdi-menu"></i>
                    </button>
                </li>
                <li class="nav-item hidden-mobile">
                    <form role="search" class="app-search">
                        <input type="text" placeholder="Search..." class="form-control">
                        <a href="#" style="top: 9px"><i class="fa fa-search"></i></a>
                    </form>
                </li>
            </ul>

            <ul class="nav navbar-nav pull-right">
                <li class="nav-item dropdown notification-list">
                    <a class="nav-link dropdown-toggle arrow-none waves-light waves-effect" data-toggle="dropdown" href="#" role="button"
                       aria-haspopup="false" aria-expanded="false">
                        <i class="zmdi zmdi-notifications-none noti-icon"></i>
                        <span class="noti-icon-badge"></span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right dropdown-arrow dropdown-lg" aria-labelledby="Preview">
                        <!-- item-->
                        <div class="dropdown-item noti-title">
                            <h5><small><span class="label label-danger pull-xs-right">7</span>Notification</small></h5>
                        </div>

                        <!-- All-->
                        <a href="javascript:void(0);" class="dropdown-item notify-item notify-all">
                            View All
                        </a>

                    </div>
                </li>

                <li class="nav-item dropdown notification-list">
                    <a class="nav-link dropdown-toggle arrow-none waves-effect waves-light nav-user" data-toggle="dropdown" href="#" role="button"
                       aria-haspopup="false" aria-expanded="false">
                        <img src="backend_resources/images/users/avatar-1.jpg" alt="user" class="img-circle">
                    </a>
                    <div class="dropdown-menu dropdown-menu-right dropdown-arrow profile-dropdown " aria-labelledby="Preview">
                        <!-- item-->
                        <div class="dropdown-item noti-title">
                            <h5 class="text-overflow"><small>Welcome ! John</small> </h5>
                        </div>

                        <!-- item-->
                        <a href="javascript:void(0);" class="dropdown-item notify-item">
                            <i class="zmdi zmdi-account-circle"></i> <span>Profile</span>
                        </a>

                        <!-- item-->
                        <a href="javascript:void(0);" class="dropdown-item notify-item">
                            <i class="zmdi zmdi-settings"></i> <span>Settings</span>
                        </a>

                        <!-- item-->
                        <a href="javascript:void(0);" class="dropdown-item notify-item">
                            <i class="zmdi zmdi-lock-open"></i> <span>Lock Screen</span>
                        </a>

                        <!-- item-->
                        <a href="javascript:void(0);" class="dropdown-item notify-item">
                            <i class="zmdi zmdi-power"></i> <span>Logout</span>
                        </a>

                    </div>
                </li>

            </ul>

        </nav>

    </div>
    <!-- Top Bar End -->


    <!-- ========== Left Sidebar Start ========== -->
    <div class="left side-menu">
        <%@include file="menu.jsp" %>

    </div>
    <!-- Left Sidebar End -->



    <!-- ============================================================== -->
    <!-- Start right Content here -->
    <!-- ============================================================== -->
    <div class="content-page">
        <!-- Start content -->
        <div class="content">
            <div class="container">

                <span id="main_content">

                </span>

            </div> <!-- container -->

        </div> <!-- content -->
    </div>
    <!-- End content-page -->


    <!-- ============================================================== -->
    <!-- End Right content here -->
    <!-- ============================================================== -->

    <footer class="footer">
        <center>2016 © IPS.</center>
    </footer>


</div>
<!-- END wrapper -->


<script>
    var resizefunc = [];
</script>

<!-- jQuery  -->
<script src="backend_resources/js/jquery.min.js"></script>
<script src="backend_resources/js/tether.min.js"></script><!-- Tether for Bootstrap -->
<script src="backend_resources/js/bootstrap.min.js"></script>
<script src="backend_resources/js/detect.js"></script>
<script src="backend_resources/js/fastclick.js"></script>
<script src="backend_resources/js/jquery.blockUI.js"></script>
<script src="backend_resources/js/waves.js"></script>
<script src="backend_resources/js/jquery.nicescroll.js"></script>
<script src="backend_resources/js/jquery.scrollTo.min.js"></script>
<script src="backend_resources/js/jquery.slimscroll.js"></script>
<script src="backend_resources/plugins/switchery/switchery.min.js"></script>

<!--Morris Chart-->
<script src="backend_resources/plugins/morris/morris.min.js"></script>
<script src="backend_resources/plugins/raphael/raphael-min.js"></script>

<!-- Counter Up  -->
<script src="backend_resources/plugins/waypoints/lib/jquery.waypoints.js"></script>
<script src="backend_resources/plugins/counterup/jquery.counterup.min.js"></script>

<!-- App js -->
<script src="backend_resources/js/jquery.core.js"></script>
<script src="backend_resources/js/jquery.app.js"></script>

<!-- Page specific js -->
<script src="backend_resources/pages/jquery.dashboard.js"></script>

</body>

<!-- Mirrored from coderthemes.com/uplon_1.1/ by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jul 2016 11:32:43 GMT -->
</html>

<script type="text/javascript"
        src="http://code.jquery.com/jquery-1.10.1.min.js"></script>

<script type="text/javascript">

    $( document ).ready(function() {

        $.ajax({
            type : "POST",
            url : "/getNetworkInterfaces",
            success : function(data) {
                $("#main_content").html(data);
            },
            error : function(e) {
                console.log("ERROR: ", e);
            },
            done : function(e) {
                console.log("DONE");
            }
        });

    });

</script>