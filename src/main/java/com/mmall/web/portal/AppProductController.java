package com.mmall.web.portal;

import com.mmall.common.Const;
import com.mmall.pojo.Product;
import com.mmall.service.IProductService;
import com.mmall.util.CookieUtil;
import com.mmall.vo.ProductDetailVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 商品product
 *
 * @author : ChenCong
 * @date : Created in 11:03 2018/4/11
 */
@Controller
public class AppProductController {

    @Autowired
    private IProductService iProductService;

    @RequestMapping("/products/{productId}")
    public String product(
            @PathVariable(value = "productId") Integer productId,
            Model model,
            HttpServletRequest request,
            HttpServletResponse response) {
        ProductDetailVo productDetailVo = iProductService.getProductById(productId);
        model.addAttribute("productDetailVo", productDetailVo);

        //TODO
        setCookie(request, response, productId);
        return "protal/product/productDetail";
    }

    /**
     * 将用户请求的商品信息存入cookie做为浏览记录
     *
     * @param request   request
     * @param response  response
     * @param productId productId
     */
    private void setCookie(HttpServletRequest request, HttpServletResponse response, Integer productId) {
        ProductDetailVo productDetailVo = iProductService.getProductById(productId);
        if (productDetailVo == null) {
            return;
        }
        String cookieName = Const.PRODUCT_COOKIE.BROWSE_RECORDS_COOKIE;
        String ids = CookieUtil.readLoginToken(request,cookieName);
        if (ids == null) {
            ids = "";
        }
        StringBuilder builder = new StringBuilder(ids);
        builder.append(productId+",");
        CookieUtil.writeLoginToken(response, cookieName,Const.PRODUCT_COOKIE.BROWSE_RECORDS_COOKIE, builder.toString());
        String cookies = CookieUtil.readLoginToken(request,cookieName);
    }
}
