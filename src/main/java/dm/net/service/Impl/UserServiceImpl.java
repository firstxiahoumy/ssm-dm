package dm.net.service.Impl;

import dm.net.dao.UserMapper;
import dm.net.pojo.Users;
import dm.net.service.UserService;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import javax.servlet.http.HttpSession;
import java.awt.*;

@Service()
public class UserServiceImpl implements UserService {

    private UserMapper userMapper;
    public void setUserMapper(UserMapper userMapper) {
        this.userMapper=userMapper;
    }

    public Users login(Users users) {

        return this.userMapper.login(users);
    }


    public boolean checkLogin(String uEmail, String uPwd) {
        String password = userMapper.checkLogin(uEmail);
        if(password != null && password.equals(uPwd))
        {
            return true;
        }
        else
        {
            return false;
        }
    }

    public Integer register(Users users) {
        return userMapper.register(users);
    }

    public int forgot(Users users) {
        return userMapper.forgot(users);
    }

    public int modify(Users users) {
        return userMapper.modify(users);
    }

    public int logout(Users users) {
        return userMapper.logout(users);
    }

    public String judge(String uEmail) {
        return userMapper.judge(uEmail);
    }

//    public Image avatar(Users users) {
//        return userMapper.avatar(users);
//    }
}
