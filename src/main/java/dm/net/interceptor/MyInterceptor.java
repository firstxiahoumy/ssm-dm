package dm.net.interceptor;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class MyInterceptor implements HandlerInterceptor {


    /**
     * user interceptor
     * @param request
     * @param response
     * @param arg2
     * @return
     * @throws Exception
     */
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object arg2) throws Exception {
//        // 在拦截点执行前拦截，如果返回true则不执行拦截点后的操作（拦截成功）
//        // 返回false则不执行拦截
//        HttpSession session = request.getSession();
//        //String uri = request.getRequestURI(); // 获取登录的uri，这个是不进行拦截的
//        //if(session.getAttribute("LOGIN_USER")!=null || uri.indexOf("toLogin")!=-1) {// 说明登录成功 或者 执行登录功能
//        if (session.getAttribute("LOGIN_USER") != null) {
//            // 登录成功不拦截
//            return true;
//        } else {
//            // 拦截后进入登录页面
//            response.sendRedirect(request.getContextPath() + "/toLogin");
//            return false;
//        }

//        //flag变量用于判断用户是否登录，默认为false
//        boolean flag = true;
//        //获取请求的路径进行判断(@control的路径,如"/fore/addGoods")
//        String servletPath = request.getServletPath();
//        //判断请求是否需要拦截
//        for (String s : IGNORE_URI) {
//            if (servletPath.contains(s)) {
//                flag = false;
//                break;
//            }
//        }
//        //拦截请求
//        if (!flag) {
//            //1.获取session中的用户
//            String name = (String) request.getSession().getAttribute("name");
//            //2.判断用户是否已经登录
//            if (name == null) {
//                //验证还未登录，跳转至登录界面
//                response.sendRedirect("/toLogin");
//            } else {
//                //如果用户已经登录，则验证通过，放行
//                System.out.println("AuthorizationInterceptor放行请求：");
//                flag = true;
//            }
//        }
//        return flag;


        String uri = request.getRequestURI();

        ModelAndView modelAndView = new ModelAndView();
        //判断当前请求地址是否登录地址
        if (uri.contains("Login") || uri.contains("login")) {
            //登录请求，直接放行
            return true;

        } else {
            // 判断是否为管理员用户
            if (uri.contains("admin") || uri.contains("system")) {
                System.out.println("您当前为用户，无法跳转");
                modelAndView.setViewName("/return");
                modelAndView.addObject("results", "您当前为用户，无法跳转");


            } else {
                //判断用户是否登录
                if (request.getSession().getAttribute("users") != null) {
                    //说明已经登录，放行
                    return true;

                }else {
                    //没有登录，跳转到登录界面
                    response.sendRedirect(request.getContextPath() + "/toLogin");
                }

            }
        }

        //默认拦截
        return false;
    }


    /**
     * 在Controller调用之后, DispatcherServlet返回渲染视图之前被调用, 可操作ModelAndView对象对试图进行渲染操作。
     * 注意: ModelAndView对象有可能为null
     *
     * @param request
     * @param response
     * @param obj
     * @param modelAndView
     * @throws Exception
     */
    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object obj, ModelAndView modelAndView) throws Exception {
        // 在处理过程中，执行拦截

    }

    /**
     * 在视图渲染完毕后调用
     *
     * @param request
     * @param response
     * @param obj
     * @param e
     * @throws Exception
     */
    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object obj, Exception e) throws Exception {
        // 执行完毕，返回前拦截
    }
}
