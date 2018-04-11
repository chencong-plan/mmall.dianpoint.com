<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../common/tag.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="renderer" content="webkit"/>
    <meta http-equiv="X-UA-Compatible" content="IE=Edge"/>
    <title>个人中心-我的订单 – 买大牌制造商产品，上必要 – 必要biyao.com</title>
    <script type="text/javascript" src="http://static.biyao.com/pc/common/js/jquery-1.8.3.js?v=biyao_7d074dc"></script>
    <script type="text/javascript" src="http://static1.biyao.com/pc/common/js/md5.js?v=biyao_c8cab85"></script>
    <script type="text/javascript"
            src="http://static2.biyao.com/pc/common/js/master/masterCommon.js?v=biyao_e978582"></script>
    <script type="text/javascript"
            src="http://static3.biyao.com/pc/minisite/byshoes/js/jquery.cookie.js?v=biyao_a5283b2"></script>
    <script type="text/javascript"
            src="http://static4.biyao.com/pc/common/js/jquery.extention.js?v=biyao_98daa33"></script>
    <script type="text/javascript" src="http://static.biyao.com/pc/common/js/ui/dialog.js?v=biyao_a507914"></script>
    <link href="http://static.biyao.com/pc/favicon.ico" rel="shortcut icon"
          type="image/x-icon"/>


    <%--<link href="${basePath}/resources/css/common/common.css" rel="stylesheet" type="text/css"/>--%>
    <%--<link href="${basePath}/resources/css/common/new.main.css" rel="stylesheet" type="text/css"/>--%>
    <%--<link type="text/css" href="http://static2.biyao.com/pc/www/css/cm_www.css?v=biyao_2fbd950" rel="stylesheet"/>--%>
    <%--<link href="${basePath}/resources/css/myCenter.css"/>--%>

    <link type="text/css" href="http://static1.biyao.com/pc/common/css/common.css?v=biyao_a0e66f3" rel="stylesheet"/>
    <link type="text/css" href="http://static2.biyao.com/pc/www/css/cm_www.css?v=biyao_2fbd950" rel="stylesheet"/>
    <link type="text/css" href="http://static3.biyao.com/pc/common/css/new.main.css?v=biyao_e279cc3" rel="stylesheet"/>
    <link type="text/css" href="http://static4.biyao.com/pc/www/css/myCenter.css?v=biyao_ace6b3b"
          rel="stylesheet"/>

</head>
<body>


<div class="header">
    <%@ include file="../common/header.jsp" %>
</div>


<!-- 导航栏 -->
<div class="nav">
    <div class="clearfix">
        <a href="http://www.biyao.com/home/index.html" class="nav-logo"></a>
        <div class="nav-category">
            <p><span>全部分类</span><i></i></p>
            <div>
                <%@ include file="../common/nav-list.jsp" %>
            </div>
        </div>
        <div class="nav-search">
            <p><input type="text" id="searchInput"/><span id="searchBtn"></span></p>
            <ul></ul>
        </div>
    </div>
</div>


<!-- 右边栏 -->
<%@ include file="../common/rightAndShare.jsp" %>

<div class="wrap  posR mg_t20 mH810 pd_b40">
    <div class="per_left">
        <div class="per_leftbox  pd_t14">
            <ul class="per_leftul">
                <li class="t_c">
                    <a href="/MyCenter/Profile.html">
                        <img src="http://static4.biyao.com/pc/www/img/avatar/head_150.png" alt=""
                             onerror="javascript:this.src='http://static.biyao.com/pc/www/img/avatar/head_150.png'"
                             style="width: 150px; height: 150px"/>
                    </a>
                </li>
                <li class="f14 col_fff mg_t10 t_c">by_b2bYGy55</li>
            </ul>
        </div>
        <div class="per_leftbox">
            <div class="perleft_menu pdtb_20">
                <ul>
                    <li class="a_check "><a href="${basePath}/u/1/order"><i class="f_r mcMIcon3 inline"></i>我的订单</a>
                    </li>
                    <li class=" "><a href="${basePath}/u/1"><i class="f_r mcMIcon8 inline"></i>个人设置</a></li>
                </ul>
            </div>
        </div>
    </div>


    <script type="text/javascript">
        var pageIndex = 1;
        var pageCount = 1;
    </script>
    <div class="per_right_out backg_fff mg_b20 ">
        <div class="per_right ">
            <div>
                <div class="relative">
                    <h4 class="nTitle">我的订单<span class="mg_l20 col_f7b f16">（注：拼团订单请下载APP查看）</span></h4>
                </div>

                <table cellspacing="0" cellpadding="0" class="w100w t_c  perTabTitn ">
                    <tbody>
                    <tr>
                        <td width="32%"><span class="inline">商品</span></td>
                        <td width="14%"><span class="inline">售后</span></td>
                        <td width="18%"><span class="inline">合计</span></td>
                        <td width="18%"><span class="inline">状态</span></td>
                        <td width="18%"><span class="inline">操作</span></td>
                    </tr>
                    </tbody>
                </table>
                <div class="J_table_wrap">

                    <div class="order_title clearfix  ">
					 <span class="f_l col_666">
					 <span class="col_b2b2b2">2018-03-26 &nbsp;&nbsp;</span>
					 <label> 订单编号：122012208509461113



					</label>
					</span><span class="f_r">&nbsp;&nbsp;
					<script>
						var suppliedIdForIm = 'supplier_' + "130083";
					</script>
					<a>
						<span class="inline">商家：</span>
						<span id="J_product_name " class="inline col_666">亓口男装</span>
					</a>
					</span>
                    </div>
                    <div class="mg_b20">
                        <table cellspacing="0" cellpadding="0" class="sop_table4 border ">
                            <tbody>
                            <tr data-unfacceptance="0"
                                data-supplierid="130083"
                                data-orderid="122012208509461113">
                                <%--商品详情--%>
                                <td width="46%" class="bd_r J_popup_parent">

                                    <table width="100%" height="100px" cellspacing="0" cellpadding="0">
                                        <tbody>
                                        <tr>
                                            <td name="detail_td">
                                                <a class="perCmImg inline mg_l10" target="_blank"
                                                   href="/products/1300835094010100001-0.html#editor">
                                                    <img alt=""
                                                         src="http://bfs.biyao.com/group1/M00/1E/11/rBACW1ncPpWAQcIVAAGMPGd3exg060_400x400.jpg">
                                                </a>
                                                <div class="inline mg_l10 vTop mg_t5 lineH20 w190">

                                                    <a class="col_666"
                                                       href="/products/1300835094010100001-0.html#editor"
                                                       target="_blank">
                                                        <span class="col_666">亓口羊毛珍贝扣纯色精致长袖衬衫6102</span>
                                                    </a><br>


                                                    <div class="col_999 mg_t5 w190 escp">
                                                        颜色:6102/孔雀蓝<br/>尺寸:38/S
                                                    </div>
                                                    <!-- 无模型商品和低模普通商品签字 -->

                                                    <!-- 普通高模商品签字 -->


                                                    <div class="refund_tips"></div>

                                                </div>
                                            </td>
                                            <td width="30%" class="bd_l t_c vTop pd_t15 lineH20">


                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>

                                </td>
                                <%--价格--%>
                                <td width="18%" align="center" class="bd_l vTop pd_t15 lineH20"><strong
                                        class="col_f60 f14">￥339</strong>

                                    <br><span>（运费：￥0）</span>

                                </td>

                                <%--交易关闭，订单详情--%>
                                <td width="18%" align="center" class="bd_l vTop pd_t15 lineH20">
                                    <span class="col_f60">交易关闭 </span>
                                    <br>
                                    <a href="/MyCenters/MyOrderDetail?orderId=122012208509461113"
                                       class="col_link ">订单详情</a>
                                    <br/>


                                </td>
                                <td width="18%" align="center" class="bd_l vTop  pd_l20 pd_r20 pd_t5">
                                    <a href="http://buy.biyao.com/order/onlineCharge?order_id_list=MTIyMDEyMzQzODA1ODI3OTg1" class="publicBtn publicBtn_h25 publicBtn_f60 inline mg_t10">立即付款</a><br>
                                    <a href="javascript:void(0)" class="cancelOrder  mg_t10 inline relative" orderid="122012343805827985">取消订单</a>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>

                    <div class="order_title clearfix  ">
					 <span class="f_l col_666">
					 <span class="col_b2b2b2">2018-03-26 &nbsp;&nbsp;</span>
					 <label> 订单编号：122012208509461124



					</label>
					</span><span class="f_r">&nbsp;&nbsp;
					<script>
						var suppliedIdForIm = 'supplier_' + "130106";
					</script>
					<a>
						<span class="inline">商家：</span>
						<span id="J_product_name " class="inline col_666">EMP服饰</span>
					</a>
					</span>
                    </div>
                    <div class="mg_b20">
                        <table cellspacing="0" cellpadding="0" class="sop_table4 border ">
                            <tbody>
                            <tr data-unfacceptance="0"
                                data-supplierid="130106"
                                data-orderid="122012208509461124">
                                <td width="46%" class="bd_r J_popup_parent">

                                    <table width="100%" height="100px" cellspacing="0" cellpadding="0">
                                        <tbody>
                                        <tr>
                                            <td name="detail_td">
                                                <a class="perCmImg inline mg_l10" target="_blank"
                                                   href="/products/1301065273010100001-0.html#editor">
                                                    <img alt=""
                                                         src="http://bfs.biyao.com/group1/M00/30/17/rBACVFq1CuCAUBP4AABRM8XqSm8732_400x400.jpg">
                                                </a>
                                                <div class="inline mg_l10 vTop mg_t5 lineH20 w190">

                                                    <a class="col_666"
                                                       href="/products/1301065273010100001-0.html#editor"
                                                       target="_blank">
                                                        <span class="col_666">纯棉免烫净色提花长衬衫JCS7196</span>
                                                    </a><br>


                                                    <div class="col_999 mg_t5 w190 escp">
                                                        颜色:白色<br/>尺寸:38
                                                    </div>
                                                    <!-- 无模型商品和低模普通商品签字 -->

                                                    <!-- 普通高模商品签字 -->


                                                    <div class="refund_tips"></div>

                                                </div>
                                            </td>
                                            <td width="30%" class="bd_l t_c vTop pd_t15 lineH20">


                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>

                                </td>

                                <td width="18%" align="center" class="bd_l vTop pd_t15 lineH20"><strong
                                        class="col_f60 f14">￥239</strong>

                                    <br><span>（运费：￥0）</span>

                                </td>
                                <td width="18%" align="center" class="bd_l vTop pd_t15 lineH20">
                                    <span class="col_f60">交易关闭 </span>
                                    <br>
                                    <a href="/MyCenters/MyOrderDetail?orderId=122012208509461124"
                                       class="col_link ">订单详情</a>
                                    <br/>


                                </td>
                                <td width="18%" align="center"
                                    class="bd_l vTop  pd_l20 pd_r20 pd_t5">

                                    <br/>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>

                </div>

                <div class="DZPager mg_b20"></div>
            </div>
            <input type="hidden" id="storedesc" title=""/>
        </div>
    </div>
</div>


<!-- 底部栏 -->
<%@ include file="../common/footer.jsp" %>

<script type="text/javascript" src="http://static1.biyao.com/pc/common/js/lazyload.js?v=biyao_80d4f78"></script>
<script type="text/javascript" src="http://static2.biyao.com/pc/common/js/common.js?v=biyao_85d404c"></script>
<script type="text/javascript" src="http://static3.biyao.com/pc/common/js/ui/select.js?v=biyao_a2fbe20"></script>
<script type="text/javascript" src="http://static4.biyao.com/pc/common/js/ui/autocomplete.js?v=biyao_bd4725d"></script>
<script type="text/javascript"
        src="http://static.biyao.com/pc/common/js/ui/jquery.pagination.js?v=biyao_1a0a135"></script>
<script type="text/javascript" src="http://static1.biyao.com/pc/common/js/ui/pages.js?v=biyao_5fd7a00"></script>
<script type="text/javascript"
        src="http://static2.biyao.com/pc/common/js/ui/jquery.validate.js?v=biyao_6ec02c8"></script>
<script type="text/javascript" src="http://static3.biyao.com/pc/www/js/mycenter/mycenter.js?v=biyao_c900f6a"></script>
<script type="text/javascript" src="http://static4.biyao.com/pc/www/js/common.js?v=biyao_7e1dcfa"></script>


<script src="http://static1.biyao.com/pc/www/js/mycenter/myorderdetail-list.js?v=biyao_eb1ba46"
        type="text/javascript"></script>
<script src="http://static2.biyao.com/pc/www/js/mycenter/myOrderIndex.js?v=biyao_c7f6dca"
        type="text/javascript"></script>
<script src="http://static3.biyao.com/pc/common/js/ui/validate.js?v=biyao_8c8263d"
        type="text/javascript"></script>
<script src="http://static4.biyao.com/pc/www/js/mycenter/cancelOrderDes.js?v=biyao_5fa2325"
        type="text/javascript"></script>
<script src="http://static.biyao.com/pc/www/js/mycenter/myOrder_refund4Des.js?v=biyao_bbfb5e9"
        type="text/javascript"></script>
<script src="http://static1.biyao.com/pc/www/js/mycenter/common.js?v=biyao_f734b16"
        type="text/javascript"></script>
<script src="http://static2.biyao.com/pc/common/js/ui/dialog.js?v=biyao_a507914"
        type="text/javascript"></script>
<script src="http://static3.biyao.com/pc/common/js/ui/loadmask.js?v=biyao_5aac5cc"
        type="text/javascript"></script>
<script src="http://static4.biyao.com/pc/www/js/product/lazyloadIM.js?v=biyao_2f2a448"
        type="text/javascript"></script>


</body>
</html>