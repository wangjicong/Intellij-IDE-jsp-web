<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/2/25
  Time: 11:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>GET</title>
</head>
<body>
<h2>get</h2>
<p> 网站名：<%=request.getParameter("name")%></p>
<p>网址：<%=request.getParameter("url")%></p>
</body>
</html>
