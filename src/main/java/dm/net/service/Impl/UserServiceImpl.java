package dm.net.service.Impl;

import dm.net.dao.UserMapper;
import dm.net.pojo.Users;
import dm.net.service.UserService;

import java.awt.*;

public class UserServiceImpl implements UserService {

    private UserMapper userMapper;
    public void setUserMapper(UserMapper userMapper) {

    }

    public Users login(Users users) {
        return null;
    }

    public Integer register(Users user) {
        return null;
    }

    public int forget(Users users) {
        return 0;
    }

    public String modify(Users users) {
        return null;
    }

    public String logout(Users users) {
        return null;
    }

    public Image avatar(Users users) {
        return null;
    }
}
