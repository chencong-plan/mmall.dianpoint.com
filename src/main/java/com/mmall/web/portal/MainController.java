package com.mmall.web.portal;

import com.mmall.service.ICategoryService;
import org.springframework.beans.factory.annotation.Autowired;
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

    @Autowired
    private ICategoryService iCategoryService;

    @RequestMapping({"/", "/index"})
    public String index(Model model) {
        return "protal/home";
    }

    @RequestMapping("/file")
    public String file(Model model) {
        return "file";
    }


    //TODO 获取分类，在首页当中进行调用
    private void getCategoryList(Integer categoryId) {

    }
}
