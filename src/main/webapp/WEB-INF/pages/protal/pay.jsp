<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../common/tag.jsp" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta property="wb:webmaster" content="8eabb156d1a9cb46">
    <meta name="renderer" content="webkit"/>
    <meta http-equiv="X-UA-Compatible" content="IE=Edge"/>
    <title>必要平台-在线支付 – 必要-买大牌制造商产品，上必要</title>
    <link href="http://static.biyao.com/pc/favicon.ico" rel="shortcut icon" type="image/x-icon" />
    <link href="http://static.biyao.com/pc/favicon.ico" rel="icon" type="image/x-icon" />
    <link href="http://static.biyao.com/pc/common/css/common.css?v=biyao_d540df3" rel="stylesheet"/>
    <link href="http://static.biyao.com/pc/common/css/new.main.css?v=biyao_a24bdb8" rel="stylesheet"/>
    <link href="http://static.biyao.com/pc/www/css/cm_www.css?v=biyao_6c1f178" rel="stylesheet"/>
    <link href="http://static.biyao.com/pc/buy/css/newBuy.css?v=biyao_aea4760" rel="stylesheet"/>

    <script type="text/javascript" src="http://static.biyao.com/pc/common/js/jquery-1.8.3.js?v=biyao_7d074dc"></script>
    <script type="text/javascript" src="http://static.biyao.com/pc/common/js/jquery.extention.js?v=biyao_98daa33"></script>
    <script type="text/javascript" src="http://static.biyao.com/pc/common/js/jquery.cookie.js?v=biyao_a5283b2"></script>
    <script type="text/javascript" src="http://static.biyao.com/pc/common/js/common.js?v=biyao_92c377d"></script>
    <script type="text/javascript" src="http://static.biyao.com/pc/common/js/ui/dialog.js?v=biyao_ba57fb5"></script>
    <script type="text/javascript" src="http://static.biyao.com/pc/common/js/ui/select.js?v=biyao_1dcaa7c"></script>
    <script type="text/javascript" src="http://static.biyao.com/pc/common/js/ui/loadmask.js?v=biyao_5aac5cc"></script>
    <script type="text/javascript" src="http://static.biyao.com/pc/buy/js/commonre.js?v=biyao_27f335b"></script>
    <script type="text/javascript" src="http://static.biyao.com/pc/minisite/byshoes/js/jquery.cookie.js?v=biyao_a5283b2"></script>

</head>
<body>



<!-- 新版首页 -->
<div class="pub_nav">
    <div class="wrap clearfix">
        <ul class="header-nav">
            <li><a href="${basePath}/" target="_blank">首页</a><b></b></li>
            <li><a href="http://www.biyao.com/minisite/bzzx" target="_blank">平台政策</a><b></b></li>
            <li><a href="http://www.biyao.com/minisite/sjzx" target="_blank">商家入驻</a></li>
            <!-- <li><a onclick="LT.skip_to()" id="supCenter">商家入驻</a></li> -->
        </ul>
        <ul class="header-user">

            <li class="user-center" style="display:inline-block;">
                <a href="javascript:void(0)" id="userName">
                    by_b2bYGy55
                    <span></span>
                </a>
                <div>
                    <i></i>
                    <ul>
                        <li><a href="${basePath}/u/1/order" target="_blank">我的订单</a></li>
                        <li><a href="${basePath}/u/1" target="_blank">个人中心</a></li>
                        <li><a href="${basePath}/account/logout">退出登录</a></li>
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
            <li class="vertical-line-hook" ><b></b></li>
            <li class="user-server">
                <a href="javascript:void(0)">
                    客户服务
                    <span></span>
                </a>
                <div>
                    <i></i>
                    <ul>
                        <li><a href="http://www.biyao.com/service/myService.html" target="_blank" id="customer_server" >我的客服</a></li>
                    </ul>
                </div>
            </li>
            <li class="user-shopCar">
                <a href="${basePath}/u/1/cart" target="_blank">购物车<i id="shopCar">0</i></a>
            </li>
        </ul>
    </div>
</div>
<div class="bd_bottom_ea">
    <div class="wrap pub_logo_box clearfix">
        <div class="pub_logo">
            <a href="http://www.biyao.com/home/index.html"><img src="http://static.biyao.com/pc/www/img/logo.png?v=biyao_e06b35d"/></a>
        </div>
    </div>
</div>





<div class="wrap relative">
    <div class="shopStepBox">
        <div class="publicStepsbox">
            <div class="car_step_icon car_step3"></div>
            <ul class="clearfix car_step_txt">
                <li>查看购物车</li>
                <li>确认订单信息</li>
                <li class="checked">在线付款</li>
                <li>收货并评价</li>
            </ul>
        </div>
    </div>
</div>
<div class="wrap  ie78 mg_t20 bg_fff mg_b40 online_info_box">
    <div class="shoppingBox  t_c">
        <div class="suc_bg inline"></div>
        <div class="sop_tip inline">
            <p class="f18 col_523 t_l" id="hintID">订单提交成功，马上付款~</p>
            <p class="col_666 t_l f16 lineH24">请在 <span class="col_b76 f16" id="left_time_id">45分00秒</span> 内完成支付</p>
            <p class=" t_l lineH24 mg_t20">
                <span class="f12 inline col_666">应付金额：</span>
                <span class="f12 col_f60 inline fb">458</span>
                <span class="f12 inline  col_666">元</span>
            </p>

            <p class="col_666 lineH24 f12 t_l">生产周期：15天</p>
            <p class=" t_l lineH24"><span class="inline f12 col_666">收货人：chencong   15271911111 </span><span class="inline f12 col_666 mg_l40">收货地址：湖北省武汉市洪山区11111111111111111111111</span></p>

        </div>
    </div>
    <div class="shoppingBox pd_t10  bd_top_e8 bg_fff">
        <h4 class="order_title_n relative pd_b10">
            <span class="pd_l15 inline f16 col_523">请选择支付方式完成付款</span>
            <!-- <a href="#" class="get_paid_btn inline" onclick="getPaid();">找人代付</a> -->
        </h4>
        <form id="form33" action="/order/pay" method="post" target="_blank">
            <input type="hidden" name="order_id_list" value="MTIyMDEyMzQzODA1ODI3OTU2LDEyMjAxMjM0MzgwNTgyNzk4NQ==" />

            <input type="hidden" id="pay_type" name="pay_type" value="1" />
            <input type="hidden" id="bank_type" name="bank_type" value="DEFAULT" />
            <input type="hidden" name="totalprice" value="458" />
        </form>
        <div class="payment_list">
            <ul class="paymentTab mg_t15">
                <li class="checked f14">支付平台</li>
            </ul>
            <ul class="clearfix payIconBox pd20">
                <!-- 微信扫码支付平台 -->
                <li>
                    <label class="radioLable" data-comm="DEFAULT" data-paytype="4" data-value="DEFAULT" data-cartype='{"credit":false,"debit":false}' data-credit='{"common":false,"quick":false}' data-debit='{"common":false,"quick":false}' data-show="false"><i class="radioIcon inline mg_l15"></i><i class="bank_new bk20  inline mg_l15"></i></label>
                </li>
                <li>
                    <label class="radioLable checked" data-comm="DEFAULT" data-paytype="1" data-value="DEFAULT" data-cartype='{"credit":false,"debit":false}' data-credit='{"common":false,"quick":false}' data-debit='{"common":false,"quick":false}' data-show="false"><i class="radioIcon inline mg_l15"></i><i class="bank_new bk19 inline mg_l15"></i></label>
                </li>
                <!-- 支付宝平台-->
                <li>
                    <label class="radioLable" data-comm="DEFAULT" data-paytype="3" data-value="DEFAULT" data-cartype='{"credit":false,"debit":false}' data-credit='{"common":false,"quick":false}' data-debit='{"common":false,"quick":false}' data-show="false"><i class="radioIcon inline mg_l15"></i><i class="bank_new bk21  inline mg_l15"></i></label>
                </li>

            </ul>
        </div>

        <div class="t_c pd20  bd_top_e8 relative">
            <!-- 			<span class="inline get_paid_link"><span class="inline col_666 f14">您还可以：</span><a href="###" onclick="getPaid();" class="get_paid_btn col_724 inline f14">找人代付</a></span> -->
            <a href="#" id="pay" class="confirm_120 inline col_fff f18" >确认支付</a>
        </div>
    </div>
    <div id="paymaodian"></div>
</div>

<script type="text/html" id="contentDiv">
    <div class="pop_bd pd_t15 clearfix">
        <p class="mg_b10" ><i id="new_bank_title" class=""></i></p>
        <div class="mg_b15" >
            <span class="inline col_66 f14">选择支付卡类型：</span>
            <label class="radiolable_type inline lable_bank_d" value="debit" data-type="">
                <i class="radioIcon inline mg_l15"></i>
                <span class="mg_l15 f16 inline bank_d col_333">储蓄卡</span>
            </label>
            <label class="radiolable_type inline lable_bank_c" value="credit" data-type="">
                <i class="radioIcon inline mg_l15"></i>
                <span class="mg_l15 f16 inline bank_c col_333">信用卡</span>
            </label>
            <div class="f14 col_f60 h20 " id="radiolable_type_tips"></div>
        </div>
        <div class="bd_top_e8">
            <label class="radiolable_chanel inline mg_t15 lable_bank_k" value="fp">
                <i class="radioIcon inline"></i>
                <span class="mg_l15 f14 inline bank_colr_k col_333">快捷支付</span>
                <span class="mg_l15 f14 inline col_999">开通快捷支付后，无需跳转，一步轻松付</span>
            </label><br />
            <label class="radiolable_chanel inline mg_t15 lable_bank_co" value="com">
                <i class="radioIcon inline"></i>
                <span class="mg_l15 f14 inline bank_colr_co col_333">网银支付</span>
                <span class="mg_l15 f14 inline col_999">跳转至银行网站支付</span>
            </label><br />
            <span class=" f14 inline col_f60 h20 mg_t10" id="radiolable_chanel_tips"></span>
        </div>
        <div class="bd_top_e8 pd_t20 t_c mg_t10">
            <a class="confirm_120 inline col_fff f18 " style="width:140px;" id="dialog_btn" href="javascript:;">确认支付方式</a>
        </div>
    </div>
</script>
<script type="text/javascript">
    payfinish = function () {
        var callurl = ""+"/Order/SYChargeSuccess";
        $.ajax({
            url: callurl,
            contentType: "application/x-www-form-urlencoded; charset=utf-8",
            type: "POST",
            dataType: "json",

            async : false,
            global : true,
            success : function(msg) {
                if (msg.IsError) {
                    $(".pop_close").click();
                    LT.alertSmall("订单支付异常。", function() {
                    });
                } else {
                    if (msg.Data != '') {
                        window.location.href = msg.Data;
                    }
                }
            },
            error : function() {
                $(".pop_close").click();
                LT.alertSmall("订单支付异常。", function() {
                });
            }
        });
    };
    $(function() {
        if (window.location.href.indexOf('#nsc') > -1) {
            var a = '<div class="steps_left">' + '</div>'
                + '<div class="steps_right clearfix">'
                + '<ul class="steps3">'
                + '<li class="col_ee5b47">1.确认订单信息</li>'
                + '<li  class="step_checked"><div>2.在线付款</div></li>'
                + '<li>3.等待收货给出评价</li>' + '</ul>' + '</div>';
            $('.stepsbox').html(a)
        }
    });

    var timeS = 7199;
    window.onload=showTime();
    function showTime(){
        var hour = Math.floor(timeS/60/60);
        var minute = Math.floor(timeS/60%60);
        var second = Math.floor(timeS%60);
        $("#left_time_id").html(hour+"小时"+minute+"分"+second+"秒");
        timeS=timeS-1;
        if(timeS>0){
            setTimeout("showTime()",1000);
        }else{
            $("#hintID").html("超时未支付，订单已自动取消!");
            $("#left_time_id").html("0小时0分0秒");
        }
    }
</script>
<script type="text/javascript" src="http://static.biyao.com/pc/buy/js/pay.js?v=biyao_7850093"></script>
<script type="text/javascript" src="http://static.biyao.com/pc/www/js/product/fcode.js?v=biyao_1a81fd1"></script>


<!-- 底部栏 -->
<div class="footer">
    <div>
        <ul class="footer-serve clearfix">
            <li>
                <dl>
                    <dt class="serve-make"></dt>
                    <dd>直连一线制造</dd>
                </dl>
            </li>
            <li>
                <dl>
                    <dt class="serve-backage"></dt>
                    <dd>全品类包邮</dd>
                </dl>
            </li>
            <li>
                <dl>
                    <dt class="serve-pay"></dt>
                    <dd>平台先行赔付</dd>
                </dl>
            </li>
            <li>
                <dl>
                    <dt class="serve-refund"></dt>
                    <dd>7天无忧退换货</dd>
                </dl>
            </li>
        </ul>
        <div class="footer-main clearfix">
            <ul class="footer-detail clearfix">
                <li>
                    <h2>帮助中心</h2>
                    <ul>
                        <li><a href="http://www.biyao.com/minisite/bzzx" target="_blank">平台政策</a></li>
                        <li><a href="http://www.biyao.com/minisite/sjzx" target="_self" id="supEnter">商家入驻</a></li>
                    </ul>
                </li>
                <li>
                    <h2>关注必要</h2>
                    <ul>
                        <li><a target="_blank" href="http://weibo.com/biyaoshangcheng">新浪微博</a></li>
                        <li class="footer-wxCode">
                            <a href="javascript:void(0)">官方微信</a>
                            <div><i></i><span></span></div>
                        </li>
                    </ul>
                </li>
                <li>
                    <h2>关于必要</h2>
                    <ul>
                        <li><a target="_blank" href="http://www.biyao.com/minisite/ljby">了解必要</a></li>
                        <li><a target="_blank" href="http://www.biyao.com/help/8.html">加入必要</a></li>
                        <li><a target="_blank" href="http://www.biyao.com/help/tel.html">联系我们</a></li>
                    </ul>
                </li>
                <li>
                    <h2>下载必要APP</h2>
                    <p></p>
                </li>
            </ul>
            <dl class="footer-contact">
                <dt>服务监督邮箱</dt>
                <dd>cs@biyao.com</dd>
            </dl>
        </div>
        <div class="footer-info">
            <p>
                <span id="year"></span>
                <script>
                    document.getElementById('year').innerHTML = 'Copyright © '+ new Date().getFullYear() +', BIYAO.COM';
                </script>
                <span>珠海必要科技有限公司</span>
                <span>粤网文〔2018〕0969-419号</span>
                <span>
		    		<a href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=44049102496139" target="_blank">粤公网安备44049102496139号</a>
		            <a href="http://www.miibeian.gov.cn" target="_blank">粤ICP备13088531号-2</a>
		        </span>
            </p>
            <p>
                <span><a href="http://static.biyao.com/pc/www/img/footer/by_drugs.png" target="_blank">互联网药品信息服务资格证书</a></span>
                <span><a href="http://static.biyao.com/pc/www/img/footer/by_food.jpg" target="_blank">食品经营许可证</a></span>
            </p>
            <p><span>公司地址：珠海市唐家湾镇哈工大路1号1栋E301-15</span><span>公司电话：0756-3635580</span></p>
            <p>必要商城提示您，产品“由某制造商出品”仅为陈述制造商既往生产经历，并不意味着相应产品与特定品牌产品相同或近似。</p>
        </div>
    </div>
</div>
<script type="text/javascript" src="http://static.biyao.com/pc/www/js/common.js?v=biyao_7e1dcfa"></script>
<script type="text/javascript" src="http://static.biyao.com/pc/common/js/bytrack.js?v=biyao_c1a6d92"></script>
</body>
</html>
