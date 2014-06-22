<#include "/WEB-INF/template/common/layout/l_detail.ftl"/>
<@detail>
    <div class="d-main-left t-line">
        <#if nnews ??>
        <@detail_content news=nnews/>
        </#if>
    </div>
    <@detail_right/>
</@detail>