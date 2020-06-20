package dm.net.controller;


import dm.net.service.Impl.AdminServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 管理员 controller
 */
@Controller
@RequestMapping("/admin")
public class AdminController {
    @Autowired
    @Qualifier("AdminServiceImpl")
    private AdminServiceImpl adminService;


    /**
     * 页面跳转
     * @return
     */
    @RequestMapping("/toLogin")
    public String toLogin(){
        return "admin/login";
    }
    @RequestMapping("/toRegister")
    public String toRegister(){
        return "admin/register";
    }
    @RequestMapping("/toForgot")
    public String toForgot(){
        return "admin/forgot";
    }
//    @RequestMapping("/toUpdate")
//    public String toUpdate(){
//        return "admin/selfpage";
//    }


    /**
     * 页面操作
     * @return
     */
    @RequestMapping("/login")
    public String login(){

        return "admin/index";
    }
    @RequestMapping("/register")
    public String register(){

        return "admin/login";
    }
    @RequestMapping("/forgot")
    public String forgot(){

        return "admin/login";
    }
    @RequestMapping("/update")
    public String update(){
        return "admin/selfpage";
    }
}
