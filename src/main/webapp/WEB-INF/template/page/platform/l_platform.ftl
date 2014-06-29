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
    }
    .platform-right{
        width: 739px;
        float: right;
        overflow: hidden;
    }
</style>
<@indexlayout>
<div class="platform-left" style="height:300px;">
    <div class="well">
    <ul class="nav nav-list">
        <li class="nav-header">新华(浙江)大宗商品交易中心</li>
        <#--<li class="active"><a href="#">首页</a></li>-->
        <#--<li class="nav-header">关于交易所</li>-->
        <li><a href="#">交易所简介</a></li>
        <li><a href="#">交易规则</a></li>
        <li class="nav-header">交易软件下载</li>
        <li><a href="#">交易软件</a></li>
        <li><a href="#">手机交易软件</a></li>
    </ul>
    </div>
</div>
<div class="platform-right" style="height:1000px;">
    <div id="jysjj">
&nbsp;
    </div>
    <div id="software">
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
    <div id="jysjj">
    </div>
</div>
</@indexlayout>