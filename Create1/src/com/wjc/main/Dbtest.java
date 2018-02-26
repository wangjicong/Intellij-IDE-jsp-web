package com.wjc.main;



import java.net.URLEncoder;
import java.sql.*;

public class Dbtest {
    //mysql驱动包名
    private static final String DRIVER_NAME = "com.mysql.jdbc.Driver";
    //数据库连接地址
    private static final String URL = "jdbc:mysql://localhost:3306/db_create1?useUnicode=true&characterEncoding=utf-8";
    //用户名
    private static final String USER_NAME = "root";
    //密码
    private static final String PASSWORD = "root";


    public static void main(String[] args) {
        Connection connection = null;

        try {
            //加载mysql的驱动类
            Class.forName(DRIVER_NAME);
            //获取数据库连接
            connection = DriverManager.getConnection(URL,USER_NAME,PASSWORD);

            //mysql查询语句
            String sql = "SELECT * FROM websites";
            PreparedStatement prst = connection.prepareCall(sql);

            //结果集
            ResultSet rs = prst.executeQuery();

            while(rs.next()){
                System.out.println("info "+rs.getString("name"));
            }
            rs.close();
            prst.close();
        }catch (Exception e){
            e.printStackTrace();
        } finally {
            if (connection != null) {
                try {
                    connection.close();
                }catch (SQLException e){
                    e.printStackTrace();
                }
            }
        }

    }
}
