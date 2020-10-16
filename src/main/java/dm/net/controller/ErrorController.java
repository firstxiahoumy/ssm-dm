package dm.net.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ErrorController {

    @RequestMapping("/error")
    public String error() {
        return "error/error";
    }

    @RequestMapping("/xReturn")
    public String xReturn() {
        return "error/return";
    }

    @RequestMapping("x401")
    public String x401() {
        return "error/401";
    }

    @RequestMapping("/x500")
    public String x500() {
        return "error/500";
    }

    @RequestMapping("/x404")
    public String x404() {
        return "error/404";
    }

    @RequestMapping("/x200")
    public String x200() {
        return "error/200";
    }

}
