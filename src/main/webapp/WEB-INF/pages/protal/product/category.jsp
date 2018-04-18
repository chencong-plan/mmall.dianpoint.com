<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../../common/tag.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="description"
          content="必要商城是一家C2M模式的电子商务平台，旨在通过用户直连制造商（Customer TO Manufactory），砍掉传统零售中的所有加价环节，使消费者以出厂成本价就能买到高品质的产品。"/>
    <meta name="Keywords" content="必要;必要商城;必要平台;必要电商;C2M商城;工业4.0;定制平台;定制商城;奢侈品定制;定制鞋;定制包;定制眼镜;定制饰品;定制运动服;定制运动鞋"/>
    <meta property="qc:admins" content="35713343766211176375747716"/>
    <meta name="renderer" content="webkit"/>
    <meta http-equiv="X-UA-Compatible" content="IE=Edge"/>
    <title>必要 - 买大牌制造商产品，上必要</title>
    <link href="http://static.biyao.com/pc/favicon.ico" rel="shortcut icon" type="image/x-icon"/>
    <link href="http://static3.biyao.com/pc/common/css/common.css?v=biyao_a0e66f3" rel="stylesheet" type="text/css"/>
    <link href="http://static4.biyao.com/pc/common/css/new.main.css?v=biyao_e279cc3" rel="stylesheet" type="text/css"/>


    <link rel="stylesheet" type="text/css" href="http://static3.biyao.com/pc/www/css/new.category.css?v=biyao_d5eee92"/>

</head>
<body id="pagebody">


<div class="header">
    <%@ include file="../../common/header.jsp" %>
</div>


<!-- 导航栏 -->
<div class="nav">
    <div class="clearfix">
        <a href="${basePath}/" class="nav-logo"></a>
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

<!-- 面包屑 -->
<div class="bread">
    <a href="${basePath}/">首页</a>

    <span><b>&gt;</b>${category.name}</span>
</div>
<!-- 分类栏 -->

<div class="cateBread">
    <span>${category.name}：</span>
    <ul>
    </ul>
</div>

<!-- 类目商品列表 -->
<ul class="category-container">
    <c:forEach items="${cateProductList}" var="cateProduct">
        <%--太阳眼镜--%>
        <li id="${cateProduct.parentId}">
            <ul>
                <li id="${cateProduct.categoryId}">
                    <dl class="category-title">
                        <dt>${cateProduct.categoryName}</dt>
                        <dd></dd>
                    </dl>
                    <ul class="category-list clearfix">
                        <c:forEach items="${cateProduct.productList}" var="product">
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
                </li>
            </ul>
        </li>
    </c:forEach>

    <%--光学眼镜--%>
</ul>


<!-- 底部栏 -->
<%@ include file="../../common/footer.jsp" %>

<%@ include file="../../common/commonJs.jsp" %>
<script type="text/javascript" src="http://static1.biyao.com/pc/common/js/jquery.cookie.js?v=biyao_a5283b2"></script>
<script type="text/javascript" src="http://static2.biyao.com/pc/common/js/md5.js?v=biyao_c8cab85"></script>

<script type="text/javascript" src="http://static4.biyao.com/pc/common/js/jquery.extention.js?v=biyao_98daa33"></script>
<script type="text/javascript" src="http://static.biyao.com/pc/common/js/common.js?v=biyao_85d404c"></script>


<script src="http://static1.biyao.com/pc/www/js/master/classify.js?v=1212"></script>

<script type="text/javascript" src="http://static1.biyao.com/pc/common/js/bytrack.js?v=biyao_347126a"></script>

<script type="text/javascript">
    $(document).ready(function () {
        $.ajax({
            url: "${basePath}/category/getChild",
            data: {
                'categoryId':${category.id}
            },
            type: "POST",
            dataType: 'json',
            success: function (result) {
                console.info(result);
                showCategory(result);
                showProducts(result);
            },
            error: function () {
                alert('分类下帖子查询失败');
            }
        });
    });

    /**
     * 展示面包屑数据
     * @param result
     */
    function showCategory(result) {
        var $ul = $('.cateBread ul');
        var cateList = result.data.childCategory;
        for (var i = 0; i < cateList.length; i++) {
            var $li = $("<li class=" + cateList[i].id + ">" + cateList[i].name + "</li>");
            $ul.append($li);
        }
    }

    /**
     * 展示分类商品信息，并进行分页
     * @param result
     */
    function showProducts(result) {
        var cateList = result.data.childCategory;
        for (var i = 0; i < cateList.length; i++) {
            var id = cateList[i].id;
            var name = cateList[i].name;
            $ul = $('.childCategory');
            $li = $('<li class=' + id + '></li>');
            $ul_1 = $('<ul></ul>');
            $li.append($ul_1);
        }

    }
</script>

</body>
</html>
