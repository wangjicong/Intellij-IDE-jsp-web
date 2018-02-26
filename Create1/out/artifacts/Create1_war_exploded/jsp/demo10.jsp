<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/2/25
  Time: 19:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSP 页面重定向</title>
</head>
<body>
<%
    //重定到新地址
    String site = new String("http://baidu.com");
    response.setStatus(response.SC_MOVED_TEMPORARILY);
    response.setHeader("Location",site);
%>
</body>
</html>
