<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/2/25
  Time: 11:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>POST</title>
</head>
<body>
<h2>POST</h2>
<%
    // 解决中文乱码的问题
    String name = new String((request.getParameter("name")).getBytes("ISO-8859-1"),"UTF-8");
%>
<%=name%>
<br>
<%= request.getParameter("url")%>
</body>
</html>
