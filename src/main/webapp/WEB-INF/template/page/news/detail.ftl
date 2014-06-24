<#include "/WEB-INF/template/common/layout/l_news.ftl"/>
<@newslayout>
<div class="d-main-left t-line">
    <#if nnews ??>
        <@detail_content news=nnews/>
        </#if>
</div>
    <@detail_right/>
</@newslayout>