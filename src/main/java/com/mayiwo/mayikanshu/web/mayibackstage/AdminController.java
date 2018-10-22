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
    /*
         * 根据id获取指定类型的值
         * 修改日期 2018514
         * @author S6203-1-08
         */
    @RequestMapping(value = "/toUpdate")
    public String toUpdate(HttpServletRequest request, Integer id) {
        request.setAttribute("admin", adminService.getAdmin(id));
        return "jsp/mayibackstage/adminupdate.jsp";
    }
    /*
         * 修改用户信息
         * 修改日期 20180605
         * @author S6203-1-08
         */
    @RequestMapping(value = "/doUpdate", method = RequestMethod.POST)
    public String doUpdate(HttpServletRequest request, Admin admin) {
        adminService.updateAdmin(admin);
        request.setAttribute("massage", "修改成功");
        request.setAttribute("admin", adminService.getAdmin(admin.getId()));
        //执行产品编辑
        return "mayibackstage/admin/toUpdate";

    }
}
