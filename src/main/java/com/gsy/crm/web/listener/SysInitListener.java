package com.gsy.crm.web.listener;

import com.gsy.crm.settings.domain.DicValue;
import com.gsy.crm.settings.service.DicService;
import com.gsy.crm.settings.service.impl.DicServiceImpl;
import com.gsy.crm.utils.ServiceFactory;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import java.util.List;
import java.util.Map;
import java.util.Set;

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

    }

}
