<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../common/tag.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="renderer" content="webkit"/>
    <meta http-equiv="X-UA-Compatible" content="IE=Edge"/>
    <title>个人中心-管理收货地址 – 买大牌制造商产品，上必要 – 必要biyao.com</title>
    <script type="text/javascript" src="http://static.biyao.com/pc/common/js/jquery-1.8.3.js?v=biyao_7d074dc"></script>
    <script type="text/javascript" src="http://static1.biyao.com/pc/common/js/md5.js?v=biyao_c8cab85"></script>
    <script type="text/javascript" src="http://static2.biyao.com/pc/common/js/master/masterCommon.js?v=biyao_e978582"></script>
    <script type="text/javascript" src="http://static3.biyao.com/pc/minisite/byshoes/js/jquery.cookie.js?v=biyao_a5283b2"></script>
    <script type="text/javascript" src="http://static4.biyao.com/pc/common/js/jquery.extention.js?v=biyao_98daa33"></script>
    <script type="text/javascript" src="http://static.biyao.com/pc/common/js/ui/dialog.js?v=biyao_a507914"></script>
    <link href="http://static.biyao.com/pc/favicon.ico" rel="shortcut icon"
          type="image/x-icon" />
    <link href="http://static.biyao.com/pc/favicon.ico" rel="icon"
          type="image/x-icon" />
    <script type="text/javascript">
        window.ApiSite = "http://api.biyao.com";
        window.ControllerSite="";
    </script>

    <link type="text/css" href="http://static1.biyao.com/pc/common/css/common.css?v=biyao_a0e66f3" rel="stylesheet" />
    <link type="text/css" href="http://static2.biyao.com/pc/www/css/cm_www.css?v=biyao_2fbd950" rel="stylesheet" />
    <link type="text/css" href="http://static3.biyao.com/pc/common/css/new.main.css?v=biyao_e279cc3" rel="stylesheet" />
    <link type="text/css" href="http://static4.biyao.com/pc/www/css/myCenter.css?v=biyao_ace6b3b"
          rel="stylesheet" />

</head>
<body>





<div class="header">
   <%@ include file="../common/header.jsp"%>
</div>




<!-- 导航栏 -->
<div class="nav">
    <div class="clearfix">
        <a href="http://www.biyao.com/home/index.html" class="nav-logo"></a>
        <div class="nav-category">
            <p><span>全部分类</span><i></i></p>
            <div>
               <%@ include file="../common/nav-list.jsp"%>
            </div>
        </div>
        <div class="nav-search">
            <p><input type="text" id="searchInput"/><span id="searchBtn"></span></p>
            <ul></ul>
        </div>
    </div>
</div>




<!-- 右边栏 -->
<!-- 分享弹框 -->
<%@ include file="../common/rightAndShare.jsp" %>


<div class="wrap  posR mg_t20 mH810 pd_b40">
    <div class="per_left">
        <div class="per_leftbox  pd_t14">
            <ul class="per_leftul">
                <li class="t_c">
                    <a href="/MyCenter/Profile.html">
                        <img src="http://static4.biyao.com/pc/www/img/avatar/head_150.png" alt="" onerror="javascript:this.src='http://static.biyao.com/pc/www/img/avatar/head_150.png'" style="width: 150px; height: 150px"/>
                    </a>
                </li>
                <li class="f14 col_fff mg_t10 t_c">by_b2bYGy55</li>
            </ul>
        </div>
        <div class="per_leftbox">
            <div class="perleft_menu pdtb_20">
                <ul>
                    <li class=" "><a href="${basePath}/u/1/order" ><i class="f_r mcMIcon3 inline"></i>我的订单</a> </li>
                    <li class="a_check "><a href="${basePath}/u/1" ><i class="f_r mcMIcon8 inline"></i>个人设置</a></li>
                </ul>
            </div>
        </div>
    </div>








    <div class="per_right_out backg_fff">
        <div class="per_right ">
            <div class="">
                <div class="relative">
                    <h4 class="nTitle">个人设置</h4>
                    <h3 class="per_title">
                        <a  href="${basePath}/u/1"><span>个人信息</span></a>
                        <a class="a_checked"  href="${basePath}/u/1/address"><span>管理收货地址</span></a>
                        <a href="${basePath}/u/1/password" id="forgetPasswordID"><span>修改密码</span></a>
                        <a class="bd_r_none"  href="/MyCenter/ChangePhone.html"><span>更换手机号</span></a>
                    </h3>
                </div>
                <form method="post" id="formAddress">
                    <div class="pd10">
                        <input type="hidden" data-highlight="highlight" maxlength="16" value="0"  name="isUpdate">
                        <input class="J_hide" type="hidden" id="hid_province" name="province" />
                        <input class="J_hide" type="hidden" id="hid_city" name="city" />
                        <input class="J_hide" type="hidden" id="hid_area" name="areaId" />
                        <table border="0" cellspacing="0" class="per_table th80">
                            <tbody><tr>
                                <th>
                                    <span class="col_ee5b47"></span>收货人姓名：
                                </th>
                                <td>
                                    <input type="text" data-highlight="highlight" maxlength="12" value="" name="receiver" class="inpCom w200 permy">
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    <span class="col_ee5b47"></span>省市：
                                </th>
                                <td>
                                    <div class="J_province w120 mg_r10 posR f_l permy"><div class="J_select"><span class="sel_span" data-value="">--请选择--</span><div class="sel_div" style="height: 0px;"><ul class="sel_ul"><li data-value="" data-hover="hover">--请选择--</li><li data-value="110000" data-hover="hover">北京市</li><li data-value="120000" data-hover="hover">天津市</li><li data-value="130000" data-hover="hover">河北省</li><li data-value="140000" data-hover="hover">山西省</li><li data-value="150000" data-hover="hover">内蒙古自治区</li><li data-value="210000" data-hover="hover">辽宁省</li><li data-value="220000" data-hover="hover">吉林省</li><li data-value="230000" data-hover="hover">黑龙江省</li><li data-value="310000" data-hover="hover">上海市</li><li data-value="320000" data-hover="hover">江苏省</li><li data-value="330000" data-hover="hover">浙江省</li><li data-value="340000" data-hover="hover">安徽省</li><li data-value="350000" data-hover="hover">福建省</li><li data-value="360000" data-hover="hover">江西省</li><li data-value="370000" data-hover="hover">山东省</li><li data-value="410000" data-hover="hover">河南省</li><li data-value="420000" data-hover="hover">湖北省</li><li data-value="430000" data-hover="hover">湖南省</li><li data-value="440000" data-hover="hover">广东省</li><li data-value="450000" data-hover="hover">广西壮族自治区</li><li data-value="460000" data-hover="hover">海南省</li><li data-value="500000" data-hover="hover">重庆市</li><li data-value="510000" data-hover="hover">四川省</li><li data-value="520000" data-hover="hover">贵州省</li><li data-value="530000" data-hover="hover">云南省</li><li data-value="540000" data-hover="hover">西藏自治区</li><li data-value="610000" data-hover="hover">陕西省</li><li data-value="620000" data-hover="hover">甘肃省</li><li data-value="630000" data-hover="hover">青海省</li><li data-value="640000" data-hover="hover">宁夏回族自治区</li><li data-value="650000" data-hover="hover">新疆维吾尔自治区</li></ul><div class="scr_com sel_scroll" style="height: 0px;"><div class="scr_monsemove sel_scroll_btn"></div> </div></div></div>
                                        <input type="hidden" name="province" id="hid_province" class="J_hide">
                                        <input type="text" class="absolute hidden_input2" name="J_sel_input"></div>
                                    <div class="J_city w120 mg_r10 posR f_l permy"><div class="J_select"><span class="sel_span" data-value="">--请选择--</span><div class="sel_div" style="height: 0px;"><ul class="sel_ul"><li data-value="" data-hover="hover">--请选择--</li></ul><div class="scr_com sel_scroll" style="height: 0px;"><div class="scr_monsemove sel_scroll_btn"></div> </div></div></div>
                                        <input type="hidden" name="city" id="hid_city" class="J_hide">
                                        <input type="text" class="absolute hidden_input2" name="J_sel_input"></div>
                                    <div class="J_area w140 f_l posR permy permyre"><div class="J_select"><span class="sel_span" data-value="">--请选择--</span><div class="sel_div" style="height: 0px;"><ul class="sel_ul"><li data-value="" data-hover="hover">--请选择--</li></ul><div class="scr_com sel_scroll" style="height: 0px;"><div class="scr_monsemove sel_scroll_btn"></div> </div></div></div>
                                        <input type="hidden" name="addr_area_id" id="hid_area" class="J_hide">
                                        <input type="text" class="absolute hidden_input2" name="J_sel_input"></div>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    <span class="col_ee5b47"></span>街道地址：
                                </th>
                                <td>
                                    <input type="text" data-highlight="highlight" maxlength="128" value="" class="inpCom w380 permy" name="address">
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    <span class="col_ee5b47"></span>手机号码：
                                </th>
                                <td>
                                    <input type="text" data-highlight="highlight" maxlength="64" value="" class="inpCom w200 permy" name="phone">
                                </td>
                            </tr>
                            <tr>
                                <th></th>
                                <td>
                                    <label class="checked J_default_address">
                                        <i class="openIcon inline">

                                        </i>&nbsp;设为默认地址
                                    </label>


                                </td>
                            </tr>
                            <tr>
                                <th></th>
                                <td colspan="2"><a id="btn_SaveAddress" href="#" class="btnCom1 btnComS btnBg2 btnH1 w80 inline J_save"><span>确 定</span></a></td>
                            </tr>
                            </tbody></table>
                    </div>
                </form>
                <h3 class="perTitle col_523 lineH24">已保存的地址</h3>
                <table border="0" cellspacing="0" cellpadding="0" class="perTableTitle1">
                    <tbody><tr>
                        <td width="9%"><span class="inline">收货人</span></td>
                        <td width="20%"><span class="inline">所在省市</span></td>
                        <td width="30%"><span class="inline">街道地址</span></td>
                        <td width="10%"><span class="inline">手机</span></td>
                        <td width="10%"><span class="inline"></span></td>
                        <td width="10%"><span class="inline">操作</span></td>
                    </tr>
                    </tbody>
                </table>
                <table border="0" cellspacing="1" cellpadding="0" class="J_table per_list1  bg_fff">
                    <tbody>

                    <tr data-addressid="1925215">
                        <td width="9%" class="J_td2">chencong123</td>
                        <td width="20%" class="J_td3">
                            北京市




                            东城区
                            <input type="hidden" value="110000" data-text="北京市">
                            <input type="hidden" value="110100" data-text="市辖区">
                            <input type="hidden" value="110101" data-text="东城区">
                        </td>
                        <td width="30%" align="left" class="J_td2">12231231</td>
                        <td width="11%" class="J_td2">15271917177</td>
                        <td width="10%" type="true" class="J_td">

                        </td>
                        <td width="10%"><a class="J_edit col_link" >修改</a> / <a class="J_dele col_link" >删除</a></td>
                    </tr>


                    <tr data-addressid="1925213">
                        <td width="9%" class="J_td2">chencong</td>
                        <td width="20%" class="J_td3">
                            湖北省



                            武汉市


                            洪山区
                            <input type="hidden" value="420000" data-text="湖北省">
                            <input type="hidden" value="420100" data-text="武汉市">
                            <input type="hidden" value="420111" data-text="洪山区">
                        </td>
                        <td width="30%" align="left" class="J_td2">11111111111111111111111</td>
                        <td width="11%" class="J_td2">15271911111</td>
                        <td width="10%" type="true" class="J_td">
                            <span class="col_ee5b47">默认地址</span>
                        </td>
                        <td width="10%"><a class="J_edit col_link" >修改</a> / <a class="J_dele col_link" >删除</a></td>
                    </tr>



                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        function getCookie(cname) {
            var name = cname + "=";
            var ca = document.cookie.split(';');
            for(var i=0; i<ca.length; i++) {
                var c = ca[i];
                while (c.charAt(0)==' ') c = c.substring(1);
                if (c.indexOf(name) != -1) return c.substring(name.length, c.length);
            }
            return "";
        }
        if((typeof(getCookie("__qc__k"))!="undefined"&&getCookie("__qc__k")!="")||(typeof(getCookie("mobileNO"))!="undefined"&&getCookie("mobileNO")!="")){
            $("#forgetPasswordID").html("");
        }
    </script>
</div>


<!-- 底部栏 -->
<%@ include file="../common/footer.jsp" %>

<script type="text/javascript" src="http://static1.biyao.com/pc/common/js/lazyload.js?v=biyao_80d4f78"></script>
<script type="text/javascript" src="http://static2.biyao.com/pc/common/js/common.js?v=biyao_85d404c"></script>
<script type="text/javascript" src="http://static3.biyao.com/pc/common/js/ui/select.js?v=biyao_a2fbe20"></script>
<script type="text/javascript" src="http://static4.biyao.com/pc/common/js/ui/autocomplete.js?v=biyao_bd4725d"></script>
<script type="text/javascript" src="http://static.biyao.com/pc/common/js/ui/jquery.pagination.js?v=biyao_1a0a135"></script>
<script type="text/javascript" src="http://static1.biyao.com/pc/common/js/ui/pages.js?v=biyao_5fd7a00"></script>
<script type="text/javascript" src="http://static2.biyao.com/pc/common/js/ui/jquery.validate.js?v=biyao_6ec02c8"></script>
<script type="text/javascript" src="http://static3.biyao.com/pc/www/js/mycenter/mycenter.js?v=biyao_c900f6a"></script>
<script type="text/javascript"	src="http://static4.biyao.com/pc/www/js/common.js?v=biyao_7e1dcfa"></script>



<script src="http://static.biyao.com/pc/www/js/mycenter/personal_deliveryAddress.js?v=biyao_0d2183e"></script>
<script src="http://static1.biyao.com/pc/common/js/ui/loadmask.js?v=biyao_5aac5cc" type="text/javascript"></script>
<script type="text/javascript">
    $(function () {
        var selector = '.J_default_address';
        LT.setRadioEffect(selector);
    });
</script>

</body>
</html>
