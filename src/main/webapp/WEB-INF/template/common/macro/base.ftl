<#--
    Top导航栏
   -->
<#macro topmenu>
<div class="topmenu">
    <ul class="pull-left">
        <li class="topmenu-pop">
            <a href="javascript:;">设为首页</a>
        </li>
        <li class="topmenu-pop">
            <a onclick="jscript:window.external.addFavorite('http://www.peopleim.cn/')">加入收藏</a>
        </li>
        <li class="topmenu-pop">
            <a href="javascript:;">关于我们</a>
        </li>
        <!--<li class="topmenu-pop">-->
        <!--<a class="arrow" href="javascript:;" target="_blank">我的金投</a>-->
        <!--<ul>-->
        <!--<li><a href="javascript:;">我的交易大赛</a></li>-->
        <!--<li><a href="javascript:;">我的专家解盘</a></li>-->
        <!--<li><a href="javascript:;">我的模拟交易</a></li>-->
        <!--<li><a href="javascript:;">我的走势观点</a></li>-->
        <!--</ul>-->
        <!--</li>-->
    </ul>
    <ul class="pull-right">
        <li class="topmenu-pop" id="indexLoginDiv" style="display: none;"><a class="arrow" href="javascript:;"
                                                                             target="_blank">登录</a>
            <ul class="login-pop">
                <li class="reg-box">
                    <p>还没有帐号？免费注册一个吧！</p>
                    <a href="javascript:;" target="_blank">快速注册</a>
                    <a href="javascript:;" target="_blank"
                       class="btn-qq">使用QQ帐号登录</a>
                </li>
                <li class="login-box">
                    <span class="tip">若您已有人投网帐号，可直接登录</span>

                    <form id="loginForm" name="loginForm" class="login_form" method="post">
                        <p>
                            <label class="username">帐号</label>
                            <input id="username" name="username" class="login_input" tabindex="1" value="用户名/email/手机"
                                   type="text" size="25" autocomplete="false">
                        </p>

                        <p>
                            <label class="password">密码</label>
                            <input id="password" name="password" class="login_input" tabindex="2" type="password"
                                   value="" size="25">
                        </p>
                        <input type="button" id="login_botton" value="登 录" class="login_botton" name="submitForm"
                               onclick="formSubmitByIndex();">

                        <p>
                            <label class="link"><a href="javascript:;"
                                                   target="_blank">忘记密码？</a></label>
                            <input type="checkbox" name="rememberMe" id="rememberMe" value="true" tabindex="4"
                                   class="check">
                            <label class="zidong">记住密码</label>
                        </p>
                    </form>
                </li>
            </ul>
        </li>
    <#--<li class="topmenu-pop" id="indexLoginInfo" style="display: none;"><a class="arrow" href="javascript:;"><span-->
    <#--id="cngoldTimeShow">下午好</span>，<span id="cngoldLoginName">jack88</span></a>-->
    <#--<ul>-->
    <#--<li><a href="javascript:;" target="_blank">个人用户中心</a></li>-->
    <#--<li><a onclick="loginOutByIndex();"><b>登出</b></a></li>-->
    <#--</ul>-->
    <#--</li>-->
        <li class="topmenu-pop"><a class="on" href="javascript:;" target="_blank">产品服务中心 咨询QQ：181997883</a></li>
        <#--<li class="topmenu-pop"><span class="tel bold red">咨询QQ：181997883</span></li>-->
    </ul>
</div>
</#macro>


<#--head部分-->
<#macro head>
<div style="width: 100%">
    <div class="logo">
        <a href="${CONTEXT_PATH}/"><img src="${CONTEXT_PATH}/img/logo.png" width="100%"></a>
    </div>
    <div class="banner">
        <a href="http://wpa.qq.com/msgrd?v=3&uin=181997883&site=qq&menu=yes"><img src="${CONTEXT_PATH}/img/head_banner.gif"  width="100%"></a>
    </div>
</div>
</#macro>

<#--
宏:导航条
currActive 当前活动tab
-->
<#macro navbar currActive=0>
<div id="nav">
    <div class="nav-menu bold" style="position: static; top: 101px;">
        <ul>
            <li><a href="${CONTEXT_PATH}/" target="_blank" class="current">首页</a></li>
            <li><a href="${CONTEXT_PATH}/n" target="_blank">财经资讯</a></li>
            <li class="kx"><a href="${CONTEXT_PATH}/zxdata" target="_blank"><cite></cite>24小时快讯</a></li>
            <li><a href="javascript:;" target="_blank">金银分析</a></li>
            <li><a href="javascript:;" target="_blank">投资学院</a></li>
            <li><a href="${CONTEXT_PATH}/p/xhy" target="_blank">新华银</a></li>
            <li><a href="${CONTEXT_PATH}/p/zzx" target="_blank">中玺银</a></li>
            <li><a href="javascript:;" target="_blank">财经日历</a></li>
            <li><a href="${CONTEXT_PATH}/kaihu" target="_self">开户指南</a></li>
            <#--<li><a href="javascript:;" target="_blank">投诉反馈</a></li>-->
        </ul>
    </div>
    <div class="quote-nav">
        &nbsp;
    </div>
</div>
</#macro>

<#macro navbarold currActive=0>
<div class="nav-menu">
    <div class="navbar">
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
</div>
</#macro>

<#--
宏:图片轮播
-->
<#macro imageplayer>
<div class="image-player" style="width: 695px;">
    <div id="myCarousel" class="carousel slide">
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>
        <!-- Carousel items -->
        <div class="carousel-inner">
            <div class="active item">
                <img src="http://v2.bootcss.com/assets/img/bootstrap-mdo-sfmoma-02.jpg">
            </div>
            <div class="item">
                <img src="http://v2.bootcss.com/assets/img/bootstrap-mdo-sfmoma-01.jpg">
            </div>
            <div class="item">
                <img src="http://img.nr99.com/attachment/forum/201403/30/142520b5vke11bb1cr11vw.jpg">
            </div>
        </div>
        <!-- Carousel nav -->
        <a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;</a>
        <a class="carousel-control right" href="#myCarousel" data-slide="next">&rsaquo;</a>
    </div>
</div>
</#macro>

<#--当日要文-->
<#macro topic>
<div class="topic color-white">
    <span class="title">
        <h3>今日走势</h3>
    </span>
    <p style="padding-left: 10px;">
        <a href="javascript:;" target="_blank" title="黄金T+D继续锁死好过周末">黄金T+D继续锁死好过周末</a>
    </p>
    <ul class="list24">
        <img src="http://www.kitco.cn/cn/metals/silver/t24_ag_cny_gram_450x275g.gif"/>
    </ul>
</div>
</#macro>


<#macro columntab tabs=['白银'] tab_index=0 listgroup={}>
<div class="columnTab">
    <div class="hd">
        <ul>
        <#list tabs as tname>
            <li <#if tab_index=tname_index>class="on"</#if>>
                <h3><a href="javascript:;" target="_blank">${tname}</a></h3>
            </li>
        </#list>
        </ul>
    </div>
    <div class="bd">
    <#if listgroup?exists>
        <#assign map = listgroup>
        <#list map.keySet()  as k>
            <div class="column-box" style="<#if k == tab_index> display: block;<#else> display: none; </#if>">
                <ul class="list30 row2">
                    <#list listgroup.get(k) as listitem>
                        <li>
                            <@newsUrl listitem/>
                        </li>
                    </#list>
                </ul>
            </div>
        </#list>
    </#if>
    </div>
</div>
</#macro>


<#--页脚-->
<#macro footer>
<div class="foot">
    <div class="social">
        <ul>
            <li>
                <h3>微信二维码</h3>
                <img src="${CONTEXT_PATH}/img/xinlang_qrcode.png" alt="微信二维码">
            </li>
            <li>
                <h3>微信二维码</h3>
                <img src="${CONTEXT_PATH}/img/xinlang_qrcode.png" alt="微信二维码">
            </li>
            <li>
                <h3>关于我们</h3>

                <p class="weibo"><a href="http://weibo.com/u/5182938622" target="_blank">新浪微博</a></p>

                <p class="txwb"><a href="javascript:;" target="_blank">腾讯微博</a></p>

            </li>
        </ul>
    </div>
    <div class="friend-link">
        <div id="bdshare" class="bdshare_b" style="margin-top:3px;"><img
                src="http://bdimg.share.baidu.com/static/images/type-button-1.jpg"><a class="shareCount"
                                                                                      title="累计分享239次">239</a></div>
    </div>
    <div class="partner mt10">
        <h3>合作银行</h3>
        <img src="${CONTEXT_PATH}/img/peopleim_img_bank.png" alt="合作银行">
    </div>
    <div>
        <!-- 代码begin -->
        <div class="fixedBox">
            <UL class="fixedBoxList">
                <LI class="fixeBoxLi Service"> <span class="fixeBoxSpan"></span> <strong>在线客服</strong>
                    <div class="ServiceBox">
                        <div class="bjfff"></div>
                        <dl >
                            <dt><img src="${CONTEXT_PATH}/img/Service1.jpg"></dt>
                            <dd> <strong>在线QQ客服</strong>
                                <P class="p1">9:00-18:00</P>
                                <P class="p2"><a title="点击这里给我发消息"href="http://wpa.qq.com/msgrd?v=3&amp;uin=181997883&amp;site=qq&amp;menu=yes"target="_blank">点击交谈</A></P>
                            </dd>
                        </dl>
                        <dl >
                            <dt><img src="${CONTEXT_PATH}/img/Service1.jpg"></dt>
                            <dd> <strong>在线QQ客服</strong>
                                <P class="p1">16:00-24:00</P>
                                <P class="p2"><a title="点击这里给我发消息"href="http://wpa.qq.com/msgrd?v=3&amp;uin=535240743&amp;site=qq&amp;menu=yes"target="_blank">点击交谈</A></P>
                            </dd>
                        </dl>
                        <dl>
                            <dt><img src="${CONTEXT_PATH}/img/Service2.jpg"></dt>
                            <dd> <strong>网页在线客服</strong>
                                <P class="p1">9:00-22:00</P>
                                <P class="p2"><a title="点击这里给我发消息"href="http://wpa.qq.com/msgrd?v=3&amp;uin=535240743&amp;site=qq&amp;menu=yes"target="_blank">点击交谈</A></P>
                            </dd>
                        </dl>
                    </div>
                </LI>
                <LI class="fixeBoxLi Home"> <A href="http://www.peopleim.cn/"> <span class="fixeBoxSpan"></span> <strong>返回首页</strong> </A> </LI>
                <LI class="fixeBoxLi BackToTop"> <span class="fixeBoxSpan"></span> <strong>返回顶部</strong> </LI>
            </UL>
        </div>
        <script type="text/javascript" src="${CONTEXT_PATH}/js/chat_service.js"></script>
    </div>
</div>
<div class="copyright">
    <p>
        <@basehref url="sitemap.html" atext="网站地图"/> |
        <@basehref url="m/contact.html" atext="关于我们"/> |
        <@basehref url="m/index.html" atext="联系我们"/> |
        <@basehref url="m/duty.html" atext="广告服务"/> |
        <@basehref url="m/link.html" atext="免责声明"/> |
        <@basehref url="m/rssmap.html" atext="在线留言"/> |
        <@basehref url="m/sitemap.html" atext="友情链接"/> |
    </p>

    <p>版权所有 © 2013-2014
        <br>本站信息仅供投资者参考，不做为投资建议！
    </p>
    <script type="text/javascript">
        var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
        document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3Fd1fb36d0cb70b3d682b2708c9995662b' type='text/javascript'%3E%3C/script%3E"));
    </script>
    <script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_1000500258'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s4.cnzz.com/z_stat.php%3Fid%3D1000500258%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));</script>

</div>

</#macro>

<#macro title metaView>
<title>${metaView.title}</title>
<meta name="description" content="${metaView.description}">
<meta name="keywords" content="${metaView.keywords}">
<meta name="author" content="人投网">
</#macro>

<#--css js-->
<#macro basehead>
<link type="text/css" rel="stylesheet" href="${CONTEXT_PATH}/css/bootstrap.min.css" />
<link type="text/css" rel="stylesheet" href="${CONTEXT_PATH}/css/base.css" />
<link type="text/css" rel="stylesheet" href="${CONTEXT_PATH}/css/chatservice.css" />
<script type="text/javascript" src="${CONTEXT_PATH}/js/jquery.js"></script>
<script type="text/javascript" src="${CONTEXT_PATH}/js/bootstrap.min.js"></script>
</#macro>

<#--面包屑-->
<#macro breadcrumb breadcrumbView>
<ul class="breadcrumb" style="margin: 0 0 0 0px;">
    <#list breadcrumbView as link>
        <#if link_index+1 != breadcrumbView.size()>
            <li>
                <@basehref atext=link.text/>
                <span class="divider">/</span>
            </li>
        <#else>
            <li class="active">${link.text}</li>
        </#if>
    </#list>
</ul>
</#macro>

<#macro share_bd>
<div class="bdsharebuttonbox"><a href="#" class="bds_more" data-cmd="more">分享到：</a><a href="#" class="bds_qzone" data-cmd="qzone" title="分享到QQ空间">QQ空间</a><a href="#" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博">新浪微博</a><a href="#" class="bds_tqq" data-cmd="tqq" title="分享到腾讯微博">腾讯微博</a><a href="#" class="bds_renren" data-cmd="renren" title="分享到人人网">人人网</a><a href="#" class="bds_weixin" data-cmd="weixin" title="分享到微信">微信</a></div>
<script>window._bd_share_config={"common":{"bdSnsKey":{},"bdText":"","bdMini":"2","bdMiniList":false,"bdPic":"","bdStyle":"0","bdSize":"16"},"share":{"bdSize":16},"image":{"viewList":["qzone","tsina","tqq","renren","weixin"],"viewText":"分享到：","viewSize":"16"},"selectShare":{"bdContainerClass":null,"bdSelectMiniList":["qzone","tsina","tqq","renren","weixin"]}};with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];</script>
</#macro>


<#--基础连接生成-->
<#macro basehref url="" atext="连接文字" target="_blank" title="" class="">
    <a href="${CONTEXT_PATH}/${url}" target="${target}"
       <#if class!="">class="${class}"</#if>
       <#if title!="">title="${title}"</#if>
       >${atext}</a>
</#macro>
<#macro newsUrl news>
    <@basehref url="n/"+news.pdate+"/"+news.id+".html"
                title=news.newstitle
                atext=news.newstitle />
</#macro>