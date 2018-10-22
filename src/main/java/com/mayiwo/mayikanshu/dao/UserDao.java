package com.mayiwo.mayikanshu.dao;

import com.mayiwo.mayikanshu.model.User;

import java.util.List;

public interface UserDao {

     List<User> getUsers();
     /*
               * 根据id获取指定的值
               * */
     User getUser(Integer id);
     /*
      * 修改信息
      * */
     int update(User user);
     /*
       * 添加用户
       * */
     int addUser(User user);
     /*
	  * 删除用户
	  */
     int deleteUser(Integer id);
     //昨日新增书籍
     int Yesterday();
}
