package com.mayiwo.mayikanshu.service;

import com.mayiwo.mayikanshu.dao.UserDao;
import com.mayiwo.mayikanshu.model.User;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

@Service
public class UserService {
    @Resource
    private UserDao userDao;
    //注册
    public List<User> getUsers() {
        return userDao.getUsers();
    }
    /*
	 * 根据id获取指定类型的值
	 * 20180604
	 * @
	 */
    public User getUser(Integer id) {
        User user=null;
        if(id!=null){
            user=userDao.getUser(id);
        }
        return user;

    }
    /*
	 * 修改用户信息
	 */
    public void update(User user) {

        userDao.update(user);
    }
    /*
         * 添加用户
         */
    public Boolean addUser(User user) {

        boolean status = false;
        user.setU_create_time(new Date());
        int i = userDao.addUser(user);
        if (i > 0) {
            status = true;
        }

        return status;
    }
        /*
         * 删除用户
         */
    public void deleteUser(Integer id) {
        Integer number=userDao.deleteUser(id);
        if(number==0){
            userDao.deleteUser(id);
        }
    }

    //昨日新增书籍
    public int Yesterday(){
        int yes= userDao.Yesterday();
        return yes;
    };
}

