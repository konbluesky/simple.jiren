<#--
宏:导航条
currActive 当前活动tab
-->
<#macro navbar currActive=0>
    <div class="nav-menu navbar ">
        <div class="navbar-inner">
            <a class="brand" href="#"> </a>
            <ul class="nav">
                <li <#if currActive==0> class="active"</#if>><a href="#">首页</a></li>
                <li <#if currActive==1> class="active"</#if>><a href="#">关于我们</a></li>
                <li <#if currActive==2> class="active"</#if>><a href="#">金银资讯</a></li>
                <li <#if currActive==3> class="active"</#if>><a href="#">交易指南</a></li>
                <li <#if currActive==4> class="active"</#if>><a href="#">行情分析</a></li>
                <li <#if currActive==5> class="active"</#if>><a href="#">资料下载</a></li>
                <li <#if currActive==6> class="active"</#if>><a href="#">在线开户</a></li>
                <li <#if currActive==7> class="active"</#if>><a href="#">财经日历</a></li>
                <li <#if currActive==8> class="active"</#if>><a href="#">投诉反馈</a></li>
            </ul>
        </div>
    </div>
</#macro>

