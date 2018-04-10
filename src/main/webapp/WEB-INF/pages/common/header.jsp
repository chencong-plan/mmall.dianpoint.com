<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8"%>
<div class="clearfix">
        <ul class="header-nav">
            <li><a href="http://www.biyao.com/home/index.html" target="_blank">首页</a><b></b></li>
            <li><a href="http://www.biyao.com/minisite/bzzx" target="_blank">平台政策</a><b></b></li>
            <li><a href="http://www.biyao.com/minisite/sjzx" target="_blank">商家入驻</a></li>
            <!-- <li><a href="javascript:void(0)" id="supCenter">商家入驻</a></li> -->
        </ul>
        <ul class="header-user">
            <li class="user-out">
                <%--<a href="javascript:void(0)" id="loginBtn" class="user-login">登录</a>--%>
                <%--<a href="javascript:void(0)" id="registBtn">注册</a>--%>
                <a href="${basePath}/account/login" id="loginBtn" class="user-login">登录</a>
                <a href="${basePath}/account/regist" id="registBtn">注册</a>
                <b></b>
            </li>
            <li class="user-center">
                <a href="javascript:void(0)" id="userName"><span></span></a>
                <div>
                    <i></i>
                    <ul>
                        <li><a href="http://www.biyao.com/MyCenters/MyOrder.html" target="_blank">我的订单</a></li>
                        <li><a href="http://www.biyao.com/MyCenter/Profile.html" target="_blank">个人中心</a></li>
                        <li><a href="http://www.biyao.com/account/logout">退出登录</a></li>
                    </ul>
                </div>
                <b></b>
            </li>
            <li class="user-app">
                <a href="javascript:void(0)">下载必要APP</a>
                <div>
                    <i></i>
                    <dl>
                        <dt></dt>
                        <dd>
                            <span>买大牌制造商产品</span>
                            <h6 style="font-weight:normal">上必要</h6>
                            <p></p>
                        </dd>
                    </dl>
                </div>
                <b></b>
            </li>
            <li class="user-msg">
                <a href="javascript:void(0);" class="msg-center">
                    <i id="hasMsg"></i>
                    <span class="msg-title">消息中心</span>
                    <i id="unread">0</i>
                </a>
                <div class='msg-center-box'>
                    <i class="msg-center-i"></i>
                    <div id="msg-ul" style="left: -180px;">
                        <div id="msg-scroll"></div>
                        <div id="scrollOut" class="scrollOut off none">
                            <span id='scrollIn' class="scrollIn inline"></span>
                        </div>
                    </div>
                </div>
            </li>
            <li class="vertical-line-hook"><b></b></li>
            <li class="user-server">
                <a href="javascript:void(0)">
                    客户服务
                    <span></span>
                </a>
                <div>
                    <i></i>
                    <ul>
                        <li><a href="http://www.biyao.com/service/myService.html" target="_blank" id="customer_server">我的客服</a>
                        </li>
                    </ul>
                </div>
            </li>
            <li class="user-shopCar">
                <a href="http://buy.biyao.com/shopcars/index.html" target="_blank">购物车<i id="shopCar">0</i></a>
            </li>
        </ul>
    </div>
