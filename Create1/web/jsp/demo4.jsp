<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/2/25
  Time: 10:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSP HTTP 状态码</title>
</head>
<body>
<h2>HTTP状态码</h2>
<hr>
<%
    //设置代码错误，并说明原因
    response.sendError(407,"show error from service");
%>
</body>
</html>
