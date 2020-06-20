package dm.net.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * public controller
 */
@Controller
@RequestMapping("/public")
public class HomeController {
    /**
     * 重定向到根目录
     * @return
     */
    @RequestMapping("/back")
    public String back(){
        return "redirect:/index.jsp";
    }


    /**
     * public browse
     */
    @RequestMapping("/about")
    public String about(){
        return "public/about";
    }
    @RequestMapping("/content")
    public String content(){
        return "public/content";
    }
    @RequestMapping("/document")
    public String document(){
        return "public/document";
    }
    @RequestMapping("/excel")
    public String excel(){
        return "public/excel";
    }
    @RequestMapping("/home")
    public String home(){
        return "public/home";
    }
    @RequestMapping("/link")
    public String link(){
        return "public/link";
    }
    @RequestMapping("/index")
    public String index(){
        return "public/index";
    }
    @RequestMapping("/markdown")
    public String markdown(){
        return "public/markdown";
    }
    @RequestMapping("/ppt")
    public String ppt(){
        return "public/ppt";
    }
    @RequestMapping("/pdf")
    public String pdf(){
        return "public/pdf";
    }
    @RequestMapping("/txt")
    public String txt(){
        return "public/txt";
    }

}
