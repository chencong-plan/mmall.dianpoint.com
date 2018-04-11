<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../common/tag.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=Edge"/>
    <title>必要平台-购物车 – 必要-买大牌制造商产品，上必要</title>
    <link href="http://static.biyao.com/pc/favicon.ico" rel="shortcut icon" type="image/x-icon" />
    <link href="http://static.biyao.com/pc/favicon.ico" rel="icon" type="image/x-icon" />
    <link href="${basePath}/resources/css/common/common.css" rel="stylesheet" type="text/css"/>
    <link href="${basePath}/resources/css/common/new.main.css" rel="stylesheet" type="text/css"/>

    <link href="http://static.biyao.com/pc/www/css/cm_www.css?v=biyao_6c1f178" rel="stylesheet"/>
    <link href="http://static.biyao.com/pc/buy/css/newBuy.css?v=biyao_aea4760" rel="stylesheet"/>

    <%--<script type="text/javascript" src="http://static.biyao.com/pc/common/js/jquery-1.8.3.js?v=biyao_7d074dc"></script>--%>
    <%--<script type="text/javascript" src="http://static.biyao.com/pc/common/js/jquery.extention.js?v=biyao_98daa33"></script>--%>
    <%--<script type="text/javascript" src="http://static.biyao.com/pc/common/js/jquery.cookie.js?v=biyao_a5283b2"></script>--%>
    <%--<script type="text/javascript" src="http://static.biyao.com/pc/common/js/common.js?v=biyao_92c377d"></script>--%>
    <%--<script type="text/javascript" src="http://static.biyao.com/pc/common/js/ui/dialog.js?v=biyao_ba57fb5"></script>--%>
    <%--<script type="text/javascript" src="http://static.biyao.com/pc/common/js/ui/select.js?v=biyao_1dcaa7c"></script>--%>
    <%--<script type="text/javascript" src="http://static.biyao.com/pc/common/js/ui/loadmask.js?v=biyao_5aac5cc"></script>--%>
    <%--<script type="text/javascript" src="http://static.biyao.com/pc/buy/js/commonre.js?v=biyao_27f335b"></script>--%>
    <%--<script type="text/javascript" src="http://static.biyao.com/pc/minisite/byshoes/js/jquery.cookie.js?v=biyao_a5283b2"></script>--%>
</head>
<body>



<!-- 新版首页 -->
<div class="pub_nav">
    <div class="wrap clearfix">
        <ul class="header-nav">
            <li><a href="http://www.biyao.com/home/index.html" target="_blank">首页</a><b></b></li>
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
                <a href="http://buy.biyao.com/shopcars/index.html" target="_blank">购物车<i id="shopCar">0</i></a>
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
            <div class="car_step_icon car_step1"></div>
            <ul class="clearfix car_step_txt">
                <li class="checked">查看购物车</li>
                <li>确认订单信息</li>
                <li>在线付款</li>
                <li>收货并评价</li>
            </ul>
        </div>
    </div>
</div>
<div class="pd_b40">
    <div class="wrap ie78">
        <div class="lineH24 t_l  pd_t30 pd_b10 bd_b_d5c ">
            <span class="f18 col_666 mg_l10 col_523">购物车</span>
        </div>
        <div class="comment_box">
            <table class="sop_table1" cellpadding="0" cellspacing="0">
                <tr>
                    <th colspan="2" width="15%" align="left" class="pd_l10"><label
                            class="checked checkbox" name="chkAll"><i
                            class="openIcon inline mg_r10"></i></label><span class="col_523">全选</span></th>
                    <th align="left" class="col_523">商品信息</th>
                    <th width="10%" align="center" class="col_523">单价</th>
                    <th width="10%" align="center" class="col_523">数量</th>
                    <th width="20%" align="center" class="col_523 none">包装</th>
                    <th width="10%" align="center" class="col_523">小计</th>
                    <th width="5%" align="center" class="col_523">操作</th>
                </tr>
            </table>
        </div>

        <div class="shoppingBox ">
            <div class="order_title divdel" name="divTitle_130090" supplierid="130090">
                <label class="checked inline col_666 checkbox" name="chk_Supplier" data-value="130090">
                    <i class="openIcon inline mg_r10"></i>
                </label>
                <!--暂时关闭IM入口，勿删-->


                <a>
                    <span class="inline">商家：</span>
                    <span id="J_product_name " class="inline col_666">chunfeng-见地服饰</span>
                </a><!--暂时关闭IM入口，临时替换-->

            </div>
            <table class="sop_table1 lastTh tabledel bg_fff" cellpadding="0" cellspacing="0">


                <tr>
                    <td width="30" align="left" class="pd_l10">
                        <label class="checked checkbox chk_Calc"
                               name="chk_130090"
                               supplierid="130090"
                               data-value="3404751"
                               data-design="1300905259010100001"
                               data-num="1">
                            <i class="openIcon inline"></i>
                        </label>
                    </td>
                    <td width="130" align="left">
						<span class="sop_img inline">
							<a target="_blank" href="http://www.biyao.com/products/1300905259010100001-0.html">
								<img width="100" height="100" src="http://bfs.biyao.com/group1/M00/33/B6/rBACYVrJdfyAKvBpAAGGfBXpyi4335_400x400.jpg" />
							</a>
						</span>
                    </td>
                    <td align="left">
                        <a target="_blank" href="http://www.biyao.com/products/1300905259010100001-0.html">
                            <span class="col_523">时尚露肩短袖针织连衣裙-开口笑</span>
                        </a>

                        <br />


                        <div class="col_999 mg_t5 w300 escp">
                            颜色:灰色<br/>尺寸:XS
                        </div>

                        <!-- 无模型商品和低模普通商品签字 -->


                        <!-- 普通高模商品签字 -->


                    </td>
                    <td width="10%" align="center" class="ff6600">¥269</td>
                    <td width="10%" align="center" class="sizeZero">
                        <i class="sign minus inline"></i>
                        <input name ="quantity" type="text" maxlength="3" name="input_3404751"
                               value="1" shopcarid="3404751"
                               discount="0.0" price="269.0"
                               num="1" packageprice="0.0"
                               modelid="0" supplierid="130090"
                               designid="1300905259010100001" sizename="颜色:灰色|尺寸:XS"
                               class="inpCom w40 inline t_c">
                        <i class="sign plus inline"></i>

                        <p class="col_b76 mg_t5"></p>
                    </td>
                    <td width="20%" align="center" class="col_666 none">

                        <span class="span_package_type">普通包装</span>

                        <span class="span_package_price pack_selects">(免费)</span>


                    </td>
                    <td width="10%" align="center"><strong class="ff6600">¥269</strong></td>
                    <td width="5%" align="center"><a href="javascript:;" class="link_09c a_delete" id="deleteLink" data="3404751"></a></td>
                </tr>


            </table>
        </div>

        <div class="firmbox pd_t10 pd_b10 bg_fff tj_box">
            <div class="lineH30  pd_l10 pd_r10 clearfix ">
                <div class="f_l">
                    <label class="checked inline checkbox" name="chkAll"><i
                            class="openIcon inline mg_r10"></i></label><span class="inline">全选</span> <a
                        href="javascript:;" class="inline mg_l10 mg_r10 col_link"
                        id="a_BatchDel">删除</a>
                </div>
                <div class="f_r col_666 f14">
                    商品总价：<span class="w80 inline col_f60 pd_r5 f14" id="totalPrice">¥269</span>
                </div>
                <span class="inline f_r mg_r30 col_666 f14">商品总数 <em class="col_f60  f14" id="totalNum">1</em> 件</span>
            </div>
            <div class="lineH30  pd_l10 pd_r10 none">
                <div class="f_r col_666 f14">

                    包装费：<span class="w80 inline col_f60 pd_r5" id="packagePrice">¥0</span>

                </div>
            </div>
        </div>
        <div class="tallyBox">
            <a href="${basePath}/"
               class="inline goonShopping ">继续购物</a>
            <a href="${basePath}/u/1/confirmOrder" class=" tallyBTnPos inline span_submit_calre js_btn">结算</a>
            <p class="t_r">
                合计：<span class="f20 ff6600 inline vTop priceDisplay jsjs">
				¥269</span><span class="inline f14 fb ff6600 vTop mg_l5"></span>
            </p>
        </div>
    </div>
</div>


<script type="text/javascript">
    window.MainSite = "http://www.biyao.com";
</script>
<script type="text/javascript" src="http://static.biyao.com/pc/common/js/common.js?v=biyao_92c377d"></script>
<script type="text/javascript"
        src="http://static.biyao.com/pc/common/js/ui/dialog.js?v=biyao_ba57fb5"></script>
<script type="text/javascript"
        src="http://static.biyao.com/pc/common/js/ui/select.js?v=biyao_1dcaa7c"></script>
<script type="text/javascript"
        src="http://static.biyao.com/pc/common/js/ui/autocomplete.js?v=biyao_bd4725d"></script>
<script type="text/javascript"
        src="http://static.biyao.com/pc/common/js/ui/jquery.pagination.js?v=biyao_1a0a135"></script>
<script type="text/javascript"
        src="http://static.biyao.com/pc/common/js/ui/pages.js?v=biyao_5fd7a00"></script>
<script type="text/javascript"
        src="http://static.biyao.com/pc/www/js/utility/qrcode.js?v=biyao_8c0b79c"></script>
<script type="text/javascript"
        src="http://static.biyao.com/pc/buy/js/shopcarDes.js?v=biyao_a75ba19"></script>
<script type="text/javascript"
        src="http://static.biyao.com/pc/www/js/product/lazyloadIM.js?v=biyao_c5ce53c"></script>

<script type="text/javascript" src="http://static.biyao.com/pc/common/js/lazyload.js?v=biyao_80d4f78"></script>

<script type="text/javascript" src="http://static.biyao.com/pc/buy/js/materiallistDes.js?v=biyao_21283ab"></script>

<script type="text/template" id="materialsOfProductTemplate">
    <div class="pop_bd pd_t15 clearfix">
        <ul class="sizeZero ml_list">
        </ul>
    </div>
</script>


<!-- 底部栏 -->
<!-- 底部栏 -->
<%@ include file="../common/footer.jsp" %>

<script type="text/javascript" src="http://static.biyao.com/pc/www/js/common.js?v=biyao_7e1dcfa"></script>
<script type="text/javascript" src="http://static.biyao.com/pc/common/js/bytrack.js?v=biyao_c1a6d92"></script>
</body>
</html>