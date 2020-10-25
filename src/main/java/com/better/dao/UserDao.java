package com.better.dao;

import com.better.domain.User;

import java.util.List;


public interface UserDao {
    List<User> findAllUser();
}
