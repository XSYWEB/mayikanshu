package com.mayiwo.mayikanshu.dao;

import com.mayiwo.mayikanshu.model.Admin;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface AdminDao {
    // 登陆
    Admin login(@Param(value = "a_user") String a_user, @Param(value = "a_password") String a_password);
    // 管理员列表
    List<Admin> getAdmins();
    //添加管理员
    int addAdmin(Admin admin);
    /*
         * 根据id获取指定的值
         * */
    Admin getAdmin(Integer id);
    /*
     * 修改信息
     * */
    int updateAdmin(Admin admin);
}
