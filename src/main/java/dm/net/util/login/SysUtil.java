package dm.net.util.login;


import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Properties;

public class SysUtil {
    private static String getIpAddress() throws UnknownHostException {
        InetAddress address = InetAddress.getLocalHost();

        return address.getHostAddress();
    }
    public static String getMACAddress(){

        String address = "";

        String os = System.getProperty("os.name");
        String osUser=System.getProperty("user.name");
        if (os != null && os.startsWith("Windows")) {

            try {

                String command = "cmd.exe /c ipconfig /all";

                Process p = Runtime.getRuntime().exec(command);

                BufferedReader br =new BufferedReader(new InputStreamReader(p.getInputStream()));

                String line;

                while ((line = br.readLine()) != null) {

                    if (line.indexOf("Physical Address") > 0) {

                        int index = line.indexOf(":");

                        index += 2;

                        address = line.substring(index);

                        break;

                    }

                }

                br.close();

                return address.trim();

            }

            catch (IOException e) {
            }

        }
        return address;

    }
    Properties props=System.getProperties(); //获得系统属性集
    String osName = props.getProperty("os.name"); //操作系统名称
    String osArch = props.getProperty("os.arch"); //操作系统构架
    String osVersion = props.getProperty("os.version"); //操作系统版本

//    public static String getProperty(String key)
//    键        相关值的描述
//    java.version    Java 运行时环境版本
//    java.vendor     Java 运行时环境供应商
//    java.vendor.url     Java 供应商的 URL
//    java.home   Java 安装目录
//    java.vm.specification.version   Java 虚拟机规范版本
//    java.vm.specification.vendor    Java 虚拟机规范供应商
//    java.vm.specification.name  Java 虚拟机规范名称
//    java.vm.version     Java 虚拟机实现版本
//    java.vm.vendor  Java 虚拟机实现供应商
//    java.vm.name    Java 虚拟机实现名称
//    java.specification.version  Java 运行时环境规范版本
//    java.specification.vendor   Java 运行时环境规范供应商
//    java.specification.name     Java 运行时环境规范名称
//    java.class.version  Java 类格式版本号
//    java.class.path     Java 类路径
//    java.library.path   加载库时搜索的路径列表
//    java.io.tmpdir  默认的临时文件路径
//    java.compiler   要使用的 JIT 编译器的名称
//    java.ext.dirs   一个或多个扩展目录的路径
//    os.name     操作系统的名称
//    os.arch     操作系统的架构
//    os.version  操作系统的版本
//    file.separator  文件分隔符（在 UNIX 系统中是“/”）
//    path.separator  路径分隔符（在 UNIX 系统中是“:”）
//    line.separator  行分隔符（在 UNIX 系统中是“/n”）
//    user.name   用户的账户名称
//    user.home   用户的主目录
//    user.dir    用户的当前工作目录

}
