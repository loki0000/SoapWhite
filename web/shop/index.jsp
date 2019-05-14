<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  UserAdministrator: Administrator
  Date: 2019/4/27
  Time: 21:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>商店</title>
    <link rel="icon" href="../favicon.ico" type="image/x-icon" />
    <link rel="shortcut icon" href="../img/favicon.ico" type="image/x-icon" />
    <link rel="bookmark" href="../img/favicon.ico" type="image/x-icon" />
    <script type="text/javascript" src="../js/shop/index.js"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/shop/index.css"/>
</head>
<body>

    <div id="box">

        <!--1.导航栏-->
        <div class="s4sw">
            <ul>
                <li><a href="##">首页</a></li>
                <li><a href="##">推荐</a></li>
                <li><a href="##">最热</a></li>
                <li><a href="##">搜索</a></li>
                <li><a href="##">关于我</a></li>
            </ul>
        </div>
        <!--轮播图-->
        <div id="slideshow">
            <div class="slideshow_box">
            <div class="slideshow_left"></div>
            <div class="slideshow_center"><img src="../img/page3/lbt1.png" width="100%"/></div>
            <div class="slideshow_right"></div>
            </div>
        </div>
        <!--商品展示-->
        <div class="picture_presentation">
            <c:forEach begin="0" end="5" var="i">
                <div class="diviimage">
                    <ul>
                        <li><img src="../img/page3/kuzhi.png" width="100%" height="100%"/></li>
                        <li>name${i}</li>
                        <li><ins style="color: red">120${i}￥</ins> <del style="font-size:9px">200${i}￥</del></li>
                        <li>购买</li>
                        <li class="pitchUP">pitchUP</li>
                    </ul>
                </div>
            </c:forEach>
        </div>
        <!--分页-->
        <div id="paging">

            <ul>
                <li id="upPage" style="padding: 0px; height: 50px;background-color: #ca381a;" class="page"><img src="../img/page3/upPage.png" width="100%" height="100%"/></li>
                <li class="pitchOn">1</li>
                <li>2</li>
                <li>3</li>
                <li>4</li>
                <li>5</li>
                <li id="nextPage" style="padding: 0px; height: 50px;background-color: #ca381a;"><img src="../img/page3/nextPage.png" width="100%" height="100%"></li>
            </ul>
        </div>
    </div>


</body>
</html>
