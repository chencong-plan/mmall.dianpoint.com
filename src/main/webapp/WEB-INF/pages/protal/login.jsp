<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../common/tag.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="description"
          content="点点商城是一家C2M模式的电子商务平台，旨在通过用户直连制造商（Customer TO Manufactory），砍掉传统零售中的所有加价环节，使消费者以出厂成本价就能买到高品质的产品。"/>
    <meta name="renderer" content="webkit"/>
    <meta http-equiv="X-UA-Compatible" content="IE=Edge"/>
    <title>必要 - 买大牌制造商产品，上必要</title>
    <link href="${basePath}/resources/css/common/common.css" rel="stylesheet" type="text/css"/>
    <link href="${basePath}/resources/css/common/new.main.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" type="text/css" href="${basePath}/resources/css/new.account.css"/>

</head>
<body id="pagebody">


<!-- 导航栏 -->
<div class="account-header">
    <div>
        <a href="http://www.biyao.com/home/index.html"></a>
        <p>欢迎来到必要，请<span class="account-login">登录</span>|<span class="account-regist">注册</span></p>
    </div>
</div>

<style>
    .geetest_panel_error_code {
        display: none;
    }

    .biyao-caution {
        margin-top: 20px;
        color: #FF3333;
        line-height: 15px;
        font-size: 12px
    }

    .biyao-caution img {
        margin-right: 6px;
        vertical-align: middle;
        line-height: 15px;
    }

    .hide {
        display: none
    }

    .account-title {
        margin-top: 30px
    }

    .account-sms-btn {
        height: 50px;
        margin-top: 19px;
        line-height: 50px;
        text-align: center;
        font-size: 20px;
        color: #fff;
        cursor: pointer;
        background: #F49F26;
    }

    .smssw {
        cursor: pointer;
        font-weight: 600;
        color: #523669;
    }

    .account-phoneCode span.getSms {
        background-color: #d6cdd9;
    }

    .account-title a {
        margin-top: 5px;
        margin-left: 15px;
        cursor: pointer;
        font-size: 14px;
        font-weight: normal;
        color: #808080;
        float: right;
    }

    .account-title a.active {
        color: #523669;
    }

    .account-title a img {
        height: 24px;
    }
</style>


<div class="account-main">
    <h4 class="account-title"><b></b>用户登录
        <a class="pwd_btn active">密码登录</a>
        <a class="sms_btn">短信登录</a>
    </h4>
    <ul class="pwd-login">
        <li><input type="text" name="userName" autoComplete="new-password" id="userName" maxLength="11"/><i
                class="account-error"></i></li>
        <li><input type="password" autoComplete="new-password" value="" name="password" id="password" maxLength="32"/><i
                class="account-error"></i></li>
        <li class="login-auto">
            <span><b></b>下次自动登录</span>
            <a href="javascript:void(0);" id="findPassword">忘记密码</a>
        </li>
        <li class="account-prompt"></li>
        <li class="account-btn">登录</li>
    </ul>
    <ul class="sms-login hide">
        <li><input type="text" name="phone-number" class="sms-phone-number" autoComplete="false" placeholder="请输入手机号"
                   maxLength="11"/><i class="account-error"></i></li>
        <li class="account-phoneCode">
            <input type="text" name="phoneCode" autoComplete="new-password" placeholder="请输入短信验证码" class="sms-code"
                   maxlength="6"/>
            <span>获取验证码</span>
            <i class="account-error"></i>
        </li>
        <li style="height:29px"></li>
        <li class="account-sms-btn">登录</li>
    </ul>
    <div class="login-third">
        <span>使用第三方账号登录：</span>
        <a href="javascript:void(0);" id="thirdWX" class="third-wx"></a>
        <a href="javascript:void(0);" id="thirdQQ" class="third-qq"></a>
    </div>
    <%--<p class="biyao-caution"><img--%>
    <%--src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAA8AAAAPCAYAAAA71pVKAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyhpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNi1jMDY3IDc5LjE1Nzc0NywgMjAxNS8wMy8zMC0yMzo0MDo0MiAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENDIDIwMTUgKE1hY2ludG9zaCkiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6MzM1Rjk4NzlEQkM2MTFFNzk2OTE4QkE0RjQzMzgzOTEiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6MzM1Rjk4N0FEQkM2MTFFNzk2OTE4QkE0RjQzMzgzOTEiPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDozMzVGOTg3N0RCQzYxMUU3OTY5MThCQTRGNDMzODM5MSIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDozMzVGOTg3OERCQzYxMUU3OTY5MThCQTRGNDMzODM5MSIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/PqCqdbcAAAEMSURBVHjalJOxDsFQGIXbRrAjNhImCxISEonEU6jBZhJvYPASmCQGQ+slDCwiFg9gYCLYWXB+OZVK7m3iT760PT3n9ubv/c1XMWf4ygJN0AJVkAAXsAYOmIOn3+xVBmxAj8Y8MHl1qG/o+wmLsAJTUKP5xHcnPtf4fuUtEOICsp0BmBjBNQIP+isStCmoggeFNqHflnCbK6oqpdGHkpNwGSyM/2oJChKOg/Of4SuIWbxJakxHjS4fvEl4CxoaU1qj18FOwjMeAFW9NLr4ZxJ2QQR0FCZToXXod0M8qzY7GAbjgEZ1QZ/bfpq+wcjy5Nz5H5dsZpxm2WqUg7P/bCtgqkpeV9lUl3yn6i3AALlgPSjW8/lmAAAAAElFTkSuQmCC"/>必要不会以任何理由要求您转账汇款，谨防诈骗。--%>
    <%--</p>--%>
</div>
<div class="qrcodeDivBox _hide">
    <div class="qrcode-background"></div>
    <div class="qrcode-content">
        <div class="qrcode-top">
            <div class="qrcodeDiv" id="qrcodeDiv"></div>
        </div>
        <div class="qrcode-btm"><span id="qrcodeHide"></span></div>
    </div>
</div>


<!-- 底部栏 -->
<%@ include file="../common/footer.jsp" %>

<script type="text/javascript">
    window.ControllerSite = "http://www.biyao.com";
    window.ApiSite = "http://api.biyao.com";
    window.loginUserId = "0";
</script>

<script type="text/javascript" src="http://static.biyao.com/pc/common/js/jquery-1.8.3.js?v=biyao_7d074dc"></script>
<script type="text/javascript" src="http://static1.biyao.com/pc/common/js/jquery.cookie.js?v=biyao_a5283b2"></script>
<script type="text/javascript" src="http://static2.biyao.com/pc/common/js/md5.js?v=biyao_c8cab85"></script>
<script type="text/javascript"
        src="http://static3.biyao.com/pc/common/js/master/masterCommon.js?v=biyao_e978582"></script>
<script type="text/javascript" src="http://static4.biyao.com/pc/common/js/jquery.extention.js?v=biyao_98daa33"></script>
<script type="text/javascript" src="http://static.biyao.com/pc/common/js/common.js?v=biyao_85d404c"></script>


<script type="text/javascript" src="http://castatic.fengkongcloud.com/pr/v1/smcp.min.js"></script>
<script type="text/javascript" src="http://static3.biyao.com/pc/www/js/account/account.js?v=biyao_c661f9c"></script>
<script type="text/javascript" src="http://static4.biyao.com/pc/www/js/account/shumei.js?v=biyao_c7af2fd"></script>
<script type="text/javascript" src="http://static.biyao.com/pc/www/js/account/login.js?v=biyao_b4a191d"></script>


<script type="text/javascript" src="http://static1.biyao.com/pc/common/js/bytrack.js?v=biyao_347126a"></script>
</body>
</html>