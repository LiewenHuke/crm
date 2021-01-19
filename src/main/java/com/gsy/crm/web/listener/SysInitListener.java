package com.gsy.crm.web.listener;

import com.gsy.crm.settings.domain.DicValue;
import com.gsy.crm.settings.service.DicService;
import com.gsy.crm.settings.service.impl.DicServiceImpl;
import com.gsy.crm.utils.ServiceFactory;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import java.util.*;

public class SysInitListener implements ServletContextListener {

    /*
        event：该参数能够取得监听的对象
     */
    @Override
    public void contextInitialized(ServletContextEvent event) {

        System.out.println("服务器缓存处理数据字典开始");

        ServletContext application = event.getServletContext();

        //取数据字典
        DicService dicService = (DicService) ServiceFactory.getService(new DicServiceImpl());
        /*
            应该管业务层要7个list（把值按类型分为7组）
         */
        Map<String, List<DicValue>> map = dicService.getALL();
        //数据字典存入上下文域对象
        Set<String> set = map.keySet();
        for (String key:set){
            application.setAttribute(key,map.get(key));

        }
        System.out.println("服务器缓存处理数据字典结束");

        //---------------------------------------------------------------------------------------
        //数据字典处理完毕后，处理Stage2Possibility.properties文件
        /*
            处理Stage2Possibility.properties的步骤
                解析该文件，将该属性文件中关系处理成map

                保存到服务器缓存中，用上下文域对象
         */
        //解析properties文件
        Map<String,String> pMap = new HashMap<>();

        ResourceBundle bundle = ResourceBundle.getBundle("Stage2Possibility");

        Enumeration<String> e= bundle.getKeys();

        while (e.hasMoreElements()){
            //阶段
            String key = e.nextElement();
            //可能性
            String value = bundle.getString(key);
            pMap.put(key,value);
        }

        //将pMap保存到服务器缓存中
        application.setAttribute("pMap",pMap);

    }

}
