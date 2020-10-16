package dm.net.cglib;

import dm.net.aspect.LoginAspect;
import net.sf.cglib.proxy.Enhancer;
import net.sf.cglib.proxy.MethodInterceptor;
import net.sf.cglib.proxy.MethodProxy;

import java.lang.reflect.Method;

public class LoginLogInterceptor implements MethodInterceptor {
    /**
     * CGLIB 增强类对象，代理类对象是由 Enhancer 类创建的，
     * Enhancer 是 CGLIB 的字节码增强器，可以很方便的对类进行拓展
     */
    private Enhancer enhancer = new Enhancer();

    /**
     * 实现 cglib 中的 MethodInterceptor
     * @param o  被代理的对象
     * @param method 代理的方法
     * @param objects 方法的参数
     * @param methodProxy CGLIB方法代理对象
     * @return  cglib生成用来代替Method对象的一个对象，使用MethodProxy比调用JDK自身的Method直接执行方法效率会有提升
     * @throws Throwable
     */
    public Object intercept(Object o, Method method, Object[] objects, MethodProxy methodProxy) throws Throwable {

        LoginAspect loginAspect = new LoginAspect();

        Object object = methodProxy.invokeSuper(o, objects);
        loginAspect.loginCell();
        return object;
    }
    /**
     * 使用动态代理创建一个代理对象
     * @param c
     * @return
     */
    public  Object newProxyInstance(Class<?> c) {
        /**
         * 设置产生的代理对象的父类,增强类型
         */
        enhancer.setSuperclass(c);
        /**
         * 定义代理逻辑对象为当前对象，要求当前对象实现 MethodInterceptor 接口
         */
        enhancer.setCallback(this);
        /**
         * 设置动态代理的类
         */
        Object LoginLogProxy = enhancer.create();

        return LoginLogProxy;
    }
}
