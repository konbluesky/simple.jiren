<#macro paginate currentPage totalPage actionUrl urlParas="">
	<#if (totalPage <= 0) || (currentPage > totalPage)><#return></#if>
	<#local startPage = currentPage - 4>
	<#if (startPage < 1)><#local startPage = 1></#if>
	
	<#local endPage = currentPage + 4>
	<#if (endPage > totalPage)><#local endPage = totalPage></#if>
	<div class="pagination">
        <ul>
			<#if (currentPage <= 10)>
				<#local startPage = 1>
			</#if>
			<#if ((totalPage - currentPage) < 8)>
				<#local endPage = totalPage>
			</#if>
			
			<#if (currentPage == 1)>
				<li><span class="disabled prev_page">上页</span></li>
			<#else>
                <li><a href="${CONTEXT_PATH}/${actionUrl}#{currentPage - 1}${urlParas!}" class="prev_page">上页</a></li>
			</#if>
			
			<#if (currentPage > 3)>
                <li><a href="${CONTEXT_PATH}/${actionUrl}#{1}${urlParas!}">#{1}</a></li>
                <li><a href="${CONTEXT_PATH}/${actionUrl}#{2}${urlParas!}">#{2}</a></li>
                <li><span class="gap">…</span></li>
			</#if>
			
			<#list startPage..endPage as i>
				<#if currentPage == i>
                    <li class="active"><a href="#">#{i}</a></li>
				<#else>
                    <li><a href="${CONTEXT_PATH}/${actionUrl}#{i}${urlParas!}">#{i}</a></li>
				</#if>
			</#list>
			
			<#if ((totalPage - currentPage) >= 8)>
                <li><span class="gap">…</span></li>
                <li><a href="${CONTEXT_PATH}/${actionUrl}#{totalPage - 1}${urlParas!}">#{totalPage - 1}</a></li>
                <li><a href="${CONTEXT_PATH}/${actionUrl}#{totalPage}${urlParas!}">#{totalPage}</a></li>
			</#if>
			
			<#if (currentPage == totalPage)>
				<li><span class="disabled next_page">下页</span></li>
			<#else>
                <li><a href="${CONTEXT_PATH}/${actionUrl}#{currentPage + 1}${urlParas!}" class="next_page" rel="next">下页</a></li>
			</#if>
        </ul>
	</div>
</#macro>