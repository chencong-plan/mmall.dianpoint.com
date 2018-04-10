package com.mmall.web.portal;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 前台，购物车请求处理页面
 * @author : ChenCong
 * @date : Created in 15:48 2018/4/10
 */
@Controller
public class AppCartController {

    @RequestMapping("/u/{userId}/cart")
    public String showCart(@PathVariable(value = "userId") Integer userId, Model model){
        return "protal/shopcars";
    }
}
