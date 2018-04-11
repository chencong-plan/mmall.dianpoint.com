package com.mmall.web.portal;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 商品product
 * @author : ChenCong
 * @date : Created in 11:03 2018/4/11
 */
@Controller
public class AppProductController {

    @RequestMapping("/products/{productId}")
    public String product(@PathVariable(value = "productId") Integer productId, Model model){
        return "protal/product/productDetail";
    }
}
