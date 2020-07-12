package dm.net.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

/**
 * admin interceptor
 *
 */
public class AllInterceptor implements HandlerInterceptor {

    /**
     * 调用之前执行
     *
     * @param request
     * @param response
     * @param obj
     * @return
     * @throws Exception
     */
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object obj) throws Exception {
        String uri = request.getRequestURI();

//        ModelAndView modelAndView = new ModelAndView();
        //判断当前请求地址是否登录地址
        if (uri.contains("Login") || uri.contains("login")) {
            //登录请求，直接放行
            return true;

        }
//        else {
//            // 判断是否为管理员用户
//            if (uri.contains("admin") || uri.contains("system")) {
//                System.out.println("您当前为用户，无法跳转");
//                modelAndView.setViewName("/return");
//                modelAndView.addObject("results", "您当前为用户，无法跳转");
//
//
//            }
            else {
                //判断用户是否登录
                if (request.getSession().getAttribute("admin") != null) {
                    //说明已经登录，放行
                    return true;

                }else {
                    //没有登录，跳转到登录界面
                    response.sendRedirect(request.getContextPath() + "/admin/toLogin");
                }

            }
//        }

        //默认拦截
        return false;
    }

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
