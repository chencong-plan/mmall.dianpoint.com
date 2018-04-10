package com.mmall.web.portal;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 用户订单中心
 *
 * @author : ChenCong
 * @date : Created in 16:06 2018/4/10
 */
@Controller
public class AppOrderController {

    /**
     * 订单中心
     *
     * @param userId 用户userId
     * @param model  model
     * @return 返回用户订单列表页面
     */
    @RequestMapping("/u/{userId}/order")
    public String order(@PathVariable(value = "userId") Integer userId, Model model) {
        return "protal/myOrder";
    }

}
