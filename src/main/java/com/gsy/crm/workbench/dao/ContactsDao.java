package com.gsy.crm.workbench.dao;

import com.gsy.crm.workbench.domain.Contacts;

public interface ContactsDao {

    int c(Contacts con);

    int save(Contacts con);
}
