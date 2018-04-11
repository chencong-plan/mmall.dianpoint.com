<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../common/tag.jsp" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta property="wb:webmaster" content="8eabb156d1a9cb46">
    <meta name="renderer" content="webkit"/>
    <meta http-equiv="X-UA-Compatible" content="IE=Edge"/>
    <title>必要平台-订单确认 – 必要-买大牌制造商产品，上必要</title>
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
                <a href="${basePath}/u/1/order" target="_blank">购物车<i id="shopCar">0</i></a>
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
            <div class="car_step_icon car_step2"></div>
            <ul class="clearfix car_step_txt">
                <li>查看购物车</li>
                <li class="checked">确认订单信息</li>
                <li>在线付款</li>
                <li>收货并评价</li>
            </ul>
        </div>
    </div>
</div>

<div class="pd_b40">
    <div class="wrap  ie78">
        <div class="mg_t20">
            <h4 class="nTitle">确认收货地址</h4>
            <ul id="d_address" class="comment_box detailed_address_list clearfix">
            </ul>
        </div>
        <div class="mg_t40 none" id="couponListView">
            <h4 class="nTitle">支付方式</h4>
            <p class="f14 col_666 mg_t15 pd_l15">在线支付</p>
            <p class="f14 col_724 mg_t10 mg_b10 pd_l15"><i class="couponList_add inline cursor" viewState="0"></i>使用红包（<span class="col_666" id="conponinit"></span>）</p>
            <div class="coupon_show none">
                <ul class="coupon_tit_show clearfix pd_b5" id="couponTitShow">
                    <li class="current first">可用红包（<span id="ky_coupon"></span>）</li>
                    <li class="">不可用红包（<span id="bky_coupon"></span>）</li>
                </ul>
                <div class="coupon_show_box" id="couponShowBox">
                    <div class="coupon_item" id="couponListUsed"></div>
                    <div class="coupon_item" id="unCouponListUsed"></div>
                </div>
            </div>
        </div>
        <div class="shoppingBox mg_t40 mg_b20">
            <h4 class="nTitle">发票信息</h4>
            <div class="pd20">
                <p>
                    <label id="ck_is_i" class="inline col_666 cursor">
                        <i class="mg_r5 openIcon inline"></i>
                        <span class="inline col_666 f14">开具发票</span>
                    </label>
                </p>
                <div id="d_need_invoice" class="receipt_box mg_t10 none">
                    <table cellspacing="0" cellpadding="0" border="0">
                        <tbody>
                        <tr id="invoiceOption">
                            <td class="col_333 f14 h40 t_r pd_r15 w100" _pap="0" _inv="1">发票类型：</td>
                            <td>


                                <label id="invoiceElectronic" class="f14 cursor col_333 inline"><i class="radioIcon invoice invoiceElectronic inline mg_r10"></i>电子</label>
                                <span class="col_f7b mg_l20 inline none">电子发票与纸质发票具备同等法律效力，可支持报销入账</span>

                            </td>
                        </tr>
                        <tr id="invoiceType">
                            <td class="col_333 f14 h40 t_r pd_r15 w100">发票抬头：</td>
                            <td>
                                <label id="invoicePerson" class="f14 cursor col_333 mg_r40 inline checked"><i class="radioIcon inline mg_r10"></i>个人</label>
                                <label id="invoiceCompaney" class="f14 cursor col_333 inline"><i class="radioIcon inline mg_r10"></i>公司</label>
                            </td>
                        </tr>
                        <tr>
                            <td class="col_333 f14 h40 t_r pd_r15 w100">发票内容：</td>
                            <td>
                                <span class="inline grays f14">商品明细</span>
                                <span class="col_f7b mg_l20 inline">发票内容暂不支持修改</span>
                            </td>
                        </tr>
                        <tr id="invoiceEmail" class="none">
                            <td class="col_333 f14 h40 t_r pd_r15 w100">电子邮箱：</td>
                            <td class="col_333 f14">
                                <input placeHolder="请输入邮箱，用于接收电子发票"  type="text" maxlength="200" class="inpCom w400 col_f333" value=""/>
                                <span class="col_f7b inline"></span>
                            </td>
                        </tr>
                        <tr id="invoicePhone" class="none">
                            <td class="col_333 f14 h40 t_r pd_r15 w100">手机号：</td>
                            <td class="col_333 f14">
                                <input placeHolder="请输入手机号"  type="text" maxlength="11" class="inpCom w400 col_f333" value=""/>
                                <span class="col_f7b inline"></span>
                            </td>
                        </tr>
                        <tr id="invoiceTitle" class="none">
                            <td class="col_333 f14 h40 t_r pd_r15 w100">单位名称：</td>
                            <td class="col_333 f14">
                                <input placeHolder="请输入单位名称" type="text" maxlength="50" class="inpCom w400 col_f333" value=""/>
                                <span class="col_f7b inline"></span>
                            </td>
                        </tr>
                        <tr id="invoiceTaxpayer" class="none">
                            <td class="col_333 f14 h50 t_r pd_r15 w100">纳税人识别号：</td>
                            <td class="col_333 f14">
                                <input placeHolder="请输入统一社会信用代码"  type="text" maxlength="30" class="inpCom w400 col_f333" value=""/>
                                <span class="col_f7b inline">应国家税务总局要求，自2017年7月1日起，开具公司抬头的增值税普通发票，需提供纳税人识别号或统一社会信用代码</span>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div class="mg_t20">
            <h4 class="nTitle">确认订单</h4>
            <input type="hidden" id="fromId" value="shopcar" /> <input
                type="hidden" id="design_ids" value="[1300905259010100001, 1300835166010100001]" /> <input
                type="hidden" id="product_book_ids" value="[3404751, 3404889]" />

            <div class="clearfix mb_20">
                <div class="comment_box  ">
                    <table cellspacing="0" cellpadding="0" class="sop_table1">
                        <tbody>
                        <tr>
                            <th align="left" colspan="2">
                                <a>
                                    <span class="inline">商家：</span>
                                    <span id="J_product_name " class="inline col_666">
									 		chunfeng-见地服饰
									 	</span>
                                </a>
                            </th>
                            <th width="10%" align="center" class="none">可获积分</th>
                            <th width="12%" align="center" class="col_999">单价</th>
                            <th width="12%" align="center" class="col_999">数量</th>
                            <th width="12%" align="center" class="col_999 none">包装</th>
                            <th width="12%" align="right" class="col_999"><span class="mg_r20">小计</span></th>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class='suppliergroup' data-s='130090'>
                <div class="bg_fff">
                    <table cellspacing="0" cellpadding="0" class="sop_table1 tablecount">
                        <tbody>

                        <tr>
                            <td width="23%" align="center"><a target="_blank"
                                                              href="http://www.biyao.com/products/1300905259010100001-0.html">
                                <img class="border" width="100" height="100" alt=""
                                     src="http://bfs.biyao.com/group1/M00/33/B6/rBACYVrJdfyAKvBpAAGGfBXpyi4335_400x400.jpg" />
                            </a></td>
                            <td width="41%" align="left">
                                <div>
                                    <a target="_blank"
                                       href="http://www.biyao.com/products/1300905259010100001-0.html">
                                        <span class="col_333">时尚露肩短袖针织连衣裙-开口笑</span>
                                    </a>

                                </div>
                                <input type="hidden" class="sizeno" value=颜色:灰色   尺寸:XS>


                                <div class="col_999 mg_t5 w300 escp">
                                    颜色:灰色<br/>尺寸:XS
                                </div>
                                <!-- 无模型商品和低模普通商品签字 -->

                                <!-- 普通高模商品签字 -->





                                <div class="refund_tips"></div>


                            </td>
                            <td width="10%" align="center" class="none"><span
                                    class="col_333">0积分</span></td>
                            <td width="12%" align="center" class="col_333"><span
                                    class="col_666">¥269</span></td>
                            <td width="12%" align="center"
                                class="col_333 td_buy_num relative"
                                data-weight='0.0'
                                data-id='3404751'
                                data-pt='0' data-pd='0'
                                data-pc='0'
                                designid="1300905259010100001"><span
                                    class="col_333">1</span></td>
                            <td width="12%" align="center" class="col_333 none"><span
                                    class="col_333">普通包装</span>  <span class="col_333">(免费)</span> </td>
                            <td width="12%" align="right"><strong
                                    class="  mg_r20">¥269</strong></td>
                        </tr>

                        </tbody>
                    </table>
                    <input type="hidden" send_type_value="0"
                           id="supplier_IDForDiscountCode" value="1"
                           name="order_design_num" expresstype_id="0"
                           supplier_id="130090" />
                    <div class="backg_f6 clearfix pd_b10">
                        <div class="merchantMsgBox">
                            <table width="500" cellspacing="0" cellpadding="0" border="0"
                                   class=" f_l">
                                <tbody>
                                <tr>
                                    <td class="vTop col_666 pd_r10">给商家留言</td>
                                    <td><textarea name="express_c"
                                                  supplier_id="130090"
                                                  data-highlight="highlight" maxlength="50"
                                                  placeholder="建议填写内容已提前与商家沟通一致"
                                                  class="J_placeholder textareaCom w390 h73 bdDB"></textarea>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                            <table width="500" cellspacing="0" cellpadding="0" border="0"
                                   class=" f_r">
                                <tbody>
                                <tr>
                                    <td class="col_666 pd_r10 w50">配送方式</td>
                                    <td class="w220 t_l lineH40">
                                        <div class="posR1" supplier_id="130090" name="select_express_type_div">
                                            <span class="inline col_999 f12"></span>
                                        </div>
                                    </td>
                                    <td align="right" class="none">
											 <span class="col_f60 mg_r20"
                                                   name="order_express_price"
                                                   supplier_id="130090">¥0</span>
                                        <span class="col_ee5b47"></span> <span class="col_ee5b47"
                                                                               name="order_express_price_add"
                                                                               supplier_id="130090"></span>

                                    </td>
                                </tr>
                                <tr>
                                    <td class="col_666 pd_r10 w50">送货时间</td>
                                    <td class="w220 t_l">
                                        <div
                                                supplier_id="130090"
                                                class="w220 posR inline" name="select_send_type_div">
                                        </div>
                                    </td>
                                    <td></td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="paybill_title f14">
                    <div class="paybilltitleIn">
                        <input type="hidden" value="269.0"
                               name="order_design_price"
                               supplier_id="130090" />
                        店铺合计：<span class="col_f60 f14 mg_r20"><span
                            name="order_price"
                            supplier_id="130090">¥269</span></span>
                    </div>
                </div>
            </div>

            <div class="clearfix mb_20">
                <div class="comment_box  ">
                    <table cellspacing="0" cellpadding="0" class="sop_table1">
                        <tbody>
                        <tr>
                            <th align="left" colspan="2">
                                <a>
                                    <span class="inline">商家：</span>
                                    <span id="J_product_name " class="inline col_666">
									 		亓口男装
									 	</span>
                                </a>
                            </th>
                            <th width="10%" align="center" class="none">可获积分</th>
                            <th width="12%" align="center" class="col_999">单价</th>
                            <th width="12%" align="center" class="col_999">数量</th>
                            <th width="12%" align="center" class="col_999 none">包装</th>
                            <th width="12%" align="right" class="col_999"><span class="mg_r20">小计</span></th>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class='suppliergroup' data-s='130083'>
                <div class="bg_fff">
                    <table cellspacing="0" cellpadding="0" class="sop_table1 tablecount">
                        <tbody>

                        <tr>
                            <td width="23%" align="center"><a target="_blank"
                                                              href="http://www.biyao.com/products/1300835166010100001-0.html">
                                <img class="border" width="100" height="100" alt=""
                                     src="http://bfs.biyao.com/group1/M00/2F/15/rBACYVqZFV6AalkoAAF9g8ddtxw717_400x400.jpg" />
                            </a></td>
                            <td width="41%" align="left">
                                <div>
                                    <a target="_blank"
                                       href="http://www.biyao.com/products/1300835166010100001-0.html">
                                        <span class="col_333">亓口休闲胸袋亚麻短袖衬衫 6057</span>
                                    </a>

                                </div>
                                <input type="hidden" class="sizeno" value=颜色:6057/黑色   尺寸:38/S>


                                <div class="col_999 mg_t5 w300 escp">
                                    颜色:6057/黑色<br/>尺寸:38/S
                                </div>
                                <!-- 无模型商品和低模普通商品签字 -->

                                <!-- 普通高模商品签字 -->





                                <div class="refund_tips"></div>


                            </td>
                            <td width="10%" align="center" class="none"><span
                                    class="col_333">0积分</span></td>
                            <td width="12%" align="center" class="col_333"><span
                                    class="col_666">¥189</span></td>
                            <td width="12%" align="center"
                                class="col_333 td_buy_num relative"
                                data-weight='0.0'
                                data-id='3404889'
                                data-pt='0' data-pd='0'
                                data-pc='0'
                                designid="1300835166010100001"><span
                                    class="col_333">1</span></td>
                            <td width="12%" align="center" class="col_333 none"><span
                                    class="col_333">普通包装</span>  <span class="col_333">(免费)</span> </td>
                            <td width="12%" align="right"><strong
                                    class="  mg_r20">¥189</strong></td>
                        </tr>

                        </tbody>
                    </table>
                    <input type="hidden" send_type_value="0"
                           id="supplier_IDForDiscountCode" value="1"
                           name="order_design_num" expresstype_id="0"
                           supplier_id="130083" />
                    <div class="backg_f6 clearfix pd_b10">
                        <div class="merchantMsgBox">
                            <table width="500" cellspacing="0" cellpadding="0" border="0"
                                   class=" f_l">
                                <tbody>
                                <tr>
                                    <td class="vTop col_666 pd_r10">给商家留言</td>
                                    <td><textarea name="express_c"
                                                  supplier_id="130083"
                                                  data-highlight="highlight" maxlength="50"
                                                  placeholder="建议填写内容已提前与商家沟通一致"
                                                  class="J_placeholder textareaCom w390 h73 bdDB"></textarea>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                            <table width="500" cellspacing="0" cellpadding="0" border="0"
                                   class=" f_r">
                                <tbody>
                                <tr>
                                    <td class="col_666 pd_r10 w50">配送方式</td>
                                    <td class="w220 t_l lineH40">
                                        <div class="posR1" supplier_id="130083" name="select_express_type_div">
                                            <span class="inline col_999 f12"></span>
                                        </div>
                                    </td>
                                    <td align="right" class="none">
											 <span class="col_f60 mg_r20"
                                                   name="order_express_price"
                                                   supplier_id="130083">¥0</span>
                                        <span class="col_ee5b47"></span> <span class="col_ee5b47"
                                                                               name="order_express_price_add"
                                                                               supplier_id="130083"></span>

                                    </td>
                                </tr>
                                <tr>
                                    <td class="col_666 pd_r10 w50">送货时间</td>
                                    <td class="w220 t_l">
                                        <div
                                                supplier_id="130083"
                                                class="w220 posR inline" name="select_send_type_div">
                                        </div>
                                    </td>
                                    <td></td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="paybill_title f14">
                    <div class="paybilltitleIn">
                        <input type="hidden" value="189.0"
                               name="order_design_price"
                               supplier_id="130083" />
                        店铺合计：<span class="col_f60 f14 mg_r20"><span
                            name="order_price"
                            supplier_id="130083">¥189</span></span>
                    </div>
                </div>
            </div>

        </div>
        <input type="hidden" id="shop_car_id"
               value="3404751|1,3404889|1" />
        <input type="hidden" id="hid_designids"
               value="1300905259010100001,1300835166010100001" />
        <input type="hidden" id="hid_designnum"
               value="1,1" />
        <div class="shoppingBox mg_t20 border none">
            <div class="order_title col_333 f15">虚拟账户</div>
            <div class="pd20">
                <p>
                    <label class="inline"><i
                            onclick="i_lose_point_click(this);" id="ck_is_p"
                            class="openIcon inline cursor"></i>&nbsp;&nbsp;使用积分</label>
                </p>
                <p id="point_true" class="mg_t15 l_h40 none"></p>
                <div id="is_use_point" class="receipt_box mg_t10 none">
                    <table cellspacing="0" cellpadding="0" border="0">
                        <tbody>
                        <tr>
                            <td width="120" height="40" align="right">现有积分：</td>
                            <td width="400"><span>0点</span>&nbsp;&nbsp;&nbsp;<span
                                    id="just_this_point">【本次交易最多可用 0 点】
								</span></td>
                        </tr>
                        <tr>
                            <td height="40" align="right">使用积分：</td>
                            <td><input type="text" onafterpaste="lose_point(this);"
                                       value="" onkeyup="lose_point(this);" maxlength="10"
                                       class="inpCom w120" id="lose_point_text" />&nbsp;点</td>
                        </tr>
                        <tr>
                            <td height="40" align="right">虚拟账户密码：</td>
                            <td><input type="password" class="inpCom w220" value=""
                                       maxlength="36" id="virtuapwd" /> <a target="_blank"
                                                                           href="http://www.biyao.com/MyCenter/ProfileRe"
                                                                           class="col_07a6df">忘记密码？</a></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td valign="bottom" height="40px"><a onclick="sub_point()"
                                                                 href="javascript:void(0)"
                                                                 class="publicBtn publicBtn_h31 publicBtn_f60 inline">确定使用</a></td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <div class="none">
                    <a data-usepoint="0" id="point_message"></a>
                </div>
            </div>
        </div>
        <div class="bg_fff border mg_t30  relative">
            <div class="experience_entrance none">
                <div id="experienceBtn" class="experience_btn">
                    <span class="inline f16 col_724">使用体验码</span> <span
                        class="inline tyq_bg tb3"></span>
                </div>
                <div class="experience_con mg_t20 none" id="experienceInputOut">
                    <label class="sizeZero"> <input id="experienceInput"
                                                    type="text" class="exper_input inline col_666 mg_r10"
                                                    placeholder="请输入体验码编号" /> <input id="experienceUseBtn"
                                                                                     type="submit" class="inline experience_use_btn" value="使用" /> <input
                            id="experienceCancelBtn" type="submit"
                            class="inline experience_use_btn none" value="取消" />
                    </label>
                    <p id="experienceCheckTips" class="experience_error_msg col_b76"></p>
                    <input type="hidden" id="experienceCodeHidden" value="" />
                </div>
            </div>
            <div class="firmbox mg_t20">
                <div class="lineH40  pd_l10 pd_r20 clearfix  none">
                    <div class="f_r col_666 none">
                        可获积分：<span class="w80 inline fb t_r col_f60 pd_r5">0</span>
                    </div>
                </div>
                <div class="lineH30  pd_l10 pd_r20 clearfix ">
                    <div class="f_r col_666 f14">
                        商品总价：<span class="w80 inline t_r col_f60 pd_r5 f14"
                                   id="total_order_design_price">¥458</span>
                    </div>
                    <span class="inline f_r mg_r30  col_666">商品总数 <em
                            id="productNum" class="col_f60 fb f14">2</em> 件
					</span>
                </div>
                <div class="lineH30  pd_l10 pd_r20 none">
                    <div class="f_r col_666 f14">
                        运费：<span class="w80 inline t_r col_f60 pd_r5 f14"
                                 id="total_order_express_price"></span>
                    </div>
                </div>
                <div class="lineH30  pd_l10 pd_r20 none">
                    <div class="f_r col_666 f14">
                        优惠：<span class="w80 inline t_r col_f60 pd_r5 f14" id="couponPrice"></span>
                    </div>
                </div>
                <div class="lineH30  pd_l10 pd_r20 clearfix ">
                    <div id="discount_price" class="f_r col_666 f14 "></div>
                </div>
                <div class="clearfix">
                    <ul class="firm_ul f_r mg10">
                        <li class="col_666 none">虚拟账户：<span align="center"
                                                            class="col_ee5b47 inline w10 f14">-</span> <span
                                class="col_f60 w70 inline fb escp" id="lose_point_price_id">¥0</span></li>
                        <li class="f14 col_666">实际支付金额：<strong class="col_f60 ">
                            <em class="f18 fb inline w80" id="total_order_price"></em>
                        </strong></li>
                        <input type="hidden" value="458.0"
                               id="total_order_design_price_h" />
                        <input type="hidden" value="0" id="h_my_point" />
                    </ul>
                </div>
                <div style="display: none;" id="confirmorder_recv_info"
                     class="clearfix t_r ">
                    <span id="area" class="f14  col_666 mg_r5"></span><br> <span
                        id="address" class="f14  col_666 mg_r5"></span><br> <span
                        id="name" class="f14  col_666 mg_r5"></span><br> <span
                        id="phoneNum" class="f14 col_666 mg_r5"></span>
                </div>
            </div>
            <div class="pd_t10 t_r pd_r20 mg_b20">
                <a href="${basePath}/u/1/cart"
                   class=" col_999 back_pay_btn inline f16 mg_r20">返回购物车</a> <a
                    id="submitorder" href="${basePath}/u/1/order/pay"
                    class="inline f16 order_qr_btn t_c ">提交订单</a>
            </div>
        </div>
    </div>
</div>
</div>

<script type="text/template" id="pop_address">
    <form id="form_address">
        <input type="hidden" id="i_address_id" value="0"/>
        <table class="per_table" width="100%" cellspacing="10">
            <tr>
                <td width="20%" align="right">
                    <span class="col_ee5b47"></span>收货人姓名：&nbsp;
                </td>
                <td width="80%">
                    <input id="i_receiver" type="text" value="" name="i_n_receiver" maxlength="12" class="inpCom w200 permy" onkeypress="return ValidateSpecialCharacter()"/>
                    <span id="receiver_msg"></span>
                </td>
            </tr>
            <tr>
                <td align="right">
                    <span class="col_ee5b47"></span>省市：&nbsp;
                </td>
                <td>
                    <div id="provice_seletor" class="w120 mg_r10 posR f_l permy"></div>
                    <div id="city_seletor" class="w120 mg_r10 posR f_l permy"></div>
                    <div id="area_seletor" class="w120 mg_r10 posR f_l permy"></div>
                    <input type="hidden" id="i_ADDR_ID" name="i_n_ADDR_ID" />
                    <span id="area_msg"></span>
                </td>
            </tr>
            <tr>
                <td align="right">
                    <span class="col_ee5b47"></span>街道地址：&nbsp;
                </td>
                <td>
                    <input id="i_address" type="text" value="" name="i_n_address" maxlength="31" class="inpCom w200 permy" onkeypress="return ValidateSpecialCharacter()" onkeyup="checkAddressLength();"/>
                    <span id="address_msg"></span>
                </td>
            </tr>
            <tr>
                <td align="right">
                    <span class="col_ee5b47"></span>手机号码：&nbsp;
                </td>
                <td>
                    <input id="i_phone" type="text" value="" name="i_n_phone" maxlength="11" class="inpCom w200 permy"/>
                    <span id="phone_msg"></span>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td class="isdefault">
                    <div class="openIcon inline cursor checkedc"></div>
                    <input type="checkbox" id="i_default_address" />
                    <label id="default_address_html" class="col_000">
                        设为默认地址</label>
                </td>
            </tr>
        </table>
    </form>
</script>


<script src="http://static.biyao.com/pc/common/js/ui/jquery.validate.js?v=biyao_3051366"></script>
<script src="http://static.biyao.com/pc/common/js/jquery.tabso.js?v=biyao_e358f64"
        type="text/javascript"></script>
<script type="text/javascript"
        src="http://static.biyao.com/pc/buy/js/ConfirmOrderDes.js?v=biyao_4088f58"></script>
<script type="text/javascript"
        src="http://static.biyao.com/pc/common/js/lazyload.js?v=biyao_80d4f78"></script>
<script type="text/javascript"
        src="http://static.biyao.com/pc/www/js/product/lazyloadIM.js?v=biyao_c5ce53c"></script>
<script type="text/javascript" src="http://static.biyao.com/pc/buy/js/materiallistDes.js?v=biyao_21283ab"></script>
<script type="text/javascript"
        src="http://static.biyao.com/pc/minisite/byshoes/js/jquery.cookie.js?v=biyao_a5283b2"></script>
<script type="text/template" id="materialsOfProductTemplate">
    <div class="pop_bd pd_t15 clearfix">
        <ul class="sizeZero ml_list">
        </ul>
    </div>
</script>


<!-- 底部栏 -->
<%@ include file="../common/footer.jsp"%>

<script type="text/javascript" src="http://static.biyao.com/pc/www/js/common.js?v=biyao_7e1dcfa"></script>
<script type="text/javascript" src="http://static.biyao.com/pc/common/js/bytrack.js?v=biyao_c1a6d92"></script>
</body>
</html>