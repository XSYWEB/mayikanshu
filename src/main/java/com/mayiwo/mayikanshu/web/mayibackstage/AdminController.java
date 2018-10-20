package com.mayiwo.mayikanshu.web.mayibackstage;

import com.mayiwo.mayikanshu.model.Admin;
import com.mayiwo.mayikanshu.service.AdminService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping(value = "/mayibackstage/admin")
public class AdminController {

    @Resource
    private AdminService adminService;
    private Admin admin;

    //管理员列表
    @RequestMapping(value = "/adminlist" ,method= RequestMethod.GET)
    public String getAdmins(HttpServletRequest request){
        List<Admin> adminList=adminService.getAdmins();
        request.setAttribute("adminList",adminList);
        return "jsp/mayibackstage/admin.jsp";
    }
    //添加管理员
    @RequestMapping(value = "/addAdmin", method = RequestMethod.POST)
    public String addAdmin(Admin admin, HttpServletRequest request) {
        adminService.addAdmin(admin);
        return "jsp/mayibackstage/adminadd.jsp";
    }
}
