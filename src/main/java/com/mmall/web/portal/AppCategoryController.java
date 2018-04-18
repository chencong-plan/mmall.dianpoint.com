package com.mmall.web.portal;

import com.mmall.common.ServerResponse;
import com.mmall.pojo.Category;
import com.mmall.service.ICategoryService;
import com.mmall.vo.page.CateProductVo;
import com.mmall.vo.page.CategoryVo;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * 跳转到指定分类下面
 *
 * @author : ChenCong
 * @date : Created in 9:57 2018/4/11
 */
@Controller
public class AppCategoryController {

    @Autowired
    private ICategoryService iCategoryService;

    @RequestMapping("/category/{categoryId}")
    public String category(@PathVariable(value = "categoryId") Integer categoryId, Model model) {
        if (categoryId == null) {
            return "redirect:/";
        }
        Category category = iCategoryService.getCategoryByPrimaryKey(categoryId);
        if (category == null) {
            //TODO 应该跳转到分类不存在页面
            return "redirect:/";
        }
        model.addAttribute("category", category);
        List<CateProductVo> cateProductVoList = iCategoryService.getCateProductListByPreId(categoryId);
        model.addAttribute("cateProductList", cateProductVoList);
        return "protal/product/category";
    }

    /**
     * 查询当前主分类下的所有子分类信息
     *
     * @param categoryId 主分类id
     * @return 返回json
     */
    @RequestMapping("/category/getChild")
    @ResponseBody
    public ServerResponse<CategoryVo> getCategory(
            @RequestParam(value = "categoryId", required = false) Integer categoryId) {
        if (StringUtils.isBlank(categoryId + "")) {
            return ServerResponse.createByErrorMessage("参数错误");
        }
        CategoryVo categoryVo = iCategoryService.getCategoryVoByPreId(categoryId);
        return ServerResponse.createBySuccess("查询成功", categoryVo);
    }
}
