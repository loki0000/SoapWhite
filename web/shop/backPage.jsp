<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/5/2
  Time: 11:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>商品后台管理</title>
    <link rel="stylesheet" type="text/css" href="../css/shop/backPage.css"/>
    <link rel="icon" href="../favicon.ico" type="image/x-icon" />
    <link rel="shortcut icon" href="../img/favicon.ico" type="image/x-icon" />
    <link rel="bookmark" href="../img/favicon.ico" type="image/x-icon" />
    <script type="text/javascript" src="../js/shop/backPage.js"></script>
    <script src="http://libs.baidu.com/jquery/2.1.4/jquery.min.js"></script>
    <script type="text/javascript">
        function page() {
            $("#iframe").attr("src","index.jsp")
        }
        function page2() {
            $("#iframe").attr("src","backPage.jsp")
        }
    </script>

</head>
<body>
    <div id="pagename">
        <span>商品后台管理</span>
    </div>
    <div id="leftpage">
        <iframe width="100%" height="100%" src="../plug-in/tree/index.jsp"></iframe>
    </div>
    <div id="rightpage">
        <iframe id="iframe" width="100%" height="100%" src="dafd.html"></iframe>
    </div>

</body>
</html>
