<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/5/3
  Time: 16:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理员登陆</title>
    <link rel="icon" href="../img/favicon.ico" type="image/x-icon" />
    <link rel="shortcut icon" href="../img/favicon.ico" type="image/x-icon" />
    <link rel="bookmark" href="../img/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" type="text/css" href="../css/shop/shopBackPage.css"/>
</head>
<body>
    <div id="box">
        <div id="box-outer">
            <form action="${pageContext.request.contextPath}/adiministrator" method="post">
                <table>
                    <tr>
                        <td>管理员：</td>
                        <td> <input type="text" name="adiministrator" class="textbox"/><br/></td>
                    </tr>
                    <tr>
                        <td>密  码：</td>
                        <td> <input type="text" name="password" class="textbox"><br/></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td> <input type="submit" value="登陆" class="textbox"></td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
</body>
</html>
