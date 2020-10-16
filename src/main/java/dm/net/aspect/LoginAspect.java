package dm.net.aspect;

import dm.net.pojo.LoginLog;
import dm.net.service.LoginLogService;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.servlet.http.HttpServletRequest;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.List;
import java.util.Properties;

/**
 *
 * @Aspect 声明当前类为切面类
 * https://blog.csdn.net/qq_36476972/article/details/76326887
 */

@Component
@Aspect
public class LoginAspect {

    @Autowired
    LoginLogService loginLog;

    LoginLog log = new LoginLog();
    Properties props=System.getProperties();
    HttpServletRequest request;
    /**
     * 用户登录方法的切入点
     */
    @Pointcut("execution(* dm.net.service.Impl.UserServiceImpl.login(..))")
    public void loginCell(){}

//    /**
//     *
//     * @throws UnknownHostException
//     */
//    @After("loginCell()")
//    public void after() throws Throwable {
//
//
//        String loginUser = String.valueOf(request.getSession().getAttribute("proEmail"));
//        String loginCode = String.valueOf(request.getSession().getAttribute("code"));
//        String osVersion = props.getProperty("os.name");
//        String address = InetAddress.getLocalHost().getHostAddress();
//
//        if (loginCode.equals("1")){
//            log.setState("1");
//        }else {
//            log.setState("0");
//        }
//        log.setUser(loginUser);
//        log.setLoginWay("password");
//        log.setSysName(osVersion);
//        log.setIp(address);
////        log.setLocation();
//        System.out.println("=======================login"+log);
//        loginLog.addLog(log);
//    }
    /**
     * 登录操作(后置通知)
     * @param
     * @throws Throwable
     */
//    @AfterReturning(value = "loginCell()", argNames = "joinPoint,object", returning = "object")
//    public void loginLog(JoinPoint joinPoint, Object object) throws Throwable {
//        Users user=(Users)object;
//        HttpServletRequest request = null;
//        if (user==null) {
//            return;
//        }
//        if (joinPoint.getArgs() == null) {// 没有参数
//            return;
//        }
    @AfterReturning(value = "loginCell()")
    public void loginLog() throws Throwable {
        
        String loginUser = String.valueOf(request.getSession().getAttribute("proEmail"));
        String loginCode = String.valueOf(request.getSession().getAttribute("code"));
        String osVersion = props.getProperty("os.name");
        String address = InetAddress.getLocalHost().getHostAddress();

        if (loginCode.equals("1")){
            log.setState("1");
        }else {
            log.setState("0");
        }
        log.setUser(loginUser);
        log.setLoginWay("password");
        log.setSysName(osVersion);
        log.setIp(address);
//        log.setLocation();

        loginLog.addLog(log);
        System.out.println("=======================login"+ log);
    }


//https://blog.csdn.net/weixin_39936341/article/details/79226182?utm_medium=distribute.pc_relevant.none-task-blog-BlogCommendFromMachineLearnPai2-4.channel_param&depth_1-utm_source=distribute.pc_relevant.none-task-blog-BlogCommendFromMachineLearnPai2-4.channel_param
}
