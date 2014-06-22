<#include "/WEB-INF/template/common/macro/base.ftl"/>
<#macro indexlayout>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <@basehead/>
</head>
<body>
<div class="top">
<@topmenu/>
</div>
<div class="head">
    <div>网站logo+ 宣传banner</div>
</div>
<div class="navigators">
<@navbar/>
</div>
<div class="main">
    <#nested />
</div>
<div class="footer">
<@footer/>
</div>
</body>
</html>
</#macro>