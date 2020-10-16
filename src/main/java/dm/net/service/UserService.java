package dm.net.service;

import dm.net.pojo.ResultObj;
import dm.net.pojo.Users;
import org.springframework.ui.Model;

import javax.servlet.http.HttpSession;
import java.awt.image.ImageFilter;
import java.util.List;

/**
 *
 * @gitee  firstxiahoumy
 * @github firstxiahoumy
 * @author aliketh.xhmy
 */
public interface UserService {
    public boolean checkLogin(String uEmail,String uPwd);
    Users login(Users users);
    Integer register(Users user);
    int forgot(Users users);
    int modify(Users users);
    int logout(Users users);
    List<Users> judge(String uEmail);
    int avatar(Users users);

    int pro(Users pro);

    Users refresh (Users users);
}
