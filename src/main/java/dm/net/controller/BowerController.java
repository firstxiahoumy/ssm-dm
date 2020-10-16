package dm.net.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


/**
 * browse controller
 */
@Controller
@RequestMapping("/browse")
public class BowerController {

    /**
     * 未注册用户（游客）浏览
     * 页面 controller
     * @return
     */
    @RequestMapping("/read")
    public String read(){
        return "browse/readdoc";
    }
    @RequestMapping("/dm")
    public  String  dm(){
        return "browse/dm";
    }
    @RequestMapping("/nc")
    public  String  nc(){
        return "browse/nc";
    }

    /**
     * 默认模板测试页面
     *
     * 特别注意
     * 项目发布时需要注销
     * @return
     */
    @RequestMapping("/def")
    public String der(){
        return "user/def";
    }

}
