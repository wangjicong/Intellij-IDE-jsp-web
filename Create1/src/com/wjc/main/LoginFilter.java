package com.wjc.main;

import javax.servlet.*;
import java.io.IOException;

public class LoginFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        //获取初始换参数
        String site = filterConfig.getInitParameter("Site");
        //输出初始化参数
        System.out.println("网络名称:" + site);

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        //输出站点名称
        System.out.println("站点网址：www.baidu.com");
        //把请求返回过滤连
        filterChain.doFilter(servletRequest,servletResponse);
    }

    @Override
    public void destroy() {
        /*在Filter 实例被web容器从服务器移除之前调用*/
    }
}
