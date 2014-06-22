<#include "/WEB-INF/template/common/macro/base.ftl"/>
<#macro detail>
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
<div class="d-main">
    <@breadcrumb/>
    <#--正文内容-->
    <#nested />
</div>
<div class="footer">
    <@footer/>
</div>
</body>
</html>
</#macro>


<#macro detail_content news>
    <div class="d-article">
        <h1>${news.newstitle}</h1>
        <div></div>
        <div class="d-article-info">
            <span>2013-01-01 00:00:11</span>
            <span>来源:${news.source}</span>
            <span>编辑:${news.editor}</span>
        </div>
        <div class="d-article-summary">
            <span class="label label-info">摘要</span>
                <#if news.summary??>
                    ${news.summary}
                <#else >
                    <#if news.content?length lt 40>
                    ${news.content}
                    <#else>
                    ${news.content[0..41]}...
                    </#if>
                </#if>
        </div>
        <div class="d-article-content">
            <pre>
                ${news.content}
            </pre>
        </div>
        <div class="d-article-mianze">
            <span class="label label-important">免责声明</span>
            人投网发布此信息目的在于传播更多信息，与本网站立场无关。人投网不保证该信息（包括但不限于文字、数据及图表）全部或者部分内容的准确性、真实性、完整性、有效性、及时性、原创性等。相关信息并未经过本网站证实，不对您构成任何投资建议，据此操作，风险自担。
        </div>
        <div class="d-article-share">
            <@share_bd/>
        </div>
    </div>
</#macro>
