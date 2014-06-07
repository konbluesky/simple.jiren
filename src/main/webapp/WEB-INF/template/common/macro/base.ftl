<#--
宏:导航条
currActive 当前活动tab
-->
<#macro navbar currActive=0>
<div id="nav">
    <div class="nav-menu bold" style="position: static; top: 101px;">
        <ul>
            <li><a href="javascript:;" target="_blank" class="current">首页</a></li>
            <li><a href="javascript:;" target="_blank">金银资讯</a></li>
            <li class="kx"><a href="javascript:;" target="_blank"><cite></cite>24小时快讯</a></li>
            <li><a href="javascript:;" target="_blank">金银分析</a></li>
            <li><a href="javascript:;" target="_blank">投资学院</a></li>
            <li class="f3"><a href="javascript:;" target="_blank">AA银</a></li>
            <li class="f3"><a href="javascript:;" target="_blank">BB银</a></li>
            <li class="f3"><a href="javascript:;" target="_blank">T+D</a></li>
            <li><a href="javascript:;" target="_blank">财经日历</a></li>
            <li><a href="javascript:;" target="_blank">开户指南</a></li>
            <li class="f3 last"><a href="javascript:;" target="_blank">投诉反馈</a></li>
        </ul>
    </div>
    <div class="quote-nav">
        <a target="_blank" href="javascript:;">行情中心:</a> <a target="_blank"
                                                                        href="javascript:;">黄金价格</a>
        | <a target="_blank" href="javascript:;">白银价格</a> | <a target="_blank"
                                                                                                       href="javascript:;">黄金T+D价格</a>
        | <a target="_blank" href="javascript:;">白银T+D价格</a> | <a
            href="javascript:;" target="_blank">天通银价格</a> | <a
            href="javascript:;" target="_blank">粤贵银价格</a> | <a target="_blank"
                                                                                          href="javascript:;">国际金价</a>
        | <a target="_blank" href="javascript:;">金条价格</a> | <a target="_blank"
                                                                                        href="javascript:;">金币价格</a>
        | <a target="_blank" href="http://www.cngold.org/img_date/meiyuan.html">美元指数</a> | <a target="_blank"
                                                                                              href="http://www.cngold.org/img_date/yuanyou.html">原油价格</a>
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
    <span class="title"><h3>今日要闻</h3></span>
    <h4><span style="display:block;float:right;width:150px;margin-top:5px;*margin-top:6px;"><!-- 广告位：cngold首页热点文字广告二 --><script
            type="text/javascript">BAIDU_CLB_fillSlot("786249");</script><div id="BAIDU_DUP_wrapper_786249_0">
        <iframe id="baidu_clb_slot_iframe_786249_0" src="about:blank" onload="BAIDU_DUP_CLB_renderFrame('786249_0')"
                width="160" height="25" vspace="0" hspace="0" allowtransparency="true" scrolling="no" marginwidth="0"
                marginheight="0" frameborder="0"
                style="border:0; vertical-align:bottom; margin:0; display:block;"></iframe>
    </div><script charset="utf-8"
                  src="http://cb.baidu.com/ecom?di=786249&amp;dcb=BAIDU_DUP_define&amp;dtm=BAIDU_DUP2_SETJSONADSLOT&amp;dbv=2&amp;dci=0&amp;dri=0&amp;dis=0&amp;dai=6&amp;dds=&amp;drs=1&amp;dvi=7o&amp;ltu=http%3A%2F%2Fwww.baidu.com%2F&amp;liu=&amp;ltr=http%3A%2F%2Fcalendar.cngold.org%2F&amp;lcr=&amp;ps=397x309&amp;psr=1280x800&amp;par=1280x715&amp;pcs=1279x715&amp;pss=1279x432&amp;pis=-1x-1&amp;cfv=13&amp;ccd=24&amp;chi=2&amp;cja=true&amp;cpl=20&amp;cmi=64&amp;cce=true&amp;col=zh-CN&amp;cec=UTF-8&amp;cdo=-1&amp;tsr=997&amp;tlm=1401990536&amp;tcn=1402019337&amp;tpr=1402019336044&amp;dpt=none&amp;coa=&amp;baidu_id="></script></span><a
            href="http://www.baidu.com/c/2014-06-06/c2583737.html" target="_blank" title="金价不要被迷惑了 黄金价格还没有变强"
            style="font-family:Tahoma;">金价不要被迷惑了 黄</a>&nbsp;&nbsp;</h4>
    <p>
        <a href="http://www.baidu.com/c/2014-06-06/c2583772.html" target="_blank"
           title="黄金T+D继续锁死好过周末">黄金T+D继续锁死好过周末</a>
        <a href="http://www.baidu.com/c/2014-06-06/c2583758.html" target="_blank" title="国际黄金是不是又要跌了" class="last">国际黄金是不是又要跌了</a>
    </p>

    <p>
        <a href="http://ag.cngold.org/c/2014-06-06/c2583804.html" target="_blank" title="白银阻力弱 下方空间不大">白银阻力弱 下方空间不大</a>
        <a href="http://ag.cngold.org/c/2014-06-05/c2583442.html" target="_blank" title="晚间欧银决议来袭 白银将如何演绎" class="last">晚间欧银决议来袭
            白银将如何演绎</a>
    </p>
    <ul class="list24">

        <li>
            <a href="http://www.baidu.com/c/2014-06-06/c2583826.html" target="_blank" title="国际黄金价格行情难守 上冲回落概率大">国际黄金价格行情难守
                上冲回落概率大</a>
            <a target="_blank" href="http://www.baidu.com/c/2014-06-06/c2583758.html">关注分界点</a>
        </li>
        <li>
            <a href="http://www.baidu.com/c/2014-06-06/c2583802.html" target="_blank" title="暗埋地雷或将引爆 黄金价格谨防被诱空">暗埋地雷或将引爆
                黄金价格谨防被诱空</a>
            <a target="_blank" href="http://www.baidu.com/c/2014-06-06/c2583737.html">不要被迷惑</a>
        </li>
        <li>
            <a href="http://www.baidu.com/c/2014-06-06/c2583744.html" target="_blank" title="金投网：6月6日纸黄金价格交易提醒">金投网：6月6日纸黄金价格交易提醒</a>
            <a target="_blank" href="http://www.baidu.com/c/2014-06-06/c2583740.html">今日行情分析</a>
        </li>
        <li>
            <a href="http://www.baidu.com/c/2014-06-06/c2583802.html" target="_blank" title="暗埋地雷或将引爆 黄金价格谨防被诱空">暗埋地雷或将引爆
                黄金价格谨防被诱空</a>
            <a target="_blank" href="http://www.baidu.com/c/2014-06-06/c2583737.html">不要被迷惑</a>
        </li>
        <li>
            <a href="http://www.baidu.com/c/2014-06-06/c2583744.html" target="_blank" title="金投网：6月6日纸黄金价格交易提醒">金投网：6月6日纸黄金价格交易提醒</a>
            <a target="_blank" href="http://www.baidu.com/c/2014-06-06/c2583740.html">今日行情分析</a>
        </li>
    </ul>
</div>
</#macro>

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
            <a onclick="jscript:window.external.addFavorite('http://www.hzjiren.com/')">加入收藏</a>
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
                    <a href="http://passport.baidu.com/register/add.htm?source=&amp;service=" target="_blank">快速注册</a>
                    <a href="http://passport.baidu.com/connect/tencent/login.htm?service=" target="_blank"
                       class="btn-qq">使用QQ帐号登录</a>
                </li>
                <li class="login-box">
                    <span class="tip">若您已有金投网帐号，可直接登录</span>

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
                            <label class="link"><a href="http://passport.baidu.com/resetPassport/forgetPassword.htm"
                                                   target="_blank">忘记密码？</a></label>
                            <input type="checkbox" name="rememberMe" id="rememberMe" value="true" tabindex="4"
                                   class="check">
                            <label class="zidong">记住密码</label>
                        </p>
                    </form>
                </li>
            </ul>
        </li>
        <li class="topmenu-pop" id="indexLoginInfo" style="display: none;"><a class="arrow" href="javascript:;"><span
                id="cngoldTimeShow">下午好</span>，<span id="cngoldLoginName">jack88</span></a>
            <ul>
                <li><a href="http://my.baidu.com" target="_blank">个人用户中心</a></li>
                <li><a onclick="loginOutByIndex();"><b>登出</b></a></li>
            </ul>
        </li>
        <li class="topmenu-pop"><a class="on" href="http://www.baidu.com/fuwu.html" target="_blank">产品服务中心</a></li>
        <li class="topmenu-pop"><span class="tel bold red">咨询热线：000-000-0000</span></li>
    </ul>
</div>
</#macro>

<#macro footer>
<div class="foot">
    <div class="social">
        <ul>
            <li>
                <h3>微信二维码</h3>
                <img src="http://res.cngoldres.com/web/index/img/cngold_img_qrcode.png" alt="微信二维码">
            </li>
            <li>
                <h3>关于我们</h3>

                <p class="weibo"><a href="http://e.weibo.com/cngold" target="_blank">新浪微博</a></p>

                <p class="txwb"><a href="http://t.qq.com/cngoldorg" target="_blank">腾讯微博</a></p>

                <p class="email"><a href="http://www.baidu.com/data/rssmap.html" target="_blank">邮箱订阅</a></p>
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
        <img src="http://res.cngoldres.com/web/index/img/cngold_img_bank.png?v=201307" alt="合作银行">
    </div>
</div>
<div class="copyright">
    <p>
        <a href="http://www.baidu.com/data/sitemap.html" target="_blank">网站地图 </a> | <a
            href="http://www.baidu.com/about/about.html" target="_blank">关于我们</a> | <a
            href="http://www.baidu.com/about/contact.html" target="_blank">联系我们</a> | <a
            href="http://www.baidu.com/advservice/index.html" target="_blank">广告服务</a> | <a
            href="http://www.baidu.com/about/duty.html" target="_blank">免责声明</a> | <a href="http://feedback.baidu.com"
                                                                                      target="_blank">在线留言</a> | <a
            href="http://www.baidu.com/about/link.html" target="_blank">友情链接</a> | <a
            href="http://www.baidu.com/data/rssmap.html" target="_blank">RSS 订阅</a> | <a
            href="javascript:;" target="_blank">热门搜索</a>
    </p>

    <p>版权所有 © 2008-2014 <a href="javascript:;" target="_blank" title="百度广告管家"><img
            src="http://res.cngoldres.com/web/img/baidu_adm.gif" border="0" alt="百度广告管家"></a><br>本站信息仅供投资者参考，不做为投资建议！
    </p>
</div>

</#macro>
