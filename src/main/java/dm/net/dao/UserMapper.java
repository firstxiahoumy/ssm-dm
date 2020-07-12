package dm.net.dao;

import dm.net.pojo.Users;

import java.awt.*;

public interface UserMapper {
    //这里的接口方法名必须和中mapper中的id相同，不然运行的时候会报错
    public String checkLogin(String uEmail);
    Users login(Users users);
    Integer register(Users user);
    int forgot(Users users);

    int logout(Users users);
    int modify(Users users);
    String judge(String uEmail);
//    Image avatar(Users users);
}
