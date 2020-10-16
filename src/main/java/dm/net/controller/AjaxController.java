package dm.net.controller;

import dm.net.pojo.Admin;
import dm.net.pojo.ResultObj;
import dm.net.pojo.Users;
import dm.net.service.AdminService;
import dm.net.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@Controller
public class AjaxController {

    @Autowired
    @Qualifier("AdminServiceImpl")
    private AdminService adminService;
    @Autowired
    @Qualifier("UserServiceImpl")
    private UserService userService;

    public static final Logger ajaxLog = LoggerFactory.getLogger(AjaxController.class);


    @RequestMapping("/updateHeadPic")
    public void updateHeadPic(HttpServletRequest request, HttpServletResponse response) {
        String username = request.getSession().getAttribute("proMsg").toString();

        ajaxLog.info("/user/uploadHeadPic -> start - username: " + username);
        MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
        CommonsMultipartFile file = (CommonsMultipartFile) multipartRequest.getFile("profileFile");
        ajaxLog.info("file content type: " + file.getContentType());
        ajaxLog.info("file original name: " + file.getOriginalFilename());
        ajaxLog.info("file name: " + file.getName());

        String result = "";
        if (null == file || file.isEmpty()) {
//            return new ResultObj(400, "文件不能为空");
        }
//        String result = new ResultObj(200, "文件上传成功");
        Users u = new Users();
        try {
            u.setuEmail(username);
            u.setuAvatar(file.getBytes());
        } catch (Exception e) {
            ajaxLog.error("上传失败 - " + e.getMessage());
//            result.setCode(500);
//            result.setMsg("文件保存失败");
        }
        ajaxLog.info("/updateHeadPic -> end");
//        return result;
    }

    /**
     * @param email
     * @param response
     * @param request
     * @throws IOException
     */
    @RequestMapping("/checkRegister")
    public void checkEmail(String email, HttpServletResponse response, HttpServletRequest request) throws IOException {
//        //初始化
//        String message="";
//        boolean checkEmail=true;
//        //查询是否有输入的用户名
//        List<Admin> rel = adminService.checkEmail(email);
//        //如果为null（没有该用户email）即可用
//        if(rel == null){
//            message="用户名可用";
//        }else{
//            checkEmail=false;
//            message="用户名已经存在，请使用其他用户名";
//        }
//        //System.out.println(message);
//        //设置返回数据为utf-8
//        response.setCharacterEncoding("UTF-8");
//        PrintWriter out = response.getWriter();
//        out.println("<response>");
//        out.println("<passed>" + Boolean.toString(checkEmail) + "</passed>");
//        out.println("<message>" + message + "</message>");
//        out.println("</response>");
        //设置返回数据为utf-8
        response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();

        //查询是否有输入的用户名
        List<Admin> rel = adminService.checkEmail(email);
//        Admin aa=adminService.checkEmail(rel);
        //获取页面输入的邮箱
        String check = request.getParameter("email");
        //如果为null（没有该用户email）即可用
        if (rel.equals(check)) {
            //  邮箱已经存在，请使用其他邮箱
            out.print(false);

        } else {
            //  邮箱可用
            out.print(true);

        }
    }

    /**
     * user
     * <p>
     * 根据用户email查询
     *
     * @throws IOException
     */
    @RequestMapping("/judgeEmail")
    public void findBrandByEmail(String uEmail, HttpServletRequest request, HttpServletResponse response) throws IOException {
        //初始化
        String message = "";
        boolean judge = true;
        //查询是否有输入的用户名
        List<Users> rel = userService.judge(uEmail);
        //如果为null（没有该用户email）即可用
        if (rel == null) {
            message = "用户名可用";
        } else {
            judge = false;
            message = "用户名已经存在，请使用其他用户名";
        }

        //设置返回数据为utf-8
        response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        out.println("<response>");
        out.println("<passed>" + Boolean.toString(judge) + "</passed>");
        out.println("<message>" + message + "</message>");
        out.println("</response>");
    }




    /**
     * 上传图片
     *
     * @param request
     * @param
     * @param file
     * @throws IOException
     */
    @RequestMapping("/upPro")
    @ResponseBody
    public List<ResultObj> uploadAvatar(@RequestParam(value = "avatar")MultipartFile file,
                                              HttpServletRequest request,HttpSession session) throws IllegalStateException, IOException{
        //1.确定保存的文件夹
        String rootPath = request.getSession().getServletContext().getRealPath("/");
        String contextPath = "img/avatar/user/";
        String dirPath = rootPath+contextPath;
        System.out.println("==========================================dirPath"+dirPath);
//        String dirPath = session.getServletContext().getRealPath("/"+"img/avatar/user");
        //会在 web 下面创建此文件夹
        System.out.println("dirPath="+dirPath);

        File dir = new File(dirPath);
        if(!dir.exists()) {
            dir.mkdirs();
        }
        //2.确定保存的文件名
        String orginalFilename = file.getOriginalFilename();
        int beginIndex = orginalFilename.lastIndexOf(".");
        String suffix ="";
        if(beginIndex!=-1) {
            suffix = orginalFilename.substring(beginIndex);
        }
        String filename =UUID.randomUUID().toString()+suffix;
        //创建文件对象，表示要保存的头像文件,第一个参数表示存储的文件夹，第二个参数表示存储的文件
        File dest = new File(dir,filename);
        //执行保存
        file.transferTo(dest);

        //更新数据表
        String avatar = "/img/avatar/user/"+filename;
        String uid = String.valueOf(request.getSession().getAttribute("proEmail"));

        System.out.println("==========================================avatar"+avatar);

        //初始化 Users实体类 并添加uEmail和pro的值
        Users pro = new Users();
        pro.setuEmail(uid);
        pro.setPro(avatar);

        userService.pro(pro);
        ResultObj jr = new ResultObj();
        jr.setSta("OK");
        jr.setMsg(avatar);
        List<ResultObj> list = new ArrayList<ResultObj>();
        list.add(jr);
        return list;
    }
//    https://github.com/Krryxa/maven_pagehepler
//    https://github.com/pagehelper/Mybatis-PageHelper/blob/master/wikis/zh/HowToUse.md
//    https://blog.csdn.net/bgyuan_csdn/article/details/89438495?utm_medium=distribute.pc_relevant_t0.none-task-blog-BlogCommendFromMachineLearnPai2-1.channel_param&depth_1-utm_source=distribute.pc_relevant_t0.none-task-blog-BlogCommendFromMachineLearnPai2-1.channel_param

//    https://github.com/Krryxa/krry_musicblog

    //文件下载
    @RequestMapping(value="/download",method= RequestMethod.GET)
    public void download(@RequestParam(value="scan")String filename,
                         HttpServletRequest request,
                         HttpServletResponse response) throws IOException {
        //获取需要下载的文件的路径
        String path = request.getSession().getServletContext().getRealPath("/static/upload/mdFile") + "\\" + filename;
        //获取输入流
        InputStream bis = new BufferedInputStream(new FileInputStream(new File(path)));
        //转码，免得文件名中文乱码
        filename = URLEncoder.encode(filename, "UTF-8");
        //设置文件下载头
        response.addHeader("Content-Disposition", "attachment;filename=" + filename);
        //1.设置文件ContentType类型，这样设置，会自动判断下载文件类型
        response.setContentType("multipart/form-data");
        BufferedOutputStream out = new BufferedOutputStream(response.getOutputStream());
        int len = 0;
        while ((len = bis.read()) != -1) {
            out.write(len);
            out.flush();
        }
        out.close();
    }




}
