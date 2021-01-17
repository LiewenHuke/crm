package com.gsy.crm.web.filter;

import javax.servlet.*;
import java.io.IOException;

public class EncodingFilter implements Filter {
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain filterChain) throws IOException, ServletException {

        System.out.println("进入到过滤字符编码的过滤器");

        //过滤post请求中文参数
        request.setCharacterEncoding("UTF-8");
        //过滤响应流中文乱码的问题
        response.setContentType("text/html;charset=utf-8");

        //请求放行
        filterChain.doFilter(request,response);
    }
}
