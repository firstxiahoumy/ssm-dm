package dm.net.service;

import dm.net.pojo.Users;
import org.springframework.ui.Model;

import javax.servlet.http.HttpSession;
import java.awt.*;

public interface UserService {
    public boolean checkLogin(String uEmail,String uPwd);
    Users login(Users users);
    Integer register(Users user);
    int forgot(Users users);
    int modify(Users users);
    int logout(Users users);
    String judge(String uEmail);
//    Image avatar(Users users);
}
