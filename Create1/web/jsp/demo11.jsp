<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/2/25
  Time: 20:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>JSP 连接数据库</title>
</head>
<body>
<%
    //驱动程序名称
    String diverName = "com.mysql.jdbc.Driver";
    //数据库用户名
    String userName = "root";
    //密码
    String userPasswd = "root";
    //数据库名
    String dbName = "db_create1";
    //表名
    String tableName = "websites";

    //连接字符串
    String url = "jdbc:mysql://localhost:3306/" + dbName + "?user=" + userName + "&password=" + userPasswd;
    Class.forName(diverName).newInstance();
    Connection connection = DriverManager.getConnection(url);
    try {
        Statement statement = connection.createStatement();
        String sql = "SELECT * FROM " + tableName;
        ResultSet rs = statement.executeQuery(sql);

        while (rs.next()) {
            System.out.println("name = " + new String(rs.getString("name").toString().getBytes("UTF-8")));
        }
        rs.close();
        statement.close();
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        if (connection!=null){
            connection.close();
        }
    }
%>
</body>
</html>
