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


<#macro detail_content>
    <div class="d-article">
        <h1>这里就是新闻的标题</h1>
        <div></div>
        <div class="d-article-info">
            <span>2013-01-01 00:00:11</span>
            <span>来源:人投王</span>
            <span>编辑:jieke</span>
        </div>
        <div class="d-article-summary">
            <span class="label label-info">摘要</span>
            国际黄金汹涌澎湃，谨防金价退潮行情。周一伊拉克紧张局势暂时未进一步升级，国际黄金价格反弹至1283附近后震荡回落，目前国际金价于1280一线徘徊。今日金价日线布林带并未继续开口，市场观望力量不少，投资者密切关注美联储方面经济数据。
        </div>
        <div class="d-article-content">
            <p>金投网6月16日讯，周一伊拉克紧张局势暂时未进一步升级，国际黄金价格反弹至1283附近后震荡回落，目前国际金价于1280一线徘徊。三菱集团(Mitsubishi)分析师JonathanButler周一(6月16日)发表评论称，如果美联储宣布进一步削减月度债券购买计划规模，那么黄金价格可能难以突破1287美元/盎司附近阻力。
                JonathanButler表示，金价可能因避险需求和市场消极情绪持续维持震荡行情。目前市场预计美联储将于本周会议上宣布进一步削减宽松政策。炒金如何赚钱专家免费指导银行黄金白银TD开户指南银行黄金白银模拟交易软件集金号桌面行情报价工具
                日内财经日历面国际货币基金组织(IMF)将发布美国经济年度评估(21:30)。国际货币基金组织(IMF)主席拉加德举行新闻发布会，讨论该报告。另外数据关注欧元区5月CPI终值的表现也可适当留意，尽管在欧银大范围宽松后，欧洲数据短期内的重要性可能打上一定折扣，但如果5月CPI终值出现明显的上修或下修，仍可能对欧元汇价产生影响，并令黄金同向波动。</p>
            <p>白银模拟交易软件集金号桌面行情报价工具日内财经日</p>
        </div>
        <#--<div class="d-article-tag">-->
            <#--<strong>asdfasfd</strong>-->
            <#--<span class="label">黄金</span>-->
            <#--<span class="label">黄金</span>-->
            <#--<span class="label">黄金</span>-->
            <#--<span class="label">黄金</span>-->
            <#--<span class="label">黄金</span>-->
            <#--<span class="label">黄金</span>-->
            <#--<span class="label">黄金</span>-->
        <#--</div>-->
        <div class="d-article-share">
            <@share_bd/>
        </div>
        <div class=""></div>
    </div>
</#macro>
