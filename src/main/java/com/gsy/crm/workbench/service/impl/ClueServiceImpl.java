package com.gsy.crm.workbench.service.impl;

import com.gsy.crm.utils.SqlSessionUtil;
import com.gsy.crm.workbench.dao.ClueActivityRelationDao;
import com.gsy.crm.workbench.dao.ClueDao;
import com.gsy.crm.workbench.domain.Clue;
import com.gsy.crm.workbench.service.ClueService;

public class ClueServiceImpl implements ClueService {

    private ClueDao clueDao = SqlSessionUtil.getSqlSession().getMapper(ClueDao.class);
    private ClueActivityRelationDao clueActivityRelationDao = SqlSessionUtil.getSqlSession().getMapper(ClueActivityRelationDao.class);

    @Override
    public boolean save(Clue clue) {

        boolean flag = true;

        int count = clueDao.save(clue);
        if (count != 1){
            flag = false;
        }

        return flag;
    }

    @Override
    public Clue detail(String id) {

        Clue clue = clueDao.getById(id);

        return clue;
    }

    @Override
    public boolean unbund(String id) {

        boolean flag = true;
        int count =clueActivityRelationDao.unbund(id);
        if (count != 1){
            flag = false;
        }

        return flag;
    }
}
