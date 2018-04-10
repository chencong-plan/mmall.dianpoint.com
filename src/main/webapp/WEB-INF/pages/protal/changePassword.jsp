<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../common/tag.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="renderer" content="webkit"/>
    <meta http-equiv="X-UA-Compatible" content="IE=Edge"/>
    <title>个人中心-修改密码 – 买大牌制造商产品，上必要 – 必要biyao.com</title>
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
                    <a href="${basePath}/u/1">
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






    <script type="text/javascript">
        var passwordRegex = /.*\s+.*/;
        function blankTest(that) {
            if (passwordRegex.test($(that).val())) {
                $(that).val("");
            }
        };
    </script>
    <div class="per_right_out backg_fff">
        <div class="per_right ">
            <div class="">
                <div class="relative">
                    <h4 class="nTitle">个人设置</h4>
                    <h3 class="per_title">
                        <a href="${basePath}/u/1"><span>个人信息</span></a>
                        <a href="${basePath}/u/1/address"><span>管理收货地址</span></a>
                        <a class="a_checked" href="${basePath}/u/1/password"><span>修改密码</span></a>
                        <a class="bd_r_none"  href="/MyCenter/ChangePhone.html"><span>更换手机号</span></a>
                    </h3>
                </div>
                <div class="pd10">

                    <form action="/MyCenter/ChangePasswordValueByAjax" method="post" id="form1">
                        <table cellspacing="0" class="per_table th80">
                            <tbody><tr>
                                <th>旧密码：</th>
                                <td><input type="password" onblur="blankTest(this);" name="OldPassword" id="OldPassword" data-val-required="不能为空" data-val="true" data-highlight="highlight" class="inpCom perinp w210 permy" ></td>
                            </tr>
                            <tr>
                                <th>新密码：</th>
                                <td><input type="password" onblur="blankTest(this);" name="NewPassword" id="NewPassword" data-val-required="不能为空" data-val-length-min="6" data-val-length-max="20" data-val-length="密码长度6-20位字符" data-val="true" data-highlight="highlight" class="inpCom perinp w210 permy onfocustext"></td>
                            </tr>
                            <tr>
                                <th>确认密码：</th>
                                <td><input type="password" onblur="blankTest(this);" name="ConfirmPassword" id="ConfirmPassword" data-val-equalto-other="*.NewPassword" data-val-equalto="新密码和确认密码不匹配." data-val="true" data-highlight="highlight" class="inpCom perinp w210 permy"></td>
                            </tr>
                            <tr>
                                <th></th>
                                <td height="80"> <a class="btnCom1 btnComS btnBg2 btnH1 w80 inline J_release" ><span>确 定</span></a></td>
                            </tr>
                            </tbody>
                        </table>
                    </form>

                </div>
            </div>
        </div>
    </div>
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


<script src="http://static1.biyao.com/pc/www/js/mycenter/personal_changepassword.js?v=biyao_90c6348" type="text/javascript"></script>
<script src="http://static2.biyao.com/pc/common/js/ui/loadmask.js?v=biyao_5aac5cc" type="text/javascript"></script>

</body>
</html>