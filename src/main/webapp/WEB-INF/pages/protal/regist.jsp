<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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


<div class="account-main">
    <ul>
        <li class="account-title"><b></b>新用户注册</li>
        <li><input type="text" name="userName" id="userName" maxLength="11"/><i class="account-error"></i></li>
        <li class="account-imgCode">
            <input type="text" name="imgCode" id="imgCode" maxlength="4"/>
            <img src=""/>
            <span>看不清<br>换一张</span>
            <i class="account-error"></i>
        </li>
        <li class="account-phoneCode">
            <input type="text" name="phoneCode" id="phoneCode" maxlength="6"/>
            <span>获取验证码</span>
            <i class="account-error"></i>
        </li>
        <li><input type="password" name="password" id="password" maxLength="32"/><i class="account-error"></i></li>
        <li><input type="password" name="repeatPassword" id="repeatPassword" maxLength="32"/><i
                class="account-error"></i></li>
        <li class="regist-agree">
            <span><b class="regist-yes"></b>我已阅读并同意</span>
            <a href="http://static3.biyao.com/pc/www/html/xieyi.html" target="_blank">《必要服务协议》</a>
        </li>
        <li class="account-prompt"></li>
        <li class="account-btn">注册</li>
    </ul>
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


<script type="text/javascript" src="http://static1.biyao.com/pc/www/js/account/account.js?v=biyao_c661f9c"></script>
<script type="text/javascript" src="http://static2.biyao.com/pc/www/js/account/regist.js?v=biyao_57ca4a4"></script>

<script type="text/javascript" src="http://static1.biyao.com/pc/common/js/bytrack.js?v=biyao_347126a"></script>
</body>
</html>
