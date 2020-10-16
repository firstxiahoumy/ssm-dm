package dm.net.servlet;

import dm.net.pojo.Admin;
import dm.net.pojo.Users;
import dm.net.service.AdminService;
import dm.net.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

/**
 * 暂时为用
 */
public class CheckEmailAction extends HttpServlet {
    @Autowired
//    @Qualifier("AdminServiceImpl")
    private AdminService adminService;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

//        //设置返回数据为utf-8
//        response.setCharacterEncoding("UTF-8");
//        PrintWriter out = response.getWriter();
//        Admin email = new Admin();
//        //查询是否有输入的用户名
//        List<Admin> rel = adminService.checkEmail(email.getEmail());
////        Admin aa=adminService.checkEmail(rel);
//        //获取页面输入的邮箱
//        String check = request.getParameter("email");
//        //如果为null（没有该用户email）即可用
//        if (rel.equals(check)) {
//            out.print(false);
////            result = "<span color='red'>邮箱已经存在，请使用其他邮箱</span>";
//        } else {
//            out.print(true);
//            //            checkEmail=false;
////            result = "<span color='green'>邮箱可用</span>";
//        }

        super.doGet(request,response);
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException {
        super.doPost(request, response);
    }


//    //    @RequestMapping("/checkEmail")
    public void ajax(String email, HttpServletResponse response, HttpServletRequest request) throws IOException {
////初始化
//        String result = "";
////        boolean checkEmail=true;
//        //查询是否有输入的用户名
//        List<Admin> rel = adminService.checkEmail(email);
//        //获取页面输入的邮箱
//        String emails = request.getParameter("email");
//        //如果为null（没有该用户email）即可用
//        if (rel.equals(emails)) {
//            result = "<span color='red'>邮箱已经存在，请使用其他邮箱</span>";
//        } else {
////            checkEmail=false;
//            result = "<span color='green'>邮箱可用</span>";
//        }
//
//        //设置返回数据为utf-8
//        response.setCharacterEncoding("UTF-8");
//        response.getWriter().print(result);
    }
}
