package com.mayiwo.mayikanshu.service;

import com.mayiwo.mayikanshu.dao.AdminDao;
import com.mayiwo.mayikanshu.model.Admin;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class AdminService {
    @Resource
    private AdminDao adminDao;
    //登陆
    public Admin login(String a_username,String a_password){
        return adminDao.login(a_username, a_password);

    }
    //管理员列表
    public List<Admin> getAdmins(){
        return adminDao.getAdmins();
    };

}

