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
    <@leftmenu/>
    <@rightcontent>
        <@status4/>
    </@rightcontent>
</div>

<@footer/>
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




