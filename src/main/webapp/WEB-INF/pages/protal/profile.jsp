<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../common/tag.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="renderer" content="webkit"/>
    <meta http-equiv="X-UA-Compatible" content="IE=Edge"/>
    <title>个人中心-个人设置 – 买大牌制造商产品，上必要 – 必要biyao.com</title>
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
    <link href="http://static.biyao.com/pc/favicon.ico" rel="icon"
          type="image/x-icon"/>
    <script type="text/javascript">
        window.ApiSite = "http://api.biyao.com";
        window.ControllerSite = "";
    </script>

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
<!-- 分享弹框 -->
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
                    <li class=" "><a href="${basePath}/u/1/order"><i class="f_r mcMIcon3 inline"></i>我的订单</a></li>
                    <li class="a_check "><a href="${basePath}/u/"><i class="f_r mcMIcon8 inline"></i>个人设置</a>
                    </li>
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
                        <a class="a_checked" href="#"><span>个人信息</span></a>
                        <a href="${basePath}/u/1/address"><span>管理收货地址</span></a>
                        <a href="/MyCenter/ChangePassword.html" id="forgetPasswordID"><span>修改密码</span></a>
                        <a class="bd_r_none" href="/MyCenter/ChangePhone.html"><span>更换手机号</span></a>
                    </h3>
                </div>
                <div class="pd10 bd_b_eee">
                    <h4 class="f14 col_666 mg_t20">基本信息</h4>
                    <form method="post" id="submitForm" action="">
                        <table cellspacing="0" cellpadding="0" border="0"
                               class="per_table th80">
                            <tbody>
                            <tr>
                                <th>账户名：</th>
                                <td id="txtEmail">15271917179</td>
                            </tr>
                            <tr>
                                <th>昵　称：</th>
                                <td><input type="text"
                                           onkeyup="$(this).css('color','#000')"
                                           value="by_b2bYGy55" class="inpCom w200"
                                           maxlength="10" name="nickname" id="txtNickname"> <span class="col_b76 inline"
                                                                                                  id="nicknameHint"></span>
                                </td>

                            </tr>
                            <tr>
                                <th>性　别：</th>
                                <td class="J_gender_select"><label
                                        class="  col_666 cursor mg_r10"> <i
                                        class="radioIcon inline"
                                        name="needRefund" value="1" type="radio"> <input
                                        type="radio" class="none" value="-1" name="gender">
                                </i> &nbsp;保密
                                </label> <label
                                        class="checked col_666 cursor mg_r10">
                                    <i class="radioIcon inline" value="2" name="needRefund"
                                       type="radio"> <input type="radio" class="none" value="0"
                                                            name="gender">

                                    </i> &nbsp;男
                                </label> <label
                                        class=" col_666 cursor mg_r10">
                                    <i class="radioIcon inline" value="2" name="needRefund"
                                       type="radio"> <input type="radio" class="none" value="1"
                                                            name="gender">
                                    </i> &nbsp;女
                                </label></td>
                            </tr>
                            </tbody>
                        </table>
                    </form>
                </div>
                <div class="per_upfileImgBox clearfix">
                    <h4 class="f14 col_666 mg_b30">头像设置</h4>
                    <div class="bigImgArea posR">
                        <ul class="upBtn_tip">
                            <li>
                                <form action="/MyCenter/UploadAvatar" target="uploadfile"
                                      method="post" enctype="multipart/form-data">
                                    <a href="javascript:void(0)"
                                       class="inline  relative upLoading_btn">
                                        <span class="">上传头像</span> <input type="file" name="userfile"
                                                                          class="J_uploadfile_btn fileInput upbox1"
                                                                          id="ff">
                                    </a>
                                </form>
                                <iframe width="0" height="0" frameborder="0" name="uploadfile"
                                        id="uploadfile" src="" scrolling="no" style="display: none;"></iframe>
                            </li>
                            <li>仅支持JPG，GIF，PNG，且文件小于2M</li>
                        </ul>
                    </div>
                    <div class="showImgArea clearfix">
                        <p class="per_imgp  clearfix">你上传的图片自动生成三种尺寸，请注意大中小尺寸的头像是否清晰</p>
                        <dl class="clearfix">
                            <dt>
                                <div class="bigimg">
                                    <img width="150" height="150"
                                         onerror="javascript:this.src='http://static1.biyao.com/pc/www/img/avatar/head_150.png'"
                                         src="http://static3.biyao.com/pc/www/img/avatar/head_150.png">
                                </div>
                                <p class="per_imgp">大尺寸头像 150*150像素</p>
                            </dt>
                            <dd class="mb_20">
                                <div class="middleimg">
                                    <img width="60" height="60"
                                         onerror="javascript:this.src='http://static2.biyao.com/pc/www/img/avatar/head_150.png'"
                                         src="http://static4.biyao.com/pc/www/img/avatar/head_150.png">
                                </div>
                                <p class="per_imgp">中尺寸头像 60*60像素</p>
                            </dd>
                            <dd>
                                <div class="smallimg">
                                    <img width="32" height="32"
                                         onerror="javascript:this.src='http://static3.biyao.com/pc/www/img/avatar/head_150.png'"
                                         src="http://static.biyao.com/pc/www/img/avatar/head_150.png">
                                </div>
                                <p class="per_imgp">小尺寸头像 32*32像素</p>
                            </dd>
                        </dl>

                    </div>

                </div>

                <div class="per_upfileImgBox clearfix" style="display: none">
                    <div class="bigImgArea J_bigImgArea falls_loading posR">
                        <div>
                            <form action="/MyCenter/UploadAvatar" target="uploadfile2"
                                  method="post" enctype="multipart/form-data">
                                <div class="per_imgReupfile">
								<span class="posR">重新选择图片<input type="file"
                                                                name="userfile"
                                                                class="J_uploadfile_btn fileInput upbox1 "></span>
                                </div>
                            </form>
                            <iframe width="0" height="0" frameborder="0" name="uploadfile2"
                                    id="uploadfile2" src="" scrolling="no" style="display: none;"></iframe>
                        </div>
                        <div>
                            <div class="head_img_t J_head_img_t"></div>
                            <div class="head_img_b J_head_img_b"></div>
                            <div class="head_img_l J_head_img_l"></div>
                            <div class="head_img_r J_head_img_r"></div>
                            <div class="head_img_mark J_drag">
                                <div class="head_img_mark_btn J_drag_bottomright"></div>
                            </div>
                        </div>
                        <img src="" class="J_drag_img" id="J_drag_img">
                    </div>
                    <div class="showImgArea">
                        <p class="per_imgp  clearfix">你上传的图片自动生成三种尺寸，请注意大中小尺寸的头像是否清晰</p>
                        <dl class="clearfix">
                            <dt>
                                <div class="bigimg posR">
                                    <img src="">
                                </div>
                                <p class="per_imgp">大尺寸头像 150*150像素</p>
                            </dt>
                            <dd class="mb_20">
                                <div class="middleimg posR">
                                    <img src="">
                                </div>
                                <p class="per_imgp">中尺寸头像 60*60像素</p>
                            </dd>
                            <dd>
                                <div class="smallimg posR">
                                    <img src="">
                                </div>
                                <p class="per_imgp">小尺寸头像 32*32像素</p>
                            </dd>
                        </dl>

                    </div>

                </div>
                <p class="per_imgp clearfix mg_l40">
                    <a href="javascript:;" class="btnCom1 btnComS btnBg2 btnH1 w80 inline J_save"><span>保
					存</span></a>
                </p>

            </div>
        </div>
    </div>
    <script type="text/javascript">
        function getCookie(cname) {
            var name = cname + "=";
            var ca = document.cookie.split(';');
            for (var i = 0; i < ca.length; i++) {
                var c = ca[i];
                while (c.charAt(0) == ' ') c = c.substring(1);
                if (c.indexOf(name) != -1) return c.substring(name.length, c.length);
            }
            return "";
        }

        if ((typeof(getCookie("__qc__k")) != "undefined" && getCookie("__qc__k") != "") || (typeof(getCookie("mobileNO")) != "undefined" && getCookie("mobileNO") != "")) {
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
<script type="text/javascript"
        src="http://static.biyao.com/pc/common/js/ui/jquery.pagination.js?v=biyao_1a0a135"></script>
<script type="text/javascript" src="http://static1.biyao.com/pc/common/js/ui/pages.js?v=biyao_5fd7a00"></script>
<script type="text/javascript"
        src="http://static2.biyao.com/pc/common/js/ui/jquery.validate.js?v=biyao_6ec02c8"></script>
<script type="text/javascript" src="http://static3.biyao.com/pc/www/js/mycenter/mycenter.js?v=biyao_c900f6a"></script>
<script type="text/javascript" src="http://static4.biyao.com/pc/www/js/common.js?v=biyao_7e1dcfa"></script>


<script src="http://static4.biyao.com/pc/www/js/mycenter/personal_upfile_img.js?v=biyao_285abee"
        type="text/javascript"></script>
<script src="http://static.biyao.com/pc/common/js/ui/loadmask.js?v=biyao_5aac5cc" type="text/javascript"></script>


</body>
</html>
