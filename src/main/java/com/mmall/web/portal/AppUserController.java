package com.mmall.web.portal;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 页面当中UserController，但是由于UserController已经在controller包当中存在，在这里取名为AppUserController
 *
 * @author chencong
 * @date 2018/4/9 22:06
 */
@Controller
public class AppUserController {

    @RequestMapping("account/login")
    public String login(Model model) {
        return "/protal/login";
    }

    @RequestMapping("account/regist")
    public String regist(Model model) {
        return "/protal/regist";
    }

    /**
     * 用户中心
     *
     * @param userId userId
     * @param model  model
     * @return 返回用户中心页面
     */
    @RequestMapping("/u/{userId}")
    public String user(@PathVariable(value = "userId") Integer userId, Model model) {
        return "/protal/profile";

    }

    /**
     * 进入用户地址管理页面
     *
     * @param userId 用户id
     * @param model  model
     * @return 返回用户地址管理页面
     */
    @RequestMapping(value = "/u/{userId}/address")
    public String address(@PathVariable(value = "userId") Integer userId, Model model) {
        return "protal/myAddressManage";
    }

    /**
     * 进入修改密码页面
     *
     * @param userId 用户id
     * @param model  model
     * @return 返回用户修改密码页面
     */
    @RequestMapping(value = "/u/{userId}/password")
    public String changePassword(@PathVariable(value = "userId") Integer userId, Model model) {
        return "protal/changePassword";
    }


}
