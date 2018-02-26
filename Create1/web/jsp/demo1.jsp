<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/2/12
  Time: 14:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSP 语法</title>
</head>
<body>
    <%
        out.println("Hello word<br/>");
    %>

    <%
        out.println("你的IP地址："+request.getRemoteAddr());
    %>
    <br>

<%!
    int a=2;
    int b=3;
%>

<p>a+b=<%=a+b%></p>
</body>
</html>
