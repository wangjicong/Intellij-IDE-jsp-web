<%@ page import="java.net.URLEncoder" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/2/25
  Time: 16:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSP Cookit main</title>
    <%
        // 编码，解决中文乱码
        String str = URLEncoder.encode(request.getParameter("name"),"utf-8");
        // 设置 name 和 url cookie
        Cookie name = new Cookie("name",
                str);
        Cookie url = new Cookie("url",
                request.getParameter("url"));

        // 设置cookie过期时间为24小时。
        name.setMaxAge(60*60*24);
        url.setMaxAge(60*60*24);

        // 在响应头部添加cookie
        response.addCookie( name );
        response.addCookie( url );
    %>
</head>
<body>
<h1>设置 Cookie</h1>

<ul>
    <li><p><b>网站名:</b>
        <%= request.getParameter("name")%>
    </p></li>
    <li><p><b>网址:</b>
        <%= request.getParameter("url")%>
    </p></li>
</ul>
<hr>
<a href="demo7_getcookit.jsp">获取Cookit</a>
</body>
</body>
</html>
