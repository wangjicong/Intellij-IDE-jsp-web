<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/2/25
  Time: 11:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>读取表单所有参数</title>
</head>
<body>
<h2>读取表单所有参数</h2>
<hr>
<form action="demo5_all_main.jsp" method="post" target="_blank">
    网站：<input type="text" name="name">
    <br>
    网址：<input type="text" name="url">
    <br>
    google: <input type="checkbox" name="google" checked="checked">
    <br>
    <input type="submit" value="提交">
</form>
</body>
</html>
