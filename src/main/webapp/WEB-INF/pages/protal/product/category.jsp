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

    <span><b>&gt;</b>眼镜</span>
</div>
<!-- 分类栏 -->

<div class="cateBread">
    <span>眼镜：</span>
    <ul>

        <li class="123">太阳镜</li>

        <li class="487">光学眼镜</li>

        <li class="489">儿童眼镜</li>

        <li class="491">功能眼镜</li>

    </ul>
</div>

<!-- 类目商品列表 -->
<ul class="category-container">
    <%--太阳眼镜--%>
    <li id="123">
        <ul>
            <li id="124">
                <dl class="category-title">
                    <dt>太阳镜</dt>
                    <dd></dd>
                </dl>
                <ul class="category-list clearfix">
                    <li>
                        <a target="_blank" href="http://www.biyao.com/products/1300225009000000002-0.html">
                            <i><img src="http://bfs.biyao.com/group1/M00/33/6A/rBACYVrEk3yAACrXAABMx1ocysU346.jpg"
                                    alt=""/></i>

                            <dl>
                                <dt>纯钛飞行员太阳镜</dt>
                                <dd>¥249</dd>
                            </dl>
                        </a>
                    </li>
                    <li>
                        <a target="_blank" href="http://www.biyao.com/products/1300225005000000002-0.html">
                            <i><img src="http://bfs.biyao.com/group1/M00/33/72/rBACW1rElNuASb2aAABcEKMLPKw868.jpg"
                                    alt=""/></i>

                            <dl>
                                <dt>obsession偏光板材太阳镜</dt>
                                <dd>¥199</dd>
                            </dl>
                        </a>
                    </li>
                    <li>
                        <a target="_blank" href="http://www.biyao.com/products/1300225016000000002-0.html">
                            <i><img src="http://bfs.biyao.com/group1/M00/32/71/rBACVFrMb92AYs6zAABT8SdC0PI532.jpg"
                                    alt=""/></i>

                            <dl>
                                <dt>古香女士太阳镜</dt>
                                <dd>¥199</dd>
                            </dl>
                        </a>
                    </li>
                </ul>
            </li>
        </ul>
    </li>
    <%--光学眼镜--%>
    <li id="487">
        <ul>
            <li id="488">
                <dl class="category-title">
                    <dt>光学眼镜</dt>
                    <dd></dd>
                </dl>
                <ul class="category-list clearfix">
                    <li>
                        <a target="_blank" href="http://www.biyao.com/products/1300225049000000002-0.html">
                            <i><img src="http://bfs.biyao.com/group1/M00/23/D2/rBACYVodAx-AfQsHAABJOJW2v4Q969.jpg"
                                    alt=""/></i>

                            <dl>
                                <dt>钛架半框-开</dt>
                                <dd>¥279</dd>
                            </dl>
                        </a>
                    </li>
                    <li>
                        <a target="_blank" href="http://www.biyao.com/products/1300225048000000002-0.html">
                            <i><img src="http://bfs.biyao.com/group1/M00/23/D2/rBACYVodAQaAGYIXAABPM5z47ig710.jpg"
                                    alt=""/></i>

                            <dl>
                                <dt>钛架全框-勒</dt>
                                <dd>¥279</dd>
                            </dl>
                        </a>
                    </li>
                    <li>
                        <a target="_blank" href="http://www.biyao.com/products/1300225069000000002-0.html">
                            <i><img src="http://bfs.biyao.com/group1/M00/2E/B2/rBACW1qWHH-ADjzDAACOpvyRhHM890.jpg"
                                    alt=""/></i>

                            <dl>
                                <dt>流年复古光学镜</dt>
                                <dd>¥249</dd>
                            </dl>
                        </a>
                    </li>
                </ul>
            </li>

        </ul>
    </li>
    <%--儿童眼镜--%>
    <li id="489">
        <ul>
            <li id="490">
                <dl class="category-title">
                    <dt>儿童眼镜</dt>
                    <dd></dd>
                </dl>
                <ul class="category-list clearfix">
                    <li>
                        <a target="_blank" href="http://www.biyao.com/products/1300225028000000002-0.html">
                            <i><img src="http://bfs.biyao.com/group1/M00/1F/CA/rBACVFoBZY6APgcMAAA9gAD4BkI094.jpg"
                                    alt=""/></i>

                            <dl>
                                <dt>儿童钛架</dt>
                                <dd>¥249</dd>
                            </dl>
                        </a>
                    </li>
                    <li>
                        <a target="_blank" href="http://www.biyao.com/products/1300225029000000112-0.html">
                            <i><img src="http://bfs.biyao.com/group1/M00/21/99/rBACYVoCbMqAehEXAABBCX8q-Ps470.jpg"
                                    alt=""/></i>

                            <dl>
                                <dt>儿童光学镜</dt>
                                <dd>¥169</dd>
                            </dl>
                        </a>
                    </li>
                </ul>
            </li>
        </ul>
    </li>
    <%--功能眼镜--%>
    <li id="491">
        <ul>
            <li id="492">
                <dl class="category-title">
                    <dt>功能眼镜</dt>
                    <dd></dd>
                </dl>
                <ul class="category-list clearfix">
                    <li>
                        <a target="_blank" href="http://www.biyao.com/products/1300225054000000002-0.html">
                            <i><img src="http://bfs.biyao.com/group1/M00/22/ED/rBACVFoqQeWAIQK9AAB2pRP96lI504.jpg"
                                    alt=""/></i>

                            <dl>
                                <dt>Rider 骑行眼镜</dt>
                                <dd>¥179</dd>
                            </dl>
                        </a>
                    </li>
                </ul>
            </li>

        </ul>
    </li>
</ul>


<!-- 底部栏 -->
<%@ include file="../../common/footer.jsp" %>

<script type="text/javascript" src="http://static.biyao.com/pc/common/js/jquery-1.8.3.js?v=biyao_7d074dc"></script>
<script type="text/javascript" src="http://static1.biyao.com/pc/common/js/jquery.cookie.js?v=biyao_a5283b2"></script>
<script type="text/javascript" src="http://static2.biyao.com/pc/common/js/md5.js?v=biyao_c8cab85"></script>
<script type="text/javascript"
        src="http://static3.biyao.com/pc/common/js/master/masterCommon.js?v=biyao_e978582"></script>
<script type="text/javascript" src="http://static4.biyao.com/pc/common/js/jquery.extention.js?v=biyao_98daa33"></script>
<script type="text/javascript" src="http://static.biyao.com/pc/common/js/common.js?v=biyao_85d404c"></script>


<script src="http://static1.biyao.com/pc/www/js/master/classify.js"></script>

<script type="text/javascript" src="http://static1.biyao.com/pc/common/js/bytrack.js?v=biyao_347126a"></script>
</body>
</html>
