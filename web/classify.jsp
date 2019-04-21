<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/4/14
  Time: 16:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<link rel="icon" href="img/favicon.ico" type="image/x-icon" />
<link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon" />
<link rel="bookmark" href="img/favicon.ico" type="image/x-icon" />
<script type="text/javascript" src="js/classify.js"></script>
<link rel="stylesheet" type="text/css" href="css/classify.css"/>
<html>
<head>
    <title>分类</title>

</head>
<body>
    <%
        String str[]=new String []{"个 人 信 息","动 物","美 食","生 活","音 乐","游 戏","摄 影",
                "二 次 元 动 漫","电 影","星 座 轮 盘","商 店","语 音 房"};
        application.setAttribute("str",str);
    %>
    <div id="box">
        <c:forEach begin="1" end="12" var="i">
        <div class="flip-container">
            <div class="filpper">
                <div class="front">
                    <img src="img/page2/tp${i}_2.png" width="100%" height="100%"/>
                </div>
                <div class="back">
                    <img src="img/page2/tp${i}.png" width="100%" height="100%"/>
                    <div class="text" align="" >
                        <a href="##" class="text-a">${str[i-1]}</a>
                    </div>
                </div>
            </div>
        </div>
        </c:forEach>
    </div>
</body>
</html>
