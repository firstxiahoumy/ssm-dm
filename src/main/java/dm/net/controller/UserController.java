package dm.net.controller;


import com.github.pagehelper.PageInfo;
import com.google.code.kaptcha.Constants;
import dm.net.pojo.LoginLog;
import dm.net.pojo.UserDate;
import dm.net.pojo.Users;
import dm.net.service.LoginLogService;
import dm.net.service.UserDateService;
import dm.net.service.UserService;
import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.net.InetAddress;
import java.util.List;
import java.util.Properties;

/**
 * 用户层controller
 */
@Controller
//@RequestMapping("/user")
public class UserController {
    final static Logger log4j = null;

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
    @Autowired
    @Qualifier("LoginLogServiceImpl")
    private LoginLogService loginLogService;


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
     *
     * @return
     */
    @RequestMapping("/toLogin")
    public String toLogin() {
        return "user/login";
    }

    @RequestMapping("/toRegister")
    public String toRegister() {
        return "user/register";
    }

    @RequestMapping("/toForgot")
    public String toForgot() {
        return "user/forgot";
    }


    /**
     * 页面操作
     * 登录后的操作
     *
     * @return
     */


    @RequestMapping("/login")
    public String login(@ModelAttribute Users user, Model model, HttpSession session,
                        HttpServletRequest request) throws Throwable {

        //----------------------------------------用户登录日志
        // 获取系统信息
        Properties props = System.getProperties();
        // 获取操作系统名称
        String osVersion = props.getProperty("os.name");
        // 获得ip地址
        String address = InetAddress.getLocalHost().getHostAddress();
        // 初始化用户登录日志实体类
        LoginLog log = new LoginLog();
        log.setSysName(osVersion);
        log.setIp(address);
        //----------------------------------------
        // 获取用户传递进来的验证码
        String code = request.getParameter("code");

        System.out.println("------------------------------codeMsg---------" + code);

        String sessionCode = (String) request.getSession().getAttribute(Constants.KAPTCHA_SESSION_KEY);
        System.out.println("------------------------------sessionCode---------" + sessionCode);
        if (StringUtils.isNotEmpty(code) && userService.login(user) != null) {
            Users loginMsg = userService.login(user);
            // 用于上传头像，以及用户邮箱传递
            String proMsg = loginMsg.getuEmail();
            session.setAttribute("proEmail", proMsg);
            // 用于页面传递信息
            session.setAttribute("user", loginMsg);
            // 用于传递登录状态1为成功0为失败
            session.setAttribute("code", "1");
            //
            System.out.println("userInfo==========" + user.getuEmail() + "+" + user.getuPwd());

            if (code.equalsIgnoreCase(sessionCode)) {
                //----------------------------------------
                log.setUser(proMsg);
                log.setLoginWay("password");
                log.setState("1");
                // 向数据库写入数据
                loginLogService.addLog(log);
                //----------------------------------------
                System.out.println("========================addLog====================="+log+"\n" +
                        "=====================登入成功");

                return "user/index";
            } else {
                System.out.println("验证码不正确");
                // 用于传递登录状态1为成功0为失败
                session.setAttribute("code", "0");
                model.addAttribute("msg", "验证码不正确");

                //----------------------------------------
                log.setUser(proMsg);
                log.setLoginWay("password");
                log.setState("0");
                // 向数据库写入数据
                loginLogService.addLog(log);
                //----------------------------------------
                System.out.println("========================addLog====================="+log+"\n" +
                        "=====================登入失败：验证码不正确");
            }

        } else {

            // 用于传递登录状态1为成功0为失败
            session.setAttribute("code", "0");
            model.addAttribute("err", "用户名，密码，验证码不能为空");

            //----------------------------------------
            log.setUser(request.getParameter("uEmail"));
            log.setLoginWay("password");
            log.setState("0");
            // 向数据库写入数据
            loginLogService.addLog(log);
            //----------------------------------------
            System.out.println("========================addLog====================="+log+"\n" +
                    "=====================登入失败：用户名，密码，验证码不能为空");

        }

//        LoginLogInterceptor loginLogProxy =  new LoginLogInterceptor();
//        UserService cglibLogin = (UserService) loginLogProxy.newProxyInstance(UserService.class);
//        cglibLogin.login(user);

//        if (!code.isEmpty()) {
//            if (code.equalsIgnoreCase(sessionCode)) {
//                String msg ="验证码不正确";
//                System.out.println("验证码不正确");
//            }
//        } else {
//            System.out.println("code----------为空");
//            model.addAttribute("err", "验证码有误");
//        }
//        if (userService.login(user) != null) {
//            Users loginMsg = userService.login(user);
//            //用于上传头像
//            String proMsg = loginMsg.getuEmail();
//            session.setAttribute("proEmail", proMsg);
//            //用于页面传递信息
//            session.setAttribute("user", loginMsg);
//
//            System.out.println("userInfo==========" + user.getuEmail() + "+" + user.getuPwd());
//            return "user/index";
//        } else {
//            System.out.println("userError=============" + user);
//            model.addAttribute("msg", "用户名或密码错误");
//
//        }


        // 这个方式可以登录
        // 但任何一项输入错误都会报空指针异常
//        Users userMsg = userService.login(user);
//        String pageUserEmail = "";
//        String pageUserPwd = "";
//        pageUserEmail = request.getParameter("uEmail");
//        pageUserPwd = request.getParameter("uPwd");
//        //预判段
//        if (pageUserEmail==null && pageUserPwd==null){
//            System.out.println("两者中存在空值");
//        }
//        if (pageUserEmail.equals(userMsg.getuEmail())){
//            System.out.println("成功---------("+userMsg.getuEmail());
//            if (pageUserPwd.equals(userMsg.getuPwd())){
//                System.out.println("登录成功：" + userMsg.getuEmail()+userMsg.getuPwd());
//                session.setAttribute("user", userMsg);
//
//                return "user/index";
//            }else {
//                System.out.println("密码错误------("+pageUserPwd);
//                model.addAttribute("msg","密码错误");
//            }
//        }else {
//            System.out.println("用户名错误------("+pageUserEmail);
//            model.addAttribute("msg","用户名错误");
//        }
//        System.out.println(userMsg);

        return "user/login";
    }

    /**
     * @param user
     * @return
     */
    @RequestMapping("/register")
    public String register(Users user) {
        userService.register(user);
        System.out.println("注册成功");
        return "user/login";
    }

    @RequestMapping("/logout")
    public String logout(HttpSession session) {
        session.removeAttribute("user");
        return "user/register";
    }

    @RequestMapping("/exit")
    public String exit(HttpSession session) {
        session.invalidate();
        return "user/login";
    }

    @RequestMapping("/forgot")
    public String forgot(Users user) {
        userService.forgot(user);
        return "user/login";
    }

    @RequestMapping("/refresh")
    public String refresh(Users users, HttpSession session, Model model, HttpServletRequest request) {

//        session.invalidate();
        String uid = String.valueOf(request.getSession().getAttribute("proEmail"));
        users.setuEmail(uid);
        Users refreshMsg = userService.login(users);
        userService.refresh(users);
        session.setAttribute("user",refreshMsg);

//        model.addAttribute("user", refreshMsg);
        return "/user/selfpage";
    }


    /**
     * 跳转到修改个人信息页面
     *
     * @param id
     * @param request
     * @param response
     * @return
     */
    @RequestMapping("/update/{uId}")
    public String getUsers(@PathVariable("uId") Integer id, HttpServletRequest request, HttpServletResponse response) {

        return "user/modifySelfInfo";
    }

    /**
     * 修改个人信息
     *
     * @param user
     * @return
     */
    @RequestMapping("/modifySelfInfo")
    public String modifySelfInfo(Users user) {
        userService.modify(user);
        return "redirect:/oneself";
    }


    @RequestMapping("/oneself")
    public String oneself(Model model) {
        return "/user/selfpage";
    }


    /**
     * page
     */
    @RequestMapping("/welcome")
    public String index() {
        return "user/index";
    }

    @RequestMapping("/home1")
    public String home1() {
        return "user/home1";
    }

    @RequestMapping("/home2")
    public String home2() {
        return "user/home2";
    }

    @RequestMapping("/select")
    public String select() {
        return "user/select";
    }

    @RequestMapping("/install")
    public String install(String tag, HttpServletRequest request, Model model) {
//        String ta =request.getParameter("tag");
//        System.out.println("------------------------installMsg------------"+ta);
        tag = "install";
        List<UserDate> list = userDateService.queryByTag(tag);
        model.addAttribute("install", list);
        return "user/install";
    }

    @RequestMapping("/media")
    public String media(String tag, HttpServletRequest request, Model model) {
//        String ta =request.getParameter("tag");
//        System.out.println("------------------------mediaMsg------------"+ta);
        tag = "media";
        List<UserDate> list = userDateService.queryByTag(tag);
        model.addAttribute("media", list);
        return "user/media";
    }

    @RequestMapping("/directory")
    public String directory(String tag, HttpServletRequest request, Model model) {
//        String ta =request.getParameter("tag");
//        System.out.println("------------------------directoryMsg------------"+ta);
        tag = "directory";
        List<UserDate> list = userDateService.queryByTag(tag);
        System.out.print(list.toString());
        model.addAttribute("directory", list);
        return "user/directory";
    }

    @RequestMapping("/compress")
    public String compress(String tag, HttpServletRequest request, Model model) {
//        String ta =request.getParameter("tag");
//        System.out.println("------------------------compressMsg------------"+ta);
        tag = "compress";
        List<UserDate> list = userDateService.queryByTag(tag);


        model.addAttribute("compress", list);
        return "user/compress";
    }

    @RequestMapping("/retIn")
    public String retIn() {
        return "redirect:/home1";
    }

    //用户记录的操作

    /**
     * to record
     */
    @RequestMapping("/toAddRecord")
    public String toAddRecord() {
        return "user/addrecord";
    }

    /**
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("/toUpdateRecord/{dId}")
    public String toUpdateRecord(@PathVariable("dId") int id, Model model) {
        UserDate userDate = userDateService.queryUserDateById(id);
        model.addAttribute("userDate", userDate);
        return "user/updaterecord";
    }


    /**
     * home
     * record
     */


    /**
     * 添加记录
     *
     * @param userDate
     * @return
     */
    @RequestMapping("/addRecord")
    public String addRecord(UserDate userDate, HttpSession session, Model model) {
        System.out.println("增加了一条" + userDate + "记录");
        userDateService.addUerDate(userDate);
//        String msg = (String) session.getAttribute("user");
        model.addAttribute("addSuccess", "成功添加一条记录");

        return "user/success";
    }

    /**
     * 跟新记录
     *
     * @param userDate
     * @return
     */
    @RequestMapping("/updateRecord")
    public String updateRecord(UserDate userDate, Model model, HttpSession session) {
        userDateService.updateUserDate(userDate);
//        String msg = (String) session.getAttribute("user");
        model.addAttribute("upSuccess", "成功更新一条记录");

        return "user/success";
    }

    /**
     * 根据个人用户名查询用户数据
     * uEmail 和 iEmail为用户邮箱
     *
     * @param uEmail
     * @param model
     * @return
     */
    @RequestMapping("/allRecord/{user.getuEmail}")
    public String allRecord(@PathVariable("user.getuEmail") String uEmail, Model model) {
        List<UserDate> list = userDateService.queryAllUserDate(uEmail);
        model.addAttribute("list", list);
        System.out.println();
        return "user/allrecord";
    }

    /**
     * 删除记录
     *
     * @param id
     * @return
     */
    @RequestMapping("/del/{dId}")
    public String del(@PathVariable("dId") int id, Model model, HttpSession session) {
        userDateService.deleteUserDateById(id);
//        String msg = (String) session.getAttribute("user");
        model.addAttribute("delSuccess", "成功删除一条记录");


        return "user/success";
    }

    /**
     * 查询记录
     *
     * @param ann
     * @param model
     * @param uEmail
     * @return
     */
    @RequestMapping("/query")
    public String query(String ann, Model model, String uEmail, HttpServletResponse response) {
        List<UserDate> list = userDateService.queryUserDateByAnn(ann);
        int lo = response.getBufferSize();
        if (lo <= 0) {
            model.addAttribute("resMsg", "没有找到含有当前字段的记录");
        }
        if (list == null) {

            list = userDateService.queryAllUserDate(uEmail);
//            model.addAttribute("error", "Not Founded");
        }

        model.addAttribute("list", list);
        return "user/allrecord";
    }


    /**
     * 记录页面的返回
     *
     * @return
     */
    @RequestMapping("/ret")
    public String ret(HttpSession session, Model model) {
//        String msg = (String) session.getAttribute("user");
        model.addAttribute("quitSuccess", "退出当前操作");
        return "user/success";
    }



    /*
      ---------------------------login log-------------------------------
     */


    //    @ResponseBody
    @RequestMapping("/loginLog")
    public String pageHelper(@RequestParam(defaultValue = "1") int page, @RequestParam(defaultValue = "10") int size) {
        Model model = null;
        ModelAndView mv = new ModelAndView();
        LoginLog loginLog = new LoginLog();
        List<LoginLog> list = loginLogService.queryAllLog(page, size);
        PageInfo<LoginLog> pageInfos = new PageInfo<>(list);
        assert model != null;
//        model.addAttribute("pageInfos",pageInfos);

        mv.addObject("pageInfos", pageInfos);
//        mv.setViewName("user/loginlog");

        return "user/loginlog";
//        return pageInfos;
    }
//    /**
//     * 首页，并且分页查询
//     * @return
//     */
//    @RequestMapping("/index")
//    public ModelAndView index(Params params){
//
//        ModelAndView modelAndView = new ModelAndView();
//        //一开始第一页，查询10条
//        params.setPageNo(1);
//        params.setPageSize(10);
//        PageInfo<LoginLog> pageInfo = loginLogService.finds(params);
//
//        List<LoginLog> clist = pageInfo.getList();
//
//        //查询数量
//        long couts = loginLogService.counts();
//
//        modelAndView.addObject("clist", clist);
//        modelAndView.addObject("couts", couts);
//        modelAndView.setViewName("user/loginlog");
//
//        return modelAndView;
//    }
//
//    /**
//     * ajax请求 的 分页查询
//     * @param params
//     * @return
//     */
//    @ResponseBody
//    @RequestMapping("/loadData")
//    public HashMap<String, Object> loadData(Params params){
//
//
//        HashMap<String, Object> map = new HashMap<String, Object>();
//        PageInfo<LoginLog> pageInfo = loginLogService.finds(params);
//        List<LoginLog> clist = pageInfo.getList();
//        map.put("clist", clist);
//
//        return map;
//    }

    @RequestMapping("/blogEditor")
    public String blogEditor() {

        return "user/blogEditor";
    }

}
