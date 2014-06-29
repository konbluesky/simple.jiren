<#include "/WEB-INF/template/common/layout/l_index.ftl"/>
<style type="text/css">
    .well {
        min-height: 20px;
        padding: 19px;
        margin-bottom: 20px;
        background-color: #f5f5f5;
        border: 1px solid #e3e3e3;
        -webkit-border-radius: 4px;
        -moz-border-radius: 4px;
        border-radius: 4px;
        -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,0.05);
        -moz-box-shadow: inset 0 1px 1px rgba(0,0,0,0.05);
        box-shadow: inset 0 1px 1px rgba(0,0,0,0.05);
    }
    .platform-left{
        width:250px;
        float:left;
        overflow: hidden;
        padding-top: 10px;
        padding-left: 10px;
    }
    .platform-right{
        width: 709px;
        float: right;
        padding-top: 10px;
        overflow: hidden;
    }
</style>
<script type="text/javascript">
    $(".platform-right").ready(function(){

    });
    function showbox(id){
        $("#"+id).show().siblings().hide();
    }
</script>
<@indexlayout>
<div class="platform-left" style="height:300px;">
    <div class="well">
    <ul class="nav nav-list">
        <li class="nav-header">新华(浙江)大宗商品交易中心</li>
        <#--<li class="active"><a href="#">首页</a></li>-->
        <#--<li class="nav-header">关于交易所</li>-->
        <li><a href="javascript:showbox('jysjj');">交易所简介</a></li>
        <li><a href="javascript:showbox('jygz');">交易规则</a></li>
        <li class="nav-header">交易软件下载</li>
        <li><a href="javascript:showbox('software');">交易软件</a></li>
        <li><a href="javascript:showbox('software');">手机交易软件</a></li>
    </ul>
    </div>
</div>
<div class="platform-right" style="height:1000px;">
    <div id="jysjj" style="display:block;">
        <div >
            <h1>新华浙江大宗商品交易中心简介</h1>
            <div>
                <p><span style="font-size: 14px; ">&nbsp; &nbsp; &nbsp; &nbsp;新华浙江大宗商品交易中心由新华社直属企业--中经社控股有限公司（控股）与杭州兴利投资有限公司共同发起设立。交易中心在构建中，得到了省市两级政府的全力支持，原浙江省委常委、省委组织部部长斯鑫良出任交易中心监事会主席，原杭州市常务副市长、杭州银行董事长马时雍出任交易中心独立董事。</span></p><p><span style="font-size: 14px; ">&nbsp; &nbsp; &nbsp; &nbsp;作为新华社控股并隆重推出的大宗商品交易机构，新华浙江大宗商品交易中心是新华社全球商品定价权战略布局的重要一环。“立足浙江、辐射全国、影响世界”是各级领导对新华浙江大宗商品交易中心的期许，也是增强我国在全球大宗商品市场话语权的战略目标。</span></p><p><span style="font-size: 14px; ">&nbsp; &nbsp; &nbsp; &nbsp;新华浙江大宗商品交易中心突出“交易规模大、市场参与度高”等特点，以“服务实体经济”为根本宗旨，为实体经济在生产供应销售等环节提供多维金融关怀，在社会产能纬度内提供全方位服务，解决企业所需。</span></p><p><span style="font-size: 14px; ">&nbsp; &nbsp;&nbsp; &nbsp; 交易中心严格遵守相关法规，积极推进金融创新，构建“公开、公平、公正”的市场环境，力求更多企业群体和个人参与到市场中来，成为杭州、浙江乃至中国经济发展的助推器。</span></p>
            </div>
        </div>
    </div>
    <div id="jygz" style="display:none;">

    </div>
    <div id="software" style="display:none;">
        <span >
            <a href="#" class="btn btn-large btn-primary disabled">PC端软件下载</a>
        </span>
        <table class="table table-bordered" style="margin: 20px 10px 20px 0px;">
            <thead>
            <tr>
                <th>类型</th>
                <th>名称</th>
                <th>下载</th>
                <th>简介</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td rowspan="3">手机交易软件</td>
                <td>新华大宗-贵金属</td>
                <td><a href="http://www.hbot.cn/uploadfile/hbot/hbot_setup.exe">下载</a></td>
                <td>Windows版正式交易客户端兼容各Windows操作系统。</td>
            </tr>
            <tr>
                <td>新华大宗-贵金属</td>
                <td><a href="http://www.hbot.cn/uploadfile/hbot/Setup_pobo.exe">下载</a></td>
                <td>新华大宗交易软件（博易现货版）。</td>
            </tr>
            <tr>
                <td>新华大宗-贵金属</td>
                <td><a href="http://www.hbot.cn/uploadfile/hbot/hbot_setup(moni).exe">下载</a></td>
                <td>Windows版模拟交易客户端兼容各Windows操作系统。</td>
            </tr>
            <tr>
                <td rowspan="3">手机行情软件</td>
                <td>贵金属行情软件</td>
                <td><a href="http://www.hbot.cn/uploadfile/hbot/xinhuabot.exe">下载</a></td>
                <td>贵金属行情软件客户端兼容各Windows操作系统。</td>
            </tr>
            <tr>
                <td>新华大宗行情软件——点证版</td>
                <td><a href="http://www.hbot.cn/uploadfile/hbot/xhdz.exe">下载</a></td>
                <td>新华大宗行情软件——点证版客户端兼容各Windows操作系统。</td>
            </tr>
            </tbody>
        </table>


        <span>
            <a href="#" class="btn btn-large btn-primary disabled">手机软件下载</a>
        </span>
        <table class="table table-bordered" style="margin: 20px 10px 20px 0px;">
            <thead>
            <tr>
                <th>类型</th>
                <th>名称</th>
                <th>下载</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td rowspan="3">手机交易软件</td>
                <td>新华大宗-贵金属</td>
                <td><a href="https://itunes.apple.com/us/app/xin-hua-da-zong/id882353058">iPhone版下载</a></td>
            </tr>
            <tr>
                <td>新华大宗-贵金属</td>
                <td><a href="http://www.hbot.cn/uploadfile/hbot/Setup_pobo.exe">iPhone越狱版下载</a></td>
            </tr>
            <tr>
                <td>新华大宗-贵金属</td>
                <td><a href="http://www.hbot.cn/uploadfile/hbot/phone/trade/xhdz.apk">安卓版下载</a></td>
            </tr>
            <tr>
                <td rowspan="4">手机行情软件</td>
                <td>新华商品-点证版</td>
                <td><a href="https://itunes.apple.com/us/app/xin-hua-shang-pin/id882630931">iPhone版下载</a></td>
            </tr>
            <tr>
                <td>新华商品-点证版</td>
                <td><a href="http://www.hbot.cn/uploadfile/hbot/phone/xhsp.ipa">iPhone越狱版下载</a></td>
            </tr>
            <tr>
                <td>新华商品-点证版</td>
                <td><a href="http://www.hbot.cn/uploadfile/hbot/phone/xhsphd.ipa">iPad越狱版下载</a></td>
            </tr>
            <tr>
                <td>新华商品-点证版</td>
                <td><a href="http://www.hbot.cn/uploadfile/hbot/phone/xinhuashangpin2.apk">安卓版下载</a></td>
            </tr>
            </tbody>
        </table>

    </div>
</div>
</@indexlayout>