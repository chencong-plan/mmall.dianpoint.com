package com.mmall.web.portal;

import com.mmall.service.IProductService;
import com.mmall.vo.ProductDetailVo;
import org.springframework.beans.factory.annotation.Autowired;
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

    @Autowired
    private IProductService iProductService;

    @RequestMapping("/products/{productId}")
    public String product(@PathVariable(value = "productId") Integer productId, Model model){
        ProductDetailVo productDetailVo = iProductService.getProductById(productId);
        model.addAttribute("productDetailVo", productDetailVo);
        return "protal/product/productDetail";
    }
}
