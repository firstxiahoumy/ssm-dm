package dm.net.service;

import dm.net.pojo.Users;

import java.awt.*;

public interface UserService {
    Users login(Users users);
    Integer register(Users user);
    int forget(Users users);
    String modify(Users users);
    String logout(Users users);
    Image avatar(Users users);
}
