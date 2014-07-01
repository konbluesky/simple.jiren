<#include "/WEB-INF/template/common/macro/base.ftl"/>
<#macro newslayout>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <#if metaView??>
        <@title metaView/>
    </#if>
    <@basehead/>
</head>
<body>
<div class="top">
    <@topmenu/>
</div>
<div class="head">
    <@head/>
</div>
<div class="navigators">
    <@navbar/>
</div>
<div class="d-main">
    <#if breadcrumbView??>
        <@breadcrumb breadcrumbView/>
    </#if>
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
            <span>${news.createdate}</span>
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

<#macro detail_right>
<div class="d-main-right">
    <div class="comm" id="docreport">
        <@opera operaView/>
    </div>

    <div class="comm">
        <img src="${CONTEXT_PATH}/img/ad-right-01.gif">
    </div>

</div>
</#macro>


<#--新闻类别列表-->
<#macro typegroup typesView currType="">
    <div class="zx-group">
        <h3>资讯分类</h3>
        <#if typesView??>
            <dl class="type-groups">
            <dt>财经资讯</dt>
            <#list typesView as t>
                <#if (t_index > 1)>
                    <dd>
                        <#if t.value==currType>
                            <@basehref url="n/1"+t.value atext=t.name class="active" target="_self"/>
                        <#else >
                            <@basehref url="n/"+t.value atext=t.name target="_self"/>
                        </#if>
                    </dd>
                </#if>
            </#list>
            </dl>
        </#if>
    </div>
</#macro>


<#--操作建议列表-->
<#macro opera operaView>
<div class="vip-jp  t-line">
    <h3>
                <span>
                    <a href="javascript:;" title="最新解盘" target="_blank">最新解盘&gt;&gt;</a>
                </span>
        <a href="javascript:;" title="VIP实盘在线解盘" target="_blank">VIP实盘在线解盘</a>
    </h3>
    <div>
        <ul>
            <#if operaView??>
                <#list operaView as o>
                    <li><span>${o.createtime}---- </span>
                    ${o.opera}
                    </li>
                </#list>
            </#if>
        </ul>
    </div>
</div>
</#macro>
