package com.gsy.crm.workbench.dao;

import com.gsy.crm.workbench.domain.Clue;

public interface ClueDao {


    int save(Clue clue);

    Clue getById(String id);
}
