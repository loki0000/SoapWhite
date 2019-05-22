<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/5/22
  Time: 20:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>upshop</title>
    <link type="text/css" rel="stylesheet" href="../css/shop/upshop.css"/>
</head>
<body>
    <%--1.标题栏--%>
    <div id="box_top">
        <div id="box_top_left">
            <span class="box_top_left_text">商品管理</span>
        </div>
        <div id="box_top_right">
            <ul>
                <li><input type="checkbox" value="checkall"/>全选</li>
                <li><input type="button" value="delete" class="box_top_right_button"></li>
                <li><input type="button" value="updata" class="box_top_right_button"></li>
            </ul>
        </div>
    </div>
    <%--2.显示商品--%>
    <div>

    </div>
</body>
</html>
