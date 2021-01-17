package com.gsy.crm.settings.web.controller;

import com.gsy.crm.settings.domain.User;
import com.gsy.crm.settings.service.UserService;
import com.gsy.crm.settings.service.impl.UserServiceImpl;
import com.gsy.crm.utils.MD5Util;
import com.gsy.crm.utils.PrintJson;
import com.gsy.crm.utils.ServiceFactory;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

public class UserController extends HttpServlet {
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        System.out.println("进入到用户控制器");

        String path = request.getServletPath();
        if ("/settings/user/login.do".equals(path)){
            //xxx(request,response)
            login(request,response);
        }else if ("/settings/user/xxx.do".equals(path)){

        }
    }

    private void login(HttpServletRequest request, HttpServletResponse response) {

        System.out.println("进入到验证登录的操作");

        String loginAct = request.getParameter("loginAct");
        String loginPwd = request.getParameter("loginPwd");
        //将密码转换为md5密文
        loginPwd = MD5Util.getMD5(loginPwd);
        //接收浏览器端的ip
        String ip = request.getRemoteAddr();
        System.out.println("----------ip:"+ip);

        //业务层开发，统一用代理类形态的接口对象
        UserService us = (UserService) ServiceFactory.getService(new UserServiceImpl());

        try{

            User user = us.login(loginAct,loginPwd,ip);

            request.getSession().setAttribute("user",user);
            //如果程序执行到此处，说明业务层没有为controller抛出任何异常
            //表示登录成功
            /*

                {"success":true}

            */
            PrintJson.printJsonFlag(response,true);

        }catch (Exception e){
            e.printStackTrace();
            //一旦程序执行了catch块的信息，说明业务层为我们验证登录失败，为controller抛出了异常
            //表示登录失败
            /*

                {"success":false,"msg":?}

            */
            String msg = e.getMessage();
            /*
                需要为ajax请求提供多项信息

                可以有两种手段来处理：
                    1、将多项信息打包成map，将map解析为json串
                    2、创建一个VO，
                        private boolean success;
                        private String msg;
                  如果对于展现的信息将来还会大量的使用，创建一个VO类比较方便
             */
            Map<String,Object> map = new HashMap<>();
            map.put("success",false);
            map.put("msg",msg);
            PrintJson.printJsonObj(response,map);
        }

    }
}
