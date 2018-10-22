package com.mayiwo.mayikanshu.web.mayibackstage;

import com.mayiwo.mayikanshu.model.User;
import com.mayiwo.mayikanshu.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping(value = "/mayibackstage/user")
public class UserController {

        @Resource
        private UserService userService;

        //管理员列表
        @RequestMapping(value = "/userlist" ,method= RequestMethod.GET)
        public String getUsers(HttpServletRequest request){
            List<User> userList=userService.getUsers();
            request.setAttribute("userList",userList);
            return "jsp/mayibackstage/usermanage.jsp";
        }

    /*
         * 根据id获取指定类型的值
         * 修改日期 2018514
         * @author S6203-1-08
         */
    @RequestMapping(value = "/toUpdate", method = RequestMethod.GET)
    public String toUpdate(HttpServletRequest request, Integer id) {

        request.setAttribute("user", userService.getUser(id));
        return "jsp/mayibackstage/userupdate.jsp";
    }
    /*
         * 修改用户信息
         * 修改日期 20180605
         * @author S6203-1-08
         */
    @RequestMapping(value = "/doUpdate", method = RequestMethod.POST)
    public String doUpdate(HttpServletRequest request, User user) {
        userService.update(user);
        request.setAttribute("massage", "修改成功");
        request.setAttribute("user", userService.getUser(user.getId()));
        //执行产品编辑
        return "jsp/mayibackstage/userupdate.jsp";

    }

    /**
     * 跳转
     * @param request
     * @return
     */
    @RequestMapping(value = "/toAddUser", method = RequestMethod.GET)
    public String toAddUser(HttpServletRequest request) {

        return "jsp/mayibackstage/useradd.jsp";
    }
    /*
     * 添加用户
     *
     * @author S6203-1-08
     */
    @RequestMapping(value = "/doAddUser", method = RequestMethod.POST)
    public String doAddUser(HttpServletRequest request,User user) {

        Boolean status = userService.addUser(user);
        if (status) {
            request.setAttribute("massage", "添加成功");
        }
        return "jsp/mayibackstage/useradd.jsp";
    }
    /*
	 * 删除用户
	 */
    @RequestMapping(value = "/deleteUser", method = RequestMethod.GET)
    public String deleteUser(Integer id,HttpServletRequest request) {
        userService.deleteUser(id);
        return "mayibackstage/user/userlist";
    }
}
