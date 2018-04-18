package com.mmall.service;

import com.github.pagehelper.PageInfo;
import com.mmall.common.ServerResponse;
import com.mmall.pojo.Category;
import com.mmall.vo.page.CateProductVo;
import com.mmall.vo.page.CategoryVo;

import java.util.List;

/**
 * Created by geely
 */
public interface ICategoryService {
    ServerResponse addCategory(String categoryName, Integer parentId);

    ServerResponse updateCategoryName(Integer categoryId, String categoryName);

    ServerResponse<List<Category>> getChildrenParallelCategory(Integer categoryId);

    ServerResponse<List<Integer>> selectCategoryAndChildrenById(Integer categoryId);

    PageInfo<Category> getCategoryByPreId(Integer categoryId, Integer pageSize, Integer pageNum);

    /**
     * 通过categoryId查询其子分类信息
     *
     * @param categoryId 将要查询的分类id
     * @return
     */
    List<Category> getCategoryByPreId(Integer categoryId);

    PageInfo<CateProductVo> getCateProductListByPreId(Integer pageSize, Integer pageNum);

    /**
     * 通过父分类id，查询该分类下的所有子分类信息
     *
     * @param categoryId
     * @return
     */
    CategoryVo getCategoryVoByPreId(Integer categoryId);

    /**
     * 通过categoryId查询分类信息
     *
     * @param categoryId 分类id
     * @return
     */
    Category getCategoryByPrimaryKey(Integer categoryId);

    /**
     * 查询指定分类下所有子分类及其商品信息
     *
     * @param categoryId
     * @return
     */
    List<CateProductVo> getCateProductListByPreId(Integer categoryId);
}
