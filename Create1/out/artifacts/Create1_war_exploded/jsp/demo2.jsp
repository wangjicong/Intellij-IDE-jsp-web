<%@ page import="java.util.Enumeration" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/2/12
  Time: 14:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSP 命令</title>
</head>
<body>
<h2>Http 头部请求信息</h2>
<hr>
<table width="100%" border="1" align="center">
    <tr>
        <th>HeaderName</th>
        <th>HeaderValue</th>
    </tr>

<%
    Enumeration  headerNames = request.getHeaderNames();
    while(headerNames.hasMoreElements()){
        String paramName = (String) headerNames.nextElement();
        out.println("<tr><td>"+paramName+"</td>");
        String paramValue = request.getHeader(paramName);
        out.println("<td>"+paramValue+"</td></tr>");
    }
%>
</table>
</body>
</html>
