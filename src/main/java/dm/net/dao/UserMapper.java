package dm.net.dao;

import dm.net.pojo.Users;

import java.awt.*;

public interface UserMapper {

    Users login(Users users);
    Integer register(Users user);
    int forget(Users users);
    String modify(Users users);
    String logout(Users users);
    Image avatar(Users users);
}
