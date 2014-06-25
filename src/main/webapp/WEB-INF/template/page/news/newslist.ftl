<#include "/WEB-INF/template/common/layout/l_news.ftl"/>
<@newslayout>
<div class="main-left" style="width: 188px">
    <@typegroup typesView ntype/>
</div>
<div class="main_center">
    <div class="main_news_list">
        <h2>财经资讯</h2>
        <ul>
            <#list newslist.getList() as news>
            <li>
                <span>${news.createdate}</span>
                <@newsUrl news/>
            </li>
            </#list>
        </ul>
    </div>
    <div >
        <#include "/WEB-INF/template/common/macro/paginate.ftl" />
        <@paginate currentPage=newslist.pageNumber totalPage=newslist.totalPage actionUrl="n/" urlParas=urlparams />
    </div>
</div>

<div class="main-right" style="width: 300px">
    <@detail_right/>
</div>
</@newslayout>