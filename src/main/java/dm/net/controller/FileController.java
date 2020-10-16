package dm.net.controller;

import dm.net.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;


@Controller
public class FileController {
    @Autowired
    @Qualifier("UserServiceImpl")
    private UserService userService;

}
