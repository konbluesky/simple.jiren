<#macro adminLayout>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->

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
<#nested />
</html>
</#macro>


<#macro footer>
<!--footer begin-->
<div class="footer">
    <div class="footer-inner">
        2013 &copy; Metronic by konbluesky.
    </div>
    <div class="footer-tools">
      <span class="go-top">
      <i class="icon-angle-up"></i>
      </span>
    </div>
</div>
<!--footer end-->
</#macro>

