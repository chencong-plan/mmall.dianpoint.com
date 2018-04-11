package com.mmall.web.portal;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 跳转到指定分类下面
 * @author : ChenCong
 * @date : Created in 9:57 2018/4/11
 */
@Controller
public class AppCategoryController {

    @RequestMapping("/category/{categoryId}")
    public String category(@PathVariable(value = "categoryId") Integer categoryId, Model model){
        return "protal/product/category";
    }
}
