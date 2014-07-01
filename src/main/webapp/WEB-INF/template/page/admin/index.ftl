<#include "/WEB-INF/template/common/layout/l_admin.ftl"/>
<@adminLayout>
<body class="page-header-fixed">
<!-- BEGIN HEADER -->
<div class="header navbar navbar-inverse navbar-fixed-top">
<!-- BEGIN TOP NAVIGATION BAR -->
    <div class="header-inner">
    <!-- BEGIN LOGO -->
    <a class="navbar-brand" href="index.html">
        <img src="${CONTEXT_PATH}/plugin/assets/img/logo.png" alt="logo" class="img-responsive" />
    </a>
    <!-- END LOGO -->
    <!-- BEGIN RESPONSIVE MENU TOGGLER -->
    <a href="javascript:;" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
        <img src="${CONTEXT_PATH}/plugin/assets/img/menu-toggler.png" alt="" />
    </a>
    <!-- END RESPONSIVE MENU TOGGLER -->

    <!-- BEGIN TOP NAVIGATION MENU -->
        <ul class="nav navbar-nav pull-right">
        <!-- BEGIN USER LOGIN DROPDOWN -->
            <li class="dropdown user">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                <img alt="" src="${CONTEXT_PATH}/plugin/assets/img/avatar1_small.jpg"/>
                <span class="username">Bob Nilson</span>
                <i class="icon-angle-down"></i>
            </a>
            <ul class="dropdown-menu">
                <li><a href="extra_profile.html"><i class="icon-user"></i> My Profile</a>
                </li>
                <li><a href="page_calendar.html"><i class="icon-calendar"></i> My Calendar</a>
                </li>
                <li><a href="inbox.html"><i class="icon-envelope"></i> My Inbox <span class="badge badge-danger">3</span></a>
                </li>
                <li><a href="#"><i class="icon-tasks"></i> My Tasks <span class="badge badge-success">7</span></a>
                </li>
                <li class="divider"></li>
                <li><a href="javascript:;" id="trigger_fullscreen"><i class="icon-move"></i> Full Screen</a>
                </li>
                <li><a href="extra_lock.html"><i class="icon-lock"></i> Lock Screen</a>
                </li>
                <li><a href="login.html"><i class="icon-key"></i> Log Out</a>
                </li>
            </ul>
        </li>
        <!-- END USER LOGIN DROPDOWN -->
        </ul>
    <!-- END TOP NAVIGATION MENU -->
    </div>
<!-- END TOP NAVIGATION BAR -->
</div>
<!-- END HEADER -->

<div class="page-container">
<div class="page-sidebar navbar-collapse collapse">
<!-- BEGIN SIDEBAR MENU -->
<ul class="page-sidebar-menu">
<li>
    <!-- BEGIN SIDEBAR TOGGLER BUTTON -->
    <div class="sidebar-toggler hidden-phone"></div>
    <!-- BEGIN SIDEBAR TOGGLER BUTTON -->
</li>
<li>
    <!-- BEGIN RESPONSIVE QUICK SEARCH FORM -->
    <form class="sidebar-search" action="extra_search.html" method="POST">
        <div class="form-container">
            <div class="input-box">
                <a href="javascript:;" class="remove"></a>
                <input type="text" placeholder="Search...">
                <input type="button" class="submit" value=" ">
            </div>
        </div>
    </form>
    <!-- END RESPONSIVE QUICK SEARCH FORM -->
</li>
<li class="start active ">
    <a href="index.html">
        <i class="fa fa-home"></i>
        <span class="title">Dashboard</span>
        <span class="selected"></span>
    </a>
</li>
<li class="">
    <a href="javascript:;">
        <i class="fa fa-cogs"></i>
        <span class="title">Layouts</span>
        <span class="arrow "></span>
    </a>
    <ul class="sub-menu">
        <li>
            <a href="layout_session_timeout.html">
                <span class="badge badge-roundless badge-warning">new</span>Session Timeout</a>
        </li>
    </ul>
</li>
<li class="tooltips" data-placement="right" data-original-title="Frontend&nbsp;Theme For&nbsp;Metronic&nbsp;Admin">
    <a href="http://keenthemes.com/preview/index.php?theme=metronic_frontend" target="_blank">
        <i class="fa fa-gift"></i>
        <span class="title">Frontend Theme</span>
    </a>
</li>
<li class="">
    <a href="javascript:;">
        <i class="fa fa-bookmark-o"></i>
        <span class="title">UI Features</span>
        <span class="arrow "></span>
    </a>
    <ul class="sub-menu">
        <li>
            <a href="ui_general.html">
                General</a>
        </li>
        <li>
            <a href="ui_buttons.html">
                Buttons &amp; Icons</a>
        </li>
    </ul>
</li>
<li class="">
    <a href="javascript:;">
        <i class="fa fa-table"></i>
        <span class="title">Form Stuff</span>
        <span class="arrow "></span>
    </a>
    <ul class="sub-menu">
        <li>
            <a href="form_controls.html">
                Form Controls</a>
        </li>
        <li>
            <a href="form_layouts.html">
                Form Layouts</a>
        </li>
    </ul>
</li>
<li class="">
    <a href="javascript:;">
        <i class="fa fa-sitemap"></i>
        <span class="title">Pages</span>
        <span class="arrow "></span>
    </a>
    <ul class="sub-menu">
        <li>
            <a href="page_portfolio.html">
                <i class="fa fa-briefcase"></i>
                <span class="badge badge-warning badge-roundless">new</span>Portfolio</a>
        </li>
        <li>
            <a href="page_timeline.html">
                <i class="fa fa-clock-o"></i>
                <span class="badge badge-info">4</span>Timeline</a>
        </li>
    </ul>
</li>
<li class="">
    <a href="javascript:;">
        <i class="fa fa-user"></i>
        <span class="title">Login Options</span>
        <span class="arrow "></span>
    </a>
    <ul class="sub-menu">
        <li>
            <a href="login.html">
                Login Form 1</a>
        </li>
        <li>
            <a href="login_soft.html">
                Login Form 2</a>
        </li>
    </ul>
</li>
<li class="last ">
    <a href="charts.html">
        <i class="fa fa-bar-chart-o"></i>
        <span class="title">Visual Charts</span>
    </a>
</li>
</ul>
<!-- END SIDEBAR MENU -->

</div>
    <!--右侧正文内容 begin-->
<div class="page-content">
    <div class="theme-panel hidden-xs hidden-sm">
        <div class="toggler" style="display: block;"></div>
        <div class="toggler-close" style="display: none;"></div>
        <div class="theme-options" style="display: none;">
            <div class="theme-option theme-colors clearfix">
                <span>THEME COLOR</span>
                <ul>
                    <li class="color-black current color-default" data-style="default"></li>
                    <li class="color-blue" data-style="blue"></li>
                    <li class="color-brown" data-style="brown"></li>
                    <li class="color-purple" data-style="purple"></li>
                    <li class="color-grey" data-style="grey"></li>
                    <li class="color-white color-light" data-style="light"></li>
                </ul>
            </div>
            <div class="theme-option">
                <span>Layout</span>
                <select class="layout-option form-control input-small">
                    <option value="fluid" selected="selected">Fluid</option>
                    <option value="boxed">Boxed</option>
                </select>
            </div>
            <div class="theme-option">
                <span>Header</span>
                <select class="header-option form-control input-small">
                    <option value="fixed" selected="selected">Fixed</option>
                    <option value="default">Default</option>
                </select>
            </div>
            <div class="theme-option">
                <span>Sidebar</span>
                <select class="sidebar-option form-control input-small">
                    <option value="fixed">Fixed</option>
                    <option value="default" selected="selected">Default</option>
                </select>
            </div>
            <div class="theme-option">
                <span>Footer</span>
                <select class="footer-option form-control input-small">
                    <option value="fixed">Fixed</option>
                    <option value="default" selected="selected">Default</option>
                </select>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12">
            <!-- BEGIN PAGE TITLE & BREADCRUMB-->
            <h3 class="page-title">
                站点后台管理 <small>statistics and more</small>
            </h3>
            <ul class="page-breadcrumb breadcrumb">
                <li>
                    <i class="fa fa-home"></i>
                    <a href="index.html">Home</a>
                    <i class="fa fa-angle-right"></i>
                </li>
                <li><a href="#">Dashboard</a></li>
            </ul>
            <!-- END PAGE TITLE & BREADCRUMB-->
        </div>
    </div>

    <!--stat-->
    <div class="row">
        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
            <div class="dashboard-stat blue">
                <div class="visual">
                    <i class="fa fa-comments"></i>
                </div>
                <div class="details">
                    <div class="number">
                        100
                    </div>
                    <div class="desc">
                        New Feedbacks
                    </div>
                </div>
                <a class="more" href="#">
                    View more <i class="m-icon-swapright m-icon-white"></i>
                </a>
            </div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
            <div class="dashboard-stat green">
                <div class="visual">
                    <i class="fa fa-shopping-cart"></i>
                </div>
                <div class="details">
                    <div class="number">200</div>
                    <div class="desc">New Orders</div>
                </div>
                <a class="more" href="#">
                    View more <i class="m-icon-swapright m-icon-white"></i>
                </a>
            </div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
            <div class="dashboard-stat purple">
                <div class="visual">
                    <i class="fa fa-globe"></i>
                </div>
                <div class="details">
                    <div class="number">+90%</div>
                    <div class="desc">Brand Popularity</div>
                </div>
                <a class="more" href="#">
                    View more <i class="m-icon-swapright m-icon-white"></i>
                </a>
            </div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
            <div class="dashboard-stat yellow">
                <div class="visual">
                    <i class="fa fa-bar-chart-o"></i>
                </div>
                <div class="details">
                    <div class="number">12,5M$</div>
                    <div class="desc">Total Profit</div>
                </div>
                <a class="more" href="#">
                    View more <i class="m-icon-swapright m-icon-white"></i>
                </a>
            </div>
        </div>
    </div>
</div>
    <!--右侧正文内容 end-->
</div>


<!--footer begin-->
<div class="footer">
    <div class="footer-inner">
        2013 &copy; Metronic by konbluesky.
    </div>
    <div class="footer-tools">
      <span class="go-top">
      <i class="fa fa-angle-up"></i>
      </span>
    </div>
</div>
<!--footer end-->

<@script>
<script type="text/javascript">
    jQuery(document).ready(function() {
            App.init(); // initlayout and core plugins
            Index.init();
    //        Index.initJQVMAP(); // init index page's custom scripts
    //        Index.initCalendar(); // init index page's custom scripts
    //        Index.initCharts(); // init index page's custom scripts
    //        Index.initChat();
    //        Index.initMiniCharts();
    //        Index.initDashboardDaterange();
    //        Index.initIntro();
    //        Tasks.initDashboardWidget();
    });
</script>
</@script>
</body>
</@adminLayout>



<#--基础脚本-->
<#macro script>
<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
<!-- BEGIN CORE PLUGINS -->
<!--[if lt IE 9]>
<script src="${CONTEXT_PATH}/plugin/assets/plugins/respond.min.js"></script>
<script src="${CONTEXT_PATH}/plugin/assets/plugins/excanvas.min.js"></script>
<![endif]-->
<script src="${CONTEXT_PATH}/plugin/assets/plugins/jquery-1.10.2.min.js" type="text/javascript"></script>
<script src="${CONTEXT_PATH}/plugin/assets/plugins/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
<!-- IMPORTANT! Load jquery-ui-1.10.3.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
<script src="${CONTEXT_PATH}/plugin/assets/plugins/jquery-ui/jquery-ui-1.10.3.custom.min.js" type="text/javascript"></script>
<script src="${CONTEXT_PATH}/plugin/assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="${CONTEXT_PATH}/plugin/assets/plugins/bootstrap-hover-dropdown/twitter-bootstrap-hover-dropdown.min.js" type="text/javascript" ></script>
<script src="${CONTEXT_PATH}/plugin/assets/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<script src="${CONTEXT_PATH}/plugin/assets/plugins/jquery.blockui.min.js" type="text/javascript"></script><!--弹出层UI-->
<script src="${CONTEXT_PATH}/plugin/assets/plugins/jquery.cookie.min.js" type="text/javascript"></script><!--左侧图标文字缩略图-->
<script src="${CONTEXT_PATH}/plugin/assets/plugins/uniform/jquery.uniform.min.js" type="text/javascript" ></script>
<!-- END CORE PLUGINS -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
<script src="${CONTEXT_PATH}/plugin/assets/plugins/jquery.pulsate.min.js" type="text/javascript"></script>
<script src="${CONTEXT_PATH}/plugin/assets/plugins/bootstrap-daterangepicker/moment.min.js" type="text/javascript"></script>
<#--<script src="${CONTEXT_PATH}/plugin/assets/plugins/bootstrap-daterangepicker/daterangepicker.js" type="text/javascript"></script>-->
<script src="${CONTEXT_PATH}/plugin/assets/plugins/gritter/js/jquery.gritter.js" type="text/javascript"></script>
<!-- IMPORTANT! fullcalendar depends on jquery-ui-1.10.3.custom.min.js for drag & drop support -->
<#--<script src="${CONTEXT_PATH}/plugin/assets/plugins/fullcalendar/fullcalendar/fullcalendar.min.js" type="text/javascript"></script>-->
<#--<script src="${CONTEXT_PATH}/plugin/assets/plugins/jquery-easy-pie-chart/jquery.easy-pie-chart.js" type="text/javascript"></script>-->
<script src="${CONTEXT_PATH}/plugin/assets/plugins/jquery.sparkline.min.js" type="text/javascript"></script>
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="${CONTEXT_PATH}/plugin/assets/scripts/app.js" type="text/javascript"></script>
<script src="${CONTEXT_PATH}/plugin/assets/scripts/index.js" type="text/javascript"></script>
<script src="${CONTEXT_PATH}/plugin/assets/scripts/tasks.js" type="text/javascript"></script>
<!-- END PAGE LEVEL SCRIPTS -->
<#nested />
</#macro>
