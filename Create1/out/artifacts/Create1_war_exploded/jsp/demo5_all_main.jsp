<%@ page import="java.util.Enumeration" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/2/25
  Time: 11:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>读取提交的所有参数</title>
</head>
<body>
<h2>读取提交的所有参数</h2>
<hr>
<%
    Enumeration enumeration = request.getParameterNames();
    while (enumeration.hasMoreElements()){
        String paramName = (String) enumeration.nextElement();
        String paramValue = request.getParameter(paramName);
        out.println("Name:"+paramName+"  Value:"+paramValue+"<br>");
    }
%>
</body>
</html>
