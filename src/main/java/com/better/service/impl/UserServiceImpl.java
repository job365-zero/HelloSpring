package com.better.service.impl;

import com.better.dao.UserDao;
import com.better.domain.User;
import com.better.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;
    @Override
    public List<User> findAllUser() {
        return userDao.findAllUser();
    }
}
