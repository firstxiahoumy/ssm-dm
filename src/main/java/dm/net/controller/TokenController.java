package dm.net.controller;

import dm.net.dao.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/token")
public class TokenController {
    @Autowired
    private UserMapper userMapper;


}
