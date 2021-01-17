package com.gsy.crm.workbench.service;

import com.gsy.crm.workbench.domain.Clue;

public interface ClueService {
    boolean save(Clue clue);

    Clue detail(String id);

    boolean unbund(String id);
}
