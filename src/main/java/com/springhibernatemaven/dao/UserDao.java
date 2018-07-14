/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.springhibernatemaven.dao;

import com.springhibernatemaven.model.User;
import java.util.List;

/**
 *
 * @author rofiq
 */
public interface UserDao {
    
    public List<User> getUsers();
    public User getUser(Integer id);
    public User saveUser(User user);
    public User updateUser(User user);
    public User deleteUser(User user);
    
}
