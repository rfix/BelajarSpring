/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.springhibernatemaven.service;

import com.springhibernatemaven.dao.UserDao;
import com.springhibernatemaven.model.User;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author rofiq
 */
public class UserServiceImpl implements UserService{
    
    @Autowired
    UserDao userDao;
    
    public void SetUser(UserDao userDao){
        this.userDao = userDao;
    }

    @Override
    public List<User> getUsers() {
        return userDao.getUsers();
    }

    @Override
    public User getUser(Integer id) {
        return userDao.getUser(id);
    }

    @Override
    public User saveUser(User user) {
        return userDao.saveUser(user);
    }

    @Override
    public User updateUser(User user) {
        return userDao.updateUser(user);
    }

    @Override
    public User deleteUser(User user) {
        return userDao.deleteUser(user);
    }
    
}
