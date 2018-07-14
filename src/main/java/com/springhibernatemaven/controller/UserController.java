/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.springhibernatemaven.controller;

import com.springhibernatemaven.exception.NotFoundException;
import com.springhibernatemaven.model.User;
import com.springhibernatemaven.service.UserService;
import java.util.List;
import javax.servlet.http.HttpServletResponse;
import net.sf.jasperreports.engine.JRDataSource;
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author rofiq
 */
public class UserController {
    
    
    @Autowired
    UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }
    
    @RequestMapping(value = "/",method = RequestMethod.GET)
    public String index(Model model){
        model.addAttribute("users", userService.getUsers());
        return "index";
    }
    
    @RequestMapping(value = "/user",method = RequestMethod.GET)
    public String add(Model model){
        model.addAttribute("user", new User());
        return "user";
    }
    
    @RequestMapping(value = "/tambah",method = RequestMethod.GET)
    public String addUser(Model model){
        model.addAttribute("user", new User());
        return "tambah";
    }
    
    @RequestMapping(value = "tambah",method = RequestMethod.POST)
    public String adding(@ModelAttribute("user") User user){
        userService.saveUser(user);
        return "redirect:/";
    }
    
    @RequestMapping(value = "edit/{id}",method = RequestMethod.GET)
    public String edit(Model model,@PathVariable("id") Integer id){
        User user=userService.getUser(id);
        if(user==null){
            throw new NotFoundException();
        }
        model.addAttribute("user", user);
        return "edit";
    }
    
    @RequestMapping(value = "edit",method = RequestMethod.POST)
    public String editing(@ModelAttribute("user") User user){
        userService.updateUser(user);
        return "redirect:/";
    }
    
    @RequestMapping(value = "delete/{id}",method = RequestMethod.GET)
    public String deleting(@PathVariable("id") Integer id){
        User user=userService.getUser(id);
        if(user==null){
            throw new NotFoundException();
        }
        userService.deleteUser(user);
        return "redirect:/";
    }
    
    @RequestMapping(value = "pdf",method = RequestMethod.GET)
    public String getPdfReport(Model model, HttpServletResponse response){        
        List<User> users=userService.getUsers();
        JRDataSource dataSource=new JRBeanCollectionDataSource(users);
        
        model.addAttribute("dataSource", dataSource);
        return "pdfReport";
    }
    
    @RequestMapping(value = "xls",method = RequestMethod.GET)
    public String getXlsReport(Model model, HttpServletResponse response){
        List<User> users=userService.getUsers();
        JRDataSource dataSource=new JRBeanCollectionDataSource(users);
        
        model.addAttribute("dataSource", dataSource);
        return "xlsReport";
    }
}
