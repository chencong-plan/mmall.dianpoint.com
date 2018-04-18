<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@ include file="../common/tag.jsp" %>
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
    <link rel="stylesheet" type="text/css" href="${basePath}/resources/css/new.index.css"/>

</head>
<body id="pagebody">


<!-- 顶部栏 -->
<div class="header header-index">
    <%@ include file="../common/header.jsp" %>
</div>


<!-- 导航栏 -->
<%@ include file="../common/daohang.jsp" %>


<%--右边栏  分享框子--%>
<%@ include file="../common/rightAndShare.jsp" %>

<!-- 轮播图及下方图文说明部分 -->
<%@ include file="../common/lunpo.jsp" %>
<!-- 专题文章部分 -->

<div class="article">
    <a target="_blank" href="http://news.biyao.com/pc/article/61021975709e468a89a940585b6b2ff9.html">
        <img src="http://bfs.biyao.com/group1/M00/25/01/rBACW1owSW6ABrNqAAAWQIF__tQ201.png" alt=""/>
        <span>谁说中国男人穿不好西装？！</span>
        <i>2018-04-08</i>
        <i>老必</i>
    </a>
</div>


<!-- 模块部分 -->
<div class="category">
    <div class="category-recommend-2">
        <ul class="clearfix">
            <li>
                <a target="_blank" href="http://www.biyao.com/classify/newProduct.html">
                    <img src="http://bfs.biyao.com/group1/M00/31/B7/rBACVFrEi32AVQjYAABDk8KHTUs881.jpg" alt=""/>
                </a>
            </li>
            <li>
                <a target="_blank" href="http://www.biyao.com/classify/newProduct.html?categoryAggregationId=55">
                    <img src="http://bfs.biyao.com/group1/M00/33/67/rBACYVrEi5KAMygoAAA86KYLW4U213.jpg" alt=""/>
                </a>
            </li>
            <li>
                <a target="_blank" href="http://www.biyao.com/classify/category.html?categoryId=334">
                    <img src="http://bfs.biyao.com/group1/M00/33/CE/rBACYVrJ8J-AOd9yAABZLIfwT-8400.jpg" alt=""/>
                </a>
            </li>
        </ul>
    </div>

    <div class="category-recommend-1">
        <div class="category-title">
            <p>精选</p>
        </div>
        <ul>
            <li>
                <a target="_blank" href="http://www.biyao.com/classify/saleList.html?type=2">
                    <i></i>
                    <img src="http://bfs.biyao.com/group1/M00/33/69/rBACYVrEkfiAV7isAACYMqtwECw890.jpg" alt=""/>
                </a>
            </li>
            <li>
                <a target="_blank" href="http://www.biyao.com/classify/supplier.html?supplierId=130108">
                    <i></i>
                    <img src="http://bfs.biyao.com/group1/M00/33/71/rBACW1rEkg6ACtvxAACCuSjM1Uc491.jpg" alt=""/>
                </a>
            </li>
            <li>
                <a target="_blank" href="http://www.biyao.com/classify/supplier.html?supplierId=130175">
                    <i></i>
                    <img src="http://bfs.biyao.com/group1/M00/31/BD/rBACVFrEmeWAPvNnAADAJFW8XS0370.jpg" alt=""/>
                </a>
            </li>
            <li>
                <a target="_blank" href="http://www.biyao.com/classify/supplier.html?supplierId=130177">
                    <i></i>
                    <img src="http://bfs.biyao.com/group1/M00/31/BA/rBACVFrEklqAIrJwAAB-9y2oF2Y137.jpg" alt=""/>
                </a>
            </li>
            <li>
                <a target="_blank" href="http://www.biyao.com/products/1301955000010900001-0.html">
                    <i></i>
                    <img src="http://bfs.biyao.com/group1/M00/33/71/rBACW1rEkniAcCEvAADpcATFUXc021.jpg" alt=""/>
                </a>
            </li>
            <li>
                <a target="_blank" href="http://www.biyao.com/classify/supplier.html?supplierId=130151">
                    <i></i>
                    <img src="http://bfs.biyao.com/group1/M00/33/71/rBACW1rEkqOAb77vAADFtr65DXA430.jpg" alt=""/>
                </a>
            </li>
        </ul>
    </div>


    <%--分类--%>
    <c:forEach items="${cateProducts.list}" var="category">
        <div class="category-recommend-3">
            <div class="category-title">
                <p>${category.categoryName}</p>
                <a target="_blank" href="${basePath}/category/${category.categoryId}">查看全部 &gt;</a>
            </div>
            <ul class="category-list clearfix">
                    <%--眼镜商品列表--%>
                <c:forEach items="${category.productList}" var="product">
                    <li>
                        <a target="_blank" href="${basePath}/products/${product.id}">
                            <i><img src="${product.imageHost}${product.mainImage}" alt=""/></i>
                            <dl>
                                <dt>${product.name}</dt>
                                <dd>¥${product.price}</dd>
                            </dl>
                        </a>
                    </li>
                </c:forEach>
            </ul>
        </div>
    </c:forEach>


    <span id="moreModule">下拉加载更多</span>
</div>


<!-- 底部栏 -->
<%@ include file="../common/footer.jsp" %>


<script type="text/javascript" src="http://static1.biyao.com/pc/common/js/jquery.cookie.js?v=biyao_a5283b2"></script>
<%--首页轮播和图片导航栏--%>
<%@ include file="../common/commonJs.jsp"%>
<script type="text/javascript"	src="http://static.biyao.com/pc/common/js/common.js?v=biyao_85d404c"></script>

<script type="text/javascript" src="http://static.biyao.com/pc/www/js/master/index.js?v=biyao_a4f6158"></script>

<script type="text/javascript" src="http://static1.biyao.com/pc/common/js/bytrack.js?v=biyao_347126a"></script>
</body>
</html>