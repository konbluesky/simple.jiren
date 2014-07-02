<#macro adminLayout>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->

<@head/>
<#nested />
</html>
</#macro>

<#macro head>
<head>
    <meta charset="utf-8" />
    <title>Metronic | Admin Dashboard Template</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <meta content="" name="description" />
    <meta content="" name="author" />
    <meta name="MobileOptimized" content="320">

    <!-- BEGIN GLOBAL MANDATORY STYLES -->
    <link href="${CONTEXT_PATH}/plugin/assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <link href="${CONTEXT_PATH}/plugin/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="${CONTEXT_PATH}/plugin/assets/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css"/>
    <!-- END GLOBAL MANDATORY STYLES -->

    <!-- BEGIN PAGE LEVEL PLUGIN STYLES -->
    <link href="${CONTEXT_PATH}/plugin/assets/plugins/gritter/css/jquery.gritter.css" rel="stylesheet" type="text/css"/>
    <link href="${CONTEXT_PATH}/plugin/assets/plugins/bootstrap-daterangepicker/daterangepicker-bs3.css" rel="stylesheet" type="text/css" />
    <link href="${CONTEXT_PATH}/plugin/assets/plugins/fullcalendar/fullcalendar/fullcalendar.css" rel="stylesheet" type="text/css"/>
    <link href="${CONTEXT_PATH}/plugin/assets/plugins/jqvmap/jqvmap/jqvmap.css" rel="stylesheet" type="text/css"/>
    <link href="${CONTEXT_PATH}/plugin/assets/plugins/jquery-easy-pie-chart/jquery.easy-pie-chart.css" rel="stylesheet" type="text/css"/>
    <!-- END PAGE LEVEL PLUGIN STYLES -->

    <!-- BEGIN THEME STYLES -->
    <link href="${CONTEXT_PATH}/plugin/assets/css/style-metronic.css" rel="stylesheet" type="text/css"/>
    <link href="${CONTEXT_PATH}/plugin/assets/css/style.css" rel="stylesheet" type="text/css"/>
    <link href="${CONTEXT_PATH}/plugin/assets/css/style-responsive.css" rel="stylesheet" type="text/css"/>
    <link href="${CONTEXT_PATH}/plugin/assets/css/plugins.css" rel="stylesheet" type="text/css"/>
    <link href="${CONTEXT_PATH}/plugin/assets/css/pages/tasks.css" rel="stylesheet" type="text/css"/>
    <link href="${CONTEXT_PATH}/plugin/assets/css/themes/default.css" rel="stylesheet" type="text/css" id="style_color"/>
    <link href="${CONTEXT_PATH}/plugin/assets/css/custom.css" rel="stylesheet" type="text/css"/>
    <!-- END THEME STYLES -->
    <link rel="shortcut icon" href="favicon.ico" />
</head>
</#macro>


<#macro footer>
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
</#macro>

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



<#macro leftmenu>
<div class="page-sidebar navbar-collapse collapse">
    <!-- BEGIN SIDEBAR MENU -->
    <ul class="page-sidebar-menu">
        <@buildLeftMenu view=leftMenuView/>
    </ul>
    <!-- END SIDEBAR MENU -->
</div>
</#macro>
<#--
    构建菜单,在生成规律菜单时需要调用buildtree
-->
<#macro buildLeftMenu view>
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
    <#--动态构建数据库中保存的节点信息-->
    <#if view?? >
        <#assign root=view[0]/>
        <@buildTree root leftMenuCurNode/>
    </#if>
</#macro>

<#--构建菜单树-->
<#--
    node:树list
    curcode:当前节点
    恢复节点语句
    .fa-remove 可以为能定义到当前节点的选择器
    $(".fa-remove").addClass("Active").parents("li").addClass("active").show();
-->
<#macro buildTree node curcode="">
    <#if node?? >
        <#if (node.getChildCount() > 0)>
            <#--如果当前为一级节点,那么需要单独判断,因为要区别于样式-->
            <#if node.node.code==1>
                <#--如有提示信息 则更换class-->
                <li class="<#if node.node.uihastip='1'> tooltips</#if>" data-placement="right" data-original-title="${node.node.remark}">
                    <a href="${CONTEXT_PATH}${node.node.url}">
                    <i class="fa ${node.node.uiicon}"></i>
                    <span class="title">${node.node.name}</span>
                    </a>
            <#else>
                <li class="<#if node.node.uihastip='1'> tooltips<#else></#if>" data-placement="right" data-original-title="${node.node.remark}">
                    <a href="${CONTEXT_PATH}${node.node.url}">
                    <i class="fa ${node.node.uiicon}"></i>
                    <span class="title">${node.node.name}</span>
                    <span class="arrow"></span>
                </a>
                <ul class="sub-menu">
            </#if>

                <#list node.getChilds() as child>
                    <@buildTree child curcode/>
                </#list>

            <#if node.node.code==1>
                </li>
            <#else>
                </ul></li>
            </#if>
        <#else >
            <#if node.node.parentcode ==1>
                <li>
                    <a href="index.html">
                        <i class="fa ${node.node.uiicon}"></i>
                        <span class="title">${node.node.name}</span>
                        <span class="selected"></span>
                    </a>
                </li>
            <#else>
                <li>
                    <a href="${CONTEXT_PATH}${node.node.url}">
                        <i class="fa ${node.node.uiicon}"></i>
                        <span class="title">${node.node.name}</span>
                        <span class="selected"></span>
                    </a>
                </li>
            </#if>
        </#if>
    </#if>
</#macro>

<#--右侧主要内容-->
<#macro rightcontent>
<!--右侧正文内容 begin-->
<div class="page-content">
    <@modal/>
    <@breadcrumb/>
    <!--stat-->
    <#nested />
</div>
</#macro>

<#macro status4>
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
</#macro>

<#--面包屑-->
<#macro breadcrumb>
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
</#macro>

<#--样式工具-->
<#macro themetool>
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
</#macro>

<#--弹出层-->
<#macro modal m_title="系统提示">
    <div class="modal fade" id="portlet-config" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                    <h4 class="modal-title">${m_title}</h4>
                </div>
                <div class="modal-body">
                    Widget settings form goes here
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn blue">Save changes</button>
                    <button type="button" class="btn default" data-dismiss="modal">关闭</button>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
</#macro>