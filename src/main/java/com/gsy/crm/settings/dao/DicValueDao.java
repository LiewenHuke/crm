package com.gsy.crm.settings.dao;

import com.gsy.crm.settings.domain.DicValue;

import java.util.List;

public interface DicValueDao {
    List<DicValue> getListByCode(String code);
}
