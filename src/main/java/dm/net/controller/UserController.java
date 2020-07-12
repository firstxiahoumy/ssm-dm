package dm.net.controller;



import com.fasterxml.jackson.databind.ObjectMapper;
import dm.net.pojo.UserDate;
import dm.net.pojo.Users;
import dm.net.service.UserDateService;
import dm.net.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

/**
 * 用户层controller
 */
@Controller
//@RequestMapping("/user")
public class UserController {
    /**
     * 引入 service
     * 引入 serviceImpl
     */
    @Autowired
    @Qualifier("UserServiceImpl")
    private UserService userService;
    @Autowired
    @Qualifier("UserDateServiceImpl")
    private UserDateService userDateService;

    /**
     * 重定向到根目录
     * @return

//    @RequestMapping("/back")
//    public String back(){
//        return "redirect:/index.jsp";
//    }
*/

    /**
     * 登录时的
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
     *ajax login
     * @return
     */
    @RequestMapping("/toAjaxLogin")
    public String toAjaxLogin(){
        return "user/ajaxlogin";
    }
    @RequestMapping("/loginAction")
    public boolean loginAction(HttpSession session,String uEmail,String uPwd) {
        boolean checkLogin =  userService.checkLogin(uEmail, uPwd);
        System.out.println("uEmail:"+uEmail+",uPwd:"+uPwd);
        if(checkLogin)
        {
            session.setAttribute("uEmail", uEmail);
        }
        return checkLogin;
    }

    @RequestMapping("/ajaxLogin")
    public String ajaxLogin()
    {
        return "user/index";
    }

    @RequestMapping("logoutAction")
    public String logoutAction(HttpSession session) {
        session.invalidate();
        return "user/login";
    }

    /**
     * 页面操作
     * 登录后的操作
     * @return
     */
    @RequestMapping("/login")
    public String login(@ModelAttribute Users users , Model model , HttpSession session){
        if (userService.login(users)!=null){
            session.setAttribute("users",users);
            System.out.println("userInfo"+users);
            return "user/index";
        }
        System.out.println(users);
        model.addAttribute("msg","用户名或密码错误");
        return "user/login";
    }

    /**
     *
     * @param user
     * @return
     */
    @RequestMapping("/register")
    public String register(Users user){
        userService.register(user);
        System.out.println("注册成功");
        return "user/login";
    }
    @RequestMapping("/logout")
    public String logout(HttpServletRequest request){
        request.getSession().invalidate();
        return "user/register";
    }
    @RequestMapping("/exit")
    public String exit( Users user,HttpSession session){
        session.invalidate();
        return "user/login";
    }
    @RequestMapping("/forgot")
    public String forgot(Users user){
        userService.forgot(user);
        return "user/login";
    }
    @RequestMapping("/update/{uId}")
    public String getUsers(@PathVariable("uId") Integer id, HttpServletRequest request, HttpServletResponse response){

        return "user/selfpage";
    }

    /**
     * 根据用户email查询
     * @throws IOException
     */
    @RequestMapping("/judgeEmail/{uEmail}")
    public void findBrandByEmail(@PathVariable("uEmail") String uEmail,HttpServletRequest request,HttpServletResponse response) throws IOException {
        //初始化
        String message="";
        boolean judge=true;
        //查询是否有输入的用户名
        String rel = userService.judge(uEmail);
        //如果为null（没有该用户email）即可用
        if(rel == null){
            message="用户名可用";
        }else{
            judge=false;
            message="用户名已经存在，请使用其他用户名";
        }
        //System.out.println(message);
        //设置返回数据为utf-8
        response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        out.println("<response>");
        out.println("<passed>" + Boolean.toString(judge) + "</passed>");
        out.println("<message>" + message + "</message>");
        out.println("</response>");
    }

    /**
     * page
     * @return
     */
    @RequestMapping("/welcome")
    public String index(){
        return "user/index";
    }
    @RequestMapping("/home1")
    public String home1(){
        return "user/home1";
    }
    @RequestMapping("/home2")
    public String home2(){
        return "user/home2";
    }
    @RequestMapping("/select")
    public  String select(){
        return "user/select";
    }
    @RequestMapping("/install")
    public String install(){
        return "user/install";
    }
    @RequestMapping("/media")
    public String media(){
        return "user/media";
    }
    @RequestMapping("/directory")
    public String directory(){
        return "user/directory";
    }
    @RequestMapping("/compress")
    public String compress(){
        return "user/compress";
    }
    @RequestMapping("/retIn")
    public String retIn(){
        return "redirect:/home1";
    }


    /**
     * to record
     * @return
     */
    @RequestMapping("/toAddRecord")
    public String toAddRecord(){
        return "user/addrecord";
    }
    @RequestMapping("/toUpdateRecord/{dId}")
    public String toUpdateRecord(@PathVariable("dId") int id ,Model model ){
        UserDate userDate = userDateService.queryUserDateById(id);
        model.addAttribute("userDate",userDate);
        return "user/updaterecord";
    }


    /**
     *home
     *record
     */
    @RequestMapping("/addRecord")
    public String addRecord( UserDate userDate){
        System.out.println("增加了一条"+userDate+"记录");
        userDateService.addUerDate(userDate);
        return "redirect:/allRecord";
    }
    @RequestMapping("/updateRecord")
    public String updateRecord(UserDate userDate ){
        userDateService.updateUserDate(userDate);
        return "redirect:/allRecord";
    }
    @RequestMapping("/allRecord")
    public String allRecord( Model model){
        List<UserDate> list = userDateService.queryAllUserDate();
        model.addAttribute("list", list);
        return "user/allrecord";
    }
    @RequestMapping("/del/{dId}")
    public String del(@PathVariable("dId") int id){
        userDateService.deleteUserDateById(id);
        return "redirect:/allRecord";
    }
    @RequestMapping("/query")
    public String query(String ann,Model model ){
        List<UserDate> list = userDateService.queryUserDateByAnn(ann);
        if (list == null){
            list = userDateService.queryAllUserDate();
            model.addAttribute("error","Not Founded");
        }
        model.addAttribute("list",list);
        return "user/allrecord";
    }
    @RequestMapping("/ret")
    public String ret(){
        return "redirect:/allRecord";
    }

    /**
     * myInterceptor return
     * @return
     */
    @RequestMapping("/return")
    public String res(){
        return "return";
    }

}
