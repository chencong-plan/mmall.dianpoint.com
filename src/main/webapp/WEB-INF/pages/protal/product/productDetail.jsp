<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../../common/tag.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>必要 - 买大牌制造商产品，上必要</title>

    <link href="${basePath}/resources/css/common/common.css" rel="stylesheet" type="text/css"/>
    <link href="${basePath}/resources/css/common/new.main.css" rel="stylesheet" type="text/css"/>

    <link type="text/css" href="${basePath}/resources/css/editor_by.css" rel="stylesheet"/>
    <link type="text/css" href="${basePath}/resources/css/new.product.css" rel="stylesheet"/>

</head>
<body id="pagebody">

<div class="header">
    <%@ include file="../../common/header.jsp" %>
</div>

<!-- 导航栏 -->
<div class="nav">
    <div class="clearfix">
        <a href="http://www.biyao.com/home/index.html" class="nav-logo"></a>
        <div class="nav-category">
            <p><span>全部分类</span><i></i></p>
            <div>
                <%@ include file="../../common/nav-list.jsp" %>
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
<%@ include file="../../common/rightAndShare.jsp" %>

<div class="section">
    <div class="section-bread">
        <a href="${basePath}/">首页</a>
        <span class="bread-title">&gt;&nbsp;${productDetailVo.name}</span>
</div>
    <div class="section-editor clearfix">
        <div class="editor-main">
            <div class="editor-picture clearfix">
                <p>
                    <img src="${productDetailVo.imageHost}${productDetailVo.mainImage}">
                </p>
                <ul>
                    <li class="main-active">
                        <img src="${productDetailVo.imageHost}${productDetailVo.mainImage}">
                    </li>
                    <li class="">
                        <img src="${productDetailVo.imageHost}${productDetailVo.mainImage}">
                    </li>
                    <li class="">
                        <img src="${productDetailVo.imageHost}${productDetailVo.mainImage}">
                    </li>
                    <li class="">
                        <img src="http://img.dianpoint.com/009e0cf8343311e890a398eecb6130a9.jpg">
                    </li>
                </ul>
            </div>
            <ul class="editor-policy clearfix">

                <li>
                    <span>7天无忧退换</span>
                    <div><i></i>实物破损、不符、质量问题，退换货商家承担往返运费。</div>
                </li>

                <li>
                    <span>先行赔付</span>
                    <div><i></i>争议可申诉，申诉成功，立即退款。</div>
                </li>

                <li>
                    <span>超时赔偿</span>
                    <div><i></i>未按承诺时间发货，系统自动赔付（赔款金额为订单商品金额的30%，上限500元）。</div>
                </li>

                <li>
                    <span>顺丰包邮</span>
                    <div><i></i>运费由商家承担</div>
                </li>

            </ul>
        </div>
        <div class="editor-panel">
            <div class="panel-top">
                <h1>${productDetailVo.name}</h1>
                <p>${productDetailVo.subtitle}</p>
            </div>
            <ul class="panel-main">
                <li class="panel-press">
                    <span>售价</span>
                    <div>
                        <span class="panel-maney">￥<i>${productDetailVo.price}</i></span>
                        <span class="panel-duration">生产周期：<span>7</span>天
						</span>
                    </div>
                </li>

                <li class="panel-count"><span>数量</span>
                    <div>
                        <p class="panel-num">
                            <span class="panel-minus">-</span>
                            <span class="panel-number">1</span>
                            <span class="panel-add">+</span>
                        </p>
                    </div>
                </li>
            </ul>
            <div class="panel-bottom">
                <p id="buyNow" class="panel-buyNow">立即购买</p>
                <p id="addShopCar">加入购物车</p>
            </div>
        </div>
    </div>

    <div class="section-view">
        <div class="view-title clearfix">
            <a href="#"><span></span><i>浏览记录</i></a>
            <ul class="clearfix">
                <li class="view-active" id="detail">商品信息<i></i></li>
                <li id="evaluate">评价详情<i></i></li>
            </ul>
            <p class="view-shopCar">加入购物车</p>
        </div>

        <div class="view-section clearfix">
            <div class="view-supplier">
                <ul class="supplier-recommen">
                    <li>
                        <a target="_blank" href="http://www.biyao.com/products/1301465088060100001-0.html">
                            <i><img src="http://bfs.biyao.com/group1/M00/30/76/rBACW1qqO8aAUCMOAAB3dCPK0_A286.jpg"/></i>
                            <dl>
                                <dt>60S/2镂空蝙蝠袖针织衫</dt>
                                <dd>￥359</dd>
                            </dl>
                        </a>
                    </li>
                    <li>
                        <a target="_blank" href="http://www.biyao.com/products/1301465090010100001-0.html">
                            <i><img src="http://bfs.biyao.com/group1/M00/2E/D5/rBACVFqrKQOAM3TaAACPSNvT4Pg815.jpg"/></i>
                            <dl>
                                <dt>60S/2插肩袖花色针织衫</dt>
                                <dd>￥359</dd>
                            </dl>
                        </a>
                    </li>
                    <li>
                        <a target="_blank" href="http://www.biyao.com/products/1301465083020100001-0.html">
                            <i><img src="http://bfs.biyao.com/group1/M00/2F/7E/rBACYVqfo0qANl9mAAB9NAMaQ9s556.jpg"/></i>
                            <dl>
                                <dt>60S/2廓形桑蚕丝针织衫</dt>
                                <dd>￥359</dd>
                            </dl>
                        </a>
                    </li>
                </ul>
            </div>


            <div class="view-main clearfix">
                <div id="vs_content" class="view-detail">
                    <div class="wrap mg_t30 ie78 ">
                        <div class="imgText-property">
                            <%--这里加载商品详细描述信息，使用富文本--%>
                            这里加载商品详细描述信息，使用富文本
                        </div>
                        <div class="imgText-edit">
                            <p><img src="http://bfs.biyao.com/group1/M00/32/61/rBACVFrMHoSAJekpAACbELJl-MI296.jpg"></p>
                            <%--这里加载商品详细图片--%>
                            这里加载商品详细图片，可用作图片列表
                        </div>
                    </div>
                </div>
                <div class="view-evaluate">
                    <div class="eval-select clearfix">
                        <ul>
                            <li id="evalAll" class="eval-active"><span></span>全部</li>
                            <li id="evalImage"><span></span>有图</li>
                        </ul>
                        <p>商品满意度：<i id="evalScore"></i></p>
                    </div>
                    <ul class="eval-list"></ul>
                    <span id="moreProduct">下拉加载更多</span>
                </div>
            </div>

        </div>
    </div>
    <!-- 为你推荐 -->

    <div id="recommendList">
        <div class="recommend-recommend-3">
            <div class="recommend-title"><p>为你推荐</p></div>
            <ul class="recommend-list clearfix">
                <li>
                    <a target="_blank" href="/products/1300905256010100001-0.html">
                        <i><img src="http://bfs.biyao.com/group1/M00/32/10/rBACYVq4vK2AIEPCAACdzCi7Jq4637.jpg"></i>
                        <dl>
                            <dt>经典百搭印花T恤</dt>
                            <dd>¥169.0</dd>
                        </dl>
                    </a>
                </li>
                <li>
                    <a target="_blank" href="/products/1301075233010100001-0.html">
                        <i><img src="http://bfs.biyao.com/group1/M00/33/5A/rBACW1rENDaAe-OaAACbl1MkPKk676.jpg"></i>
                        <dl>
                            <dt>性感V领条纹短袖T恤针织衫</dt>
                            <dd>¥229.0</dd>
                        </dl>
                    </a>
                </li>
                <li>
                    <a target="_blank" href="/products/1300625257010100001-0.html">
                        <i><img src="http://bfs.biyao.com/group1/M00/31/12/rBACVFq-AxGAb_4_AACbE16hy5U936.jpg"></i>
                        <dl>
                            <dt>前短后长极简风雪纺衫</dt>
                            <dd>¥239.0</dd>
                        </dl>
                    </a>
                </li>
                <li>
                    <a target="_blank" href="/products/1301465098020100001-0.html">
                        <i><img src="http://bfs.biyao.com/group1/M00/2F/C4/rBACVFqzTAuAcmYFAAB4eb6eUq8844.jpg"></i>
                        <dl>
                            <dt>60S/2桑蚕丝纯色针织衫</dt>
                            <dd>¥258.0</dd>
                        </dl>
                    </a>
                </li>
                <li>
                    <a target="_blank" href="/products/1300535278030100001-0.html">
                        <i><img src="http://bfs.biyao.com/group1/M00/32/C9/rBACW1q-B6iAOZrOAACCjmaeuVU007.jpg"></i>
                        <dl>
                            <dt>天丝亚麻 长款牛仔衬衫裙</dt>
                            <dd>¥369.0</dd>
                        </dl>
                    </a>
                </li>
            </ul>
        </div>
    </div>


</div>


<!-- 底部栏 -->
<%@ include file="../../common/footer.jsp" %>

<script type="text/javascript" src="http://static.biyao.com/pc/common/js/jquery-1.8.3.js?v=biyao_7d074dc"></script>
<script type="text/javascript" src="http://static1.biyao.com/pc/common/js/jquery.cookie.js?v=biyao_a5283b2"></script>
<script type="text/javascript" src="http://static2.biyao.com/pc/common/js/md5.js?v=biyao_c8cab85"></script>
<script type="text/javascript"
        src="http://static3.biyao.com/pc/common/js/master/masterCommon.js?v=biyao_e978582"></script>
<script type="text/javascript" src="http://static4.biyao.com/pc/common/js/jquery.extention.js?v=biyao_98daa33"></script>
<script type="text/javascript" src="http://static.biyao.com/pc/common/js/common.js?v=biyao_85d404c"></script>


<script type="text/javascript" src="http://static4.biyao.com/pc/common/js/ui/dialog.js"></script>
<script type="text/javascript" src="http://static.biyao.com/pc/common/js/ProductReview.js"></script>
<script type="text/javascript" src="http://static1.biyao.com/pc/www/js/master/product.js"></script>
<script type="text/javascript" src="http://static2.biyao.com/pc/www/js/master/noModel.js"></script>



<script type="text/javascript" src="http://static1.biyao.com/pc/common/js/bytrack.js?v=biyao_347126a"></script>

<script type="text/javascript">
    $('.editor-picture ul li').click(function () {
        $ul = $(this).parent();
        $ul.find('li').each(function () {
            $(this).removeClass('main-active');
        });
        // console.info($ul);
        $(this).addClass('main-active');
        var $src = $(this).find('img').attr('src');
        // console.info(src);
        var $img = $ul.parent().find('p img');
        $img.attr('src',$src)
        // console.info($src)
        // console.info($img.attr('src',$src))
        //$img.attr('src',src);
    });
</script>
</body>
</html>
