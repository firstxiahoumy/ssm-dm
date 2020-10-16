package dm.net.test;

import org.junit.Test;
import org.springframework.ui.Model;

import javax.xml.crypto.Data;
import java.lang.reflect.Array;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Properties;
import java.util.Scanner;

public class MyTest {

    @Test
    public void checkEmail() {


    }

    @Test
    public void testIp() throws UnknownHostException {
        System.out.println(InetAddress.getLocalHost().toString().
                substring(InetAddress.getLocalHost().toString().lastIndexOf("/")+1));
    }

    public static String say = "我要学会你";
    public Data t1;

    @Test
    public static void main(String[] args) {

    }
//https://www.cnblogs.com/guoyaohua/p/8600214.html

    @Test
    public void testTime(Model model) {
        model.getAttribute("install");
        System.out.println(model);
    }
    @Test
    public void os(){
        Properties props=System.getProperties(); //获得系统属性集
        String osName = props.getProperty("os.name"); //操作系统名称
        String osArch = props.getProperty("os.arch"); //操作系统构架
        String osVersion = props.getProperty("os.version"); //操作系统版本

        System.out.println(osName);
        System.out.println(osArch);
        System.out.println(osVersion);
    }
}
