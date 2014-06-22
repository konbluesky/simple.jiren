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
    <@head/>
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

<#macro detail_right>
<div class="d-main-right">
    <div class="comm t-line" id="docreport">
        <div class="vip-jp"><h3><span><a href="javascript:;" title="最新解盘"
                                         target="_blank">最新解盘&gt;&gt;</a></span><a href="javascript:;"
                                                                                   title="VIP实盘在线解盘"
                                                                                   target="_blank">VIP实盘在线解盘</a>
        </h3>

            <div>
                <ul>
                    <li><span>2014-06-20 23:38:10---- </span>
                        建议大家不要看行情，看条件即可，只有达到和不达到之分，没有点位之分，我们抓的是趋势，不是点位。今晚行情直播到此结束，感谢大家。
                    </li>
                    <li><span>2014-06-20 22:54:58---- </span>[策略]现货金银继续延续多头格局，黄金1278 白银19.92多单继续持有 移动成本线上升到1306和20.6
                        继续扩大利润 晚间轻仓介入的朋友 建议把目前的利润去承担风险 也就是把回撤设在自己的成本价格 继续持有 后市如无变化 则持有到下周 上方不设止盈
                    </li>
                    <li><span>2014-06-20 21:09:11---- </span>白银T+D形成再次进场机会，空仓的可于4315轻仓进多，止损4295，短线目标4350-4370。</li>
                </ul>
            </div>
        </div>
    </div>

    <div class="comm t-line">
        <img src="${CONTEXT_PATH}/img/ad-right-01.gif">
    </div>

</div>
</#macro>