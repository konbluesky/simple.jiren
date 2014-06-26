<#include "/WEB-INF/template/common/layout/l_index.ftl"/>
<@indexlayout>
<div class="width:100%;">
    <h2 class="block-title">
        农行开户咨询
    </h2>
    <div class="container-fluid">
        <div class="row-fluid">
            <div class="span4">
                <div style="width: 100%;height: 70px;padding-left: 40px;padding-top:40px;">
                    <img src="${CONTEXT_PATH}/img/kaihu_abc_logo.jpg">
                </div>
                <div style="padding-left: 80px;">
                    <img src="${CONTEXT_PATH}/img/person_3d.jpeg">
                </div>
            </div>
            <div class="span8">
                <div style="padding-left:10px;padding-top:40px;">
                    <span>
                        <div class="alert alert-block">
                            <h4>温馨提示:</h4>
                            请填写您的真实信息，我们会在24小时之内与您取得联系
                            <br>您也可以通过&nbsp;
                            <a href="http://wpa.qq.com/msgrd?v=3&uin=181997883&site=qq&menu=yes" class="btn btn-success btn-small">在线客服</a>
                            &nbsp;告诉我们的客服人员。
                        </div>
                    </span>
                    <@form_kaihu/>
                </div>
            </div>
        </div>
    </div>

<script type="text/javascript">
    $("#kaihu").ready(function(){
//        $("#ui_name").onblur(function(){
//            alert("da");
//        });
    });
</script>
</div>
</@indexlayout>


<#macro form_kaihu>
<form class="form-horizontal" action="${CONTEXT_PATH}/kaihu/add" method="post">
    <div class="control-group">
        <label class="control-label" for="ui_name">姓名</label>
        <div class="controls">
            <input type="text" id="ui_name" name="ui.name" placeholder="怎么称呼您?">
        </div>
    </div>
    <div class="control-group">
        <label class="control-label" for="ui_name">性别</label>
        <div class="controls">
            <label class="checkbox inline">
                <input type="radio" name="ui.gender" value="1"> 先生
            </label>
            <label class="checkbox inline">
                <input type="radio" name="ui.gender" value="0"> 女士
            </label>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label" for="ui_phone">手机号码</label>

        <div class="controls">
            <input type="text" id="ui_phone" name="ui.phone" placeholder="让我们的客服MM及时联系您">
        </div>
    </div>
    <div class="control-group">
        <label class="control-label" for="ui_qq">QQ</label>

        <div class="controls">
            <input type="text" id="ui_qq" name="ui.qq" placeholder="您的QQ号">
        </div>
    </div>
    <div class="control-group">
        <label class="control-label" for="ui_qq">Email</label>

        <div class="controls">
            <input type="text" id="ui_q" name="ui.email" placeholder="Email">
        </div>
    </div>
    <div class="control-group">
        <label class="control-label" for="ui_remark">备注</label>

        <div class="controls">
            <textarea id="ui_remark" style="width:220px" name="ui.remark" rows="3" placeholder="有什么需要特别说明的嘛?如:希望我们的客服人员在什么时间段联系您."></textarea>
        </div>
    </div>
    <div class="control-group" style="text-align: center;">
        <label class="control-label">&nbsp;</label>
        <div class="controls">
            <button type="submit" style="width:220px;" class="btn btn-primary btn-block">确定${aaa??}</button>
        </div>
    </div>
</form>
</#macro>