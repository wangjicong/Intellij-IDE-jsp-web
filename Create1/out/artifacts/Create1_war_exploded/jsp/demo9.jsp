<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/2/25
  Time: 17:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSP 文件上传</title>
</head>
<body>
<h2>文件上传</h2>
<hr>
<form action="/UploadServlet" method="post" enctype="multipart/form-data">
    选择一个文件
    <br>
    <br>
    <input type="file" name="uploadFile">
    <br>
    <br>
    <input type="submit" value="提交">
</form>
</body>
</html>
