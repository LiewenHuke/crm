package com.gsy.crm.workbench.service.impl;

import com.gsy.crm.utils.SqlSessionUtil;
import com.gsy.crm.workbench.dao.TranDao;
import com.gsy.crm.workbench.dao.TranHistoryDao;
import com.gsy.crm.workbench.service.TranService;

public class TranServiceImpl implements TranService {
    private TranDao tranDao = SqlSessionUtil.getSqlSession().getMapper(TranDao.class);
    private TranHistoryDao tranHistoryDao = SqlSessionUtil.getSqlSession().getMapper(TranHistoryDao.class);
}
