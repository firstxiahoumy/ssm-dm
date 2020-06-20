package dm.net.controller;


import dm.net.service.Impl.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 用户层controller
 */
@Controller
//@RequestMapping("/user")
public class UserController {
    @Autowired
    @Qualifier("UserServiceImpl")
    private UserServiceImpl userService;
    /**
     * 重定向到根目录
     * @return
     */
//    @RequestMapping("/back")
//    public String back(){
//        return "redirect:/index.jsp";
//    }


    /**
     * 页面跳转
     * @return
     */
    @RequestMapping("/toLogin")
    public String toLogin(){
        return "user/login";
    }
    @RequestMapping("/toRegister")
    public String toRegister(){
        return "user/register";
    }
    @RequestMapping("/toForgot")
    public String toForgot(){
        return "user/forgot";
    }


    /**
     * 页面操作
     * @return
     */
    @RequestMapping("/login")
    public String login(){

        return "user/index";
    }
    @RequestMapping("/register")
    public String register(){

        return "user/login";
    }
    @RequestMapping("/forgot")
    public String forgot(){

        return "user/login";
    }
    @RequestMapping("/update")
    public String update(){
        return "user/selfpage";
    }
}
