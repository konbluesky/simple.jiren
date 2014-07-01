<#include "/WEB-INF/template/common/macro/base.ftl"/>
<!DOCTYPE html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />

    <@basehead/>

    <!-- Le styles -->
    <style type="text/css">
        body {
            padding-top: 40px;
            padding-bottom: 40px;
            background-color: #f5f5f5;
        }

        .form-signin {
            max-width: 300px;
            padding: 19px 29px 29px;
            margin: 0 auto 20px;
            background-color: #fff;
            border: 1px solid #e5e5e5;
            -webkit-border-radius: 5px;
            -moz-border-radius: 5px;
            border-radius: 5px;
            -webkit-box-shadow: 0 1px 2px rgba(0,0,0,.05);
            -moz-box-shadow: 0 1px 2px rgba(0,0,0,.05);
            box-shadow: 0 1px 2px rgba(0,0,0,.05);
        }
        .form-signin .form-signin-heading,
        .form-signin .checkbox {
            margin-bottom: 10px;
        }
        .form-signin input[type="text"],
        .form-signin input[type="password"] {
            font-size: 16px;
            height: auto;
            margin-bottom: 15px;
            padding: 7px 9px;
        }
        h1{
            font: bold 28px "Microsoft Yahei";
            padding-bottom:10px ;
        }
    </style>
</head>
<body>
<div class="container">
    <#--<div style="text-align: center;"><h1>人投网门户管理系统</h1></div>-->
    <form action="login" method="post" class="form-signin">
        <input type="text" name="username" class="input-block-level" placeholder="请输入登录账号">
        <input type="password" name="password" class="input-block-level" placeholder="请输入密码">
        <button class="btn btn-smail btn-primary btn-block" type="submit">登录</button>
    </form>
</div>
</body>
</html>
