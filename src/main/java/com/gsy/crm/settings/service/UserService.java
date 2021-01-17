package com.gsy.crm.settings.service;

import com.gsy.crm.exception.LoginException;
import com.gsy.crm.settings.domain.User;

import java.util.List;

public interface UserService {
    User login(String loginAct, String loginPwd, String ip) throws LoginException;

    List<User> getUserList();
}
