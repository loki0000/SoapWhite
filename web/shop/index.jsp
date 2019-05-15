<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%--
  Created by IntelliJ IDEA.
  UserAdministrator: Administrator
  Date: 2019/4/27
  Time: 21:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
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
            <div class="slideshow_center"><img src="${pageContext.request.contextPath}/img/page3/lbt1.png" width="100%"/></div>
            <div class="slideshow_right"></div>
            </div>
        </div>
        <!--商品展示-->
        <div class="picture_presentation">
            <c:forEach begin="1" end="${pagingBean.shopListlength}" var="i">
                <div class="diviimage">
                    <ul>
                        <li><img src="${pageContext.request.contextPath}/${pagingBean.shopAttritubes[i-1].shopImage}" width="100%" height="100%"/></li>
                        <li>${pagingBean.shopAttritubes[i-1].shopName}</li>
                        <li><ins style="color: red">${pagingBean.shopAttritubes[i-1].shopMoney}￥</ins> <del style="font-size:9px">${pagingBean.shopAttritubes[i-1].shopDescribe}</del></li>
                        <li>购买</li>
                        <li class="pitchUP">pitchUP</li>
                    </ul>
                </div>
            </c:forEach>

        </div>
        <!--分页-->
        <div id="paging">
            <ul>
                <%-- 判断当前页面是否是第一页 --%>
                <c:if test="${pagingBean.atPresentPageTree==1}">
                    <li id="upPage" style="padding: 0px; height: 50px;background-color: #ca381a;" class="page"><img src="${pageContext.request.contextPath}/img/page3/upPage.png" width="100%" height="100%"/></li>
                </c:if>
                <c:if test="${pagingBean.atPresentPageTree!=1}">
                    <li id="upPage" style="padding: 0px; height: 50px;background-color: #ca381a;" ><a href="${pageContext.request.contextPath}/showproduct?index=${pagingBean.atPresentPageTree-1}"><img src="${pageContext.request.contextPath}/img/page3/upPage.png" width="100%" height="100%"/></a></li>
                </c:if>

                    <%--//显示总全部的页数--%>
                <c:forEach begin="1" end="${pagingBean.numberOfTotalPages}" var="i">
                    <c:if test="${pagingBean.atPresentPageTree==i}">
                        <li class="pitchOn"><a href="javascript:void(0)">${i}</a></li>
                    </c:if>
                    <c:if test="${pagingBean.atPresentPageTree!=i}">
                        <a href="${pageContext.request.contextPath}/showproduct?index=${i}"><li>${i}</li></a>
                    </c:if>

                </c:forEach>

                <%-- 判断当前页面是否是最后一页 --%>
                <c:if test="${pagingBean.atPresentPageTree==pagingBean.numberOfTotalPages}">
                    <li id="nextPage" style="padding: 0px; height: 50px;background-color: #ca381a;" class="page"><img src="${pageContext.request.contextPath}/img/page3/nextPage.png" width="100%" height="100%"></li>
                </c:if>
                <c:if test="${pagingBean.atPresentPageTree!=pagingBean.numberOfTotalPages}">
                    <li id="nextPage" style="padding: 0px; height: 50px;background-color: #ca381a;" ><a href="${pageContext.request.contextPath}/showproduct?index=${pagingBean.atPresentPageTree+1}"><img src="${pageContext.request.contextPath}/img/page3/nextPage.png" width="100%" height="100%"></a></li>
                </c:if>



            </ul>
        </div>
    </div>


</body>
</html>
