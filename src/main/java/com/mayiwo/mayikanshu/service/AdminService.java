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

    //添加管理员
    public Boolean addAdmin(Admin admin) {
        Boolean status = false;
        int i = adminDao.addAdmin(admin);
        if (i > 0) {
            status = true;
        }
        return status;
    }
    /*
	 * 根据id获取指定类型的值
	 * 20180604
	 * @
	 */
    public Admin getAdmin(Integer id) {
        Admin user=null;
        if(id!=null){
            user=adminDao.getAdmin(id);
        }
        return user;

    }
    /*
	 * 修改用户信息
	 */
    public void updateAdmin(Admin admin) {

        adminDao.updateAdmin(admin);
    }
}

