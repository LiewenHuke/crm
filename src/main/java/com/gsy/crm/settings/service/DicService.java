package com.gsy.crm.settings.service;

import com.gsy.crm.settings.domain.DicValue;

import java.util.List;
import java.util.Map;

public interface DicService {
    Map<String, List<DicValue>> getALL();
}
