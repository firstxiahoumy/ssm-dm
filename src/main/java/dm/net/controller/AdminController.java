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


    /**
     * 页面跳转
     * @return
     */
    @RequestMapping("/index")
    public String index(){
        return "admin/index";
    }
    @RequestMapping("/home1")
    public String home1(){
        return "admin/home1";
    }
    @RequestMapping("/home2")
    public String home2(){
        return "admin/home2";
    }
    @RequestMapping("/addUser")
    public String addUser(){
        return "admin/adduser";
    }
    @RequestMapping("/allUser")
    public String allUser(){
        return "admin/alluser";
    }
    @RequestMapping("/updateUser")
    public String updateUser(){
        return "admin/updateuser";
    }
    @RequestMapping("/updateAdmin")
    public String updateAdmin(){
        return "admin/updateadmin";
    }
    @RequestMapping("/addAdmin")
    public String addAdmin(){
        return "admin/addadmin";
    }
    @RequestMapping("/allAdmin")
    public String allAdmin(){
        return "admin/alladmin";
    }

    /**
     * test
     * @return
     */
    @RequestMapping("/test")
    public String test(){
        return "admin/test";
    }
//    @RequestMapping("/index")
//    public String allAdmin(){
//        return "admin/index";
//    }
//    @RequestMapping("/index")
//    public String allAdmin(){
//        return "admin/index";
//    }
//    @RequestMapping("/index")
//    public String allAdmin(){
//        return "admin/index";
//    }
//    @RequestMapping("/index")
//    public String allAdmin(){
//        return "admin/index";
//    }
//    @RequestMapping("/index")
//    public String allAdmin(){
//        return "admin/index";
//    }
//    @RequestMapping("/index")
//    public String allAdmin(){
//        return "admin/index";
//    }

}
