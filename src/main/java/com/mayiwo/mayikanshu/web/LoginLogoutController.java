package com.mayiwo.mayikanshu.web;

import com.mayiwo.mayikanshu.model.Admin;
import com.mayiwo.mayikanshu.model.Book;
import com.mayiwo.mayikanshu.service.AdminService;
import com.mayiwo.mayikanshu.service.BookService;
import com.mayiwo.mayikanshu.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping(value = "/admin")
public class LoginLogoutController {

    @Resource
    private AdminService adminService;
    @Resource
    private BookService bookService;
    @Resource
    private UserService userService;

    //登陆
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(String a_user, String a_password, HttpSession session) {
        Admin admin = adminService.login(a_user, a_password);
        if (admin != null) {//如果对象不为null,表示登录成功
            session.setAttribute("admin", admin);
            return "redirect:/admin/index";
        } else {//如果登录失败
            return "jsp/mayibackstage/login.jsp";
        }
    }

    //退出
    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout(HttpSession session) {
        session.removeAttribute("admin");
        return "jsp/mayibackstage/login.jsp";
    }

    //跳转至后台首页or页面刷新
    @RequestMapping(value = "/index")
    public String index(HttpSession session, HttpServletRequest request) {

        int yesbook = bookService.Yesterday();
        session.setAttribute("yesbook", yesbook);

        int yesuser = userService.Yesterday();
        session.setAttribute("yesuser", yesuser);

        List<Book> clickbook = bookService.clickbook();
        session.setAttribute("clickbook", clickbook);

        return "jsp/mayibackstage/index.jsp";
    }

}
