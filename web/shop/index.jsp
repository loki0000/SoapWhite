<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/4/27
  Time: 21:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>商店</title>
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
            <img src="../img/page3/lbt1.png" width="100%" height="100%"/>
        </div>
        <!--图片展示-->
        <div class="picture_presentation">
            <c:forEach begin="0" end="5" var="i">
                <div class="diviimage">

                </div>
            </c:forEach>
        </div>

    </div>

</body>
</html>
