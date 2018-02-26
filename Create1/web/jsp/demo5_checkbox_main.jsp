<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/2/25
  Time: 11:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>checkbox</title>
</head>
<body>
<h2>checkbox</h2>
<hr>
<p>google是否选择：<%=request.getParameter("google")%></p>
<br>
<p>baidu是否选择:<%=request.getParameter("baidu")%></p>
<br>
<p>taobao是否选择:<%=request.getParameter("taobao")%></p>
</body>
</html>
