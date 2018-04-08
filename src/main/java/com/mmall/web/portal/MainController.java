package com.mmall.web.portal;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 首页请求进行处理
 *
 * @author chencong
 * @date 2018/4/8 21:42
 */
@Controller("/")
public class MainController {

    @RequestMapping({"/", "/index"})
    public String index(Model model) {
        return "protal/home";
    }

    @RequestMapping("/file")
    public String file(Model model){
        return "file";
    }
}
