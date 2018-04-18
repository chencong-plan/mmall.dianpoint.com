package com.mmall.web.portal;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageInfo;
import com.mmall.pojo.Category;
import com.mmall.service.ICategoryService;
import com.mmall.util.JsonUtil;
import com.mmall.vo.page.CateProductVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;


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
    public String index(
            @RequestParam(value = "cateId", required = false, defaultValue = "0") Integer categoryId,
            @RequestParam(value = "pageNum", required = false, defaultValue = "1") Integer pageNum,
            @RequestParam(value = "pageSize", required = false, defaultValue = "5") Integer pageSize,
            Model model) {
        PageInfo<CateProductVo> pageInfoCateProduct = getCateProductList(pageSize, pageNum);
        model.addAttribute("cateProducts", pageInfoCateProduct);
        return "protal/home";
    }

    @RequestMapping("/file")
    public String file(Model model) {
        return "file";
    }


    //TODO 获取分类，在首页当中进行调用
    private PageInfo<Category> getCategoryList(Integer categoryId, Integer pageSize, Integer pageNum) {
        return iCategoryService.getCategoryByPreId(categoryId, pageSize, pageNum);
    }

    //TODO
    private PageInfo<CateProductVo> getCateProductList(Integer pageSize, Integer pageNum) {
        return iCategoryService.getCateProductListByPreId(pageSize, pageNum);
    }

//    @RequestMapping("/getInfo")
//    @ResponseBody
//    public String get(){
//        PageInfo<CateProductVo> page = iCategoryService.getCateProductListByPreId(5,1);
//        return JsonUtil.obj2String(page);
//    }
}
