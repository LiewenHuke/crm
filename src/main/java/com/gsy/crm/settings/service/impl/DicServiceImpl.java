package com.gsy.crm.settings.service.impl;

import com.gsy.crm.settings.dao.DicTypeDao;
import com.gsy.crm.settings.dao.DicValueDao;
import com.gsy.crm.settings.domain.DicType;
import com.gsy.crm.settings.domain.DicValue;
import com.gsy.crm.settings.service.DicService;
import com.gsy.crm.utils.SqlSessionUtil;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class DicServiceImpl implements DicService {

    private DicTypeDao dicTypeDao = SqlSessionUtil.getSqlSession().getMapper(DicTypeDao.class);
    private DicValueDao dicValueDao = SqlSessionUtil.getSqlSession().getMapper(DicValueDao.class);

    @Override
    public Map<String, List<DicValue>> getALL() {

        Map<String, List<DicValue>> map = new HashMap<>();

        //将字典类型列表取出
        List<DicType> dtList = dicTypeDao.getTypeList();

        //将字典类型列表遍历
        for (DicType dt:dtList){
            //取得每一种类型的字典类型编码
            String code = dt.getCode();
            //根据字典类型编码取得字典值表
            List<DicValue> dvList = dicValueDao.getListByCode(code);
            //存入map
            map.put(code,dvList);
        }

        return map;
    }
}
