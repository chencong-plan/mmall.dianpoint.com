package com.mmall.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.google.common.collect.Lists;
import com.google.common.collect.Sets;
import com.mmall.common.ServerResponse;
import com.mmall.dao.CategoryMapper;
import com.mmall.dao.ProductMapper;
import com.mmall.pojo.Category;
import com.mmall.pojo.Product;
import com.mmall.service.ICategoryService;
import com.mmall.util.DateTimeUtil;
import com.mmall.util.PropertiesUtil;
import com.mmall.vo.ProductDetailVo;
import com.mmall.vo.page.CateProductVo;
import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Set;

/**
 * Created by geely
 */
@Service("iCategoryService")
public class CategoryServiceImpl implements ICategoryService {

    private Logger logger = LoggerFactory.getLogger(CategoryServiceImpl.class);

    @Autowired
    private CategoryMapper categoryMapper;

    @Autowired
    private ProductMapper productMapper;

    public ServerResponse addCategory(String categoryName, Integer parentId) {
        if (parentId == null || StringUtils.isBlank(categoryName)) {
            return ServerResponse.createByErrorMessage("添加品类参数错误");
        }

        Category category = new Category();
        category.setName(categoryName);
        category.setParentId(parentId);
        category.setStatus(true);//这个分类是可用的

        int rowCount = categoryMapper.insert(category);
        if (rowCount > 0) {
            return ServerResponse.createBySuccess("添加品类成功");
        }
        return ServerResponse.createByErrorMessage("添加品类失败");
    }

    public ServerResponse updateCategoryName(Integer categoryId, String categoryName) {
        if (categoryId == null || StringUtils.isBlank(categoryName)) {
            return ServerResponse.createByErrorMessage("更新品类参数错误");
        }
        Category category = new Category();
        category.setId(categoryId);
        category.setName(categoryName);

        int rowCount = categoryMapper.updateByPrimaryKeySelective(category);
        if (rowCount > 0) {
            return ServerResponse.createBySuccess("更新品类名字成功");
        }
        return ServerResponse.createByErrorMessage("更新品类名字失败");
    }

    public ServerResponse<List<Category>> getChildrenParallelCategory(Integer categoryId) {
        List<Category> categoryList = categoryMapper.selectCategoryChildrenByParentId(categoryId);
        if (CollectionUtils.isEmpty(categoryList)) {
            logger.info("未找到当前分类的子分类");
        }
        return ServerResponse.createBySuccess(categoryList);
    }


    /**
     * 递归查询本节点的id及孩子节点的id
     *
     * @param categoryId
     * @return
     */
    public ServerResponse<List<Integer>> selectCategoryAndChildrenById(Integer categoryId) {
        Set<Category> categorySet = Sets.newHashSet();
        findChildCategory(categorySet, categoryId);


        List<Integer> categoryIdList = Lists.newArrayList();
        if (categoryId != null) {
            for (Category categoryItem : categorySet) {
                categoryIdList.add(categoryItem.getId());
            }
        }
        return ServerResponse.createBySuccess(categoryIdList);
    }


    //递归算法,算出子节点
    private Set<Category> findChildCategory(Set<Category> categorySet, Integer categoryId) {
        Category category = categoryMapper.selectByPrimaryKey(categoryId);
        if (category != null) {
            categorySet.add(category);
        }
        //查找子节点,递归算法一定要有一个退出的条件
        List<Category> categoryList = categoryMapper.selectCategoryChildrenByParentId(categoryId);
        for (Category categoryItem : categoryList) {
            findChildCategory(categorySet, categoryItem.getId());
        }
        return categorySet;
    }

    /**
     * 递归查询本节点的id及孩子节点的id
     *
     * @param categoryId categoryId
     * @return
     */
    private List<Integer> getCategoryAndChildrenById(Integer categoryId) {
        Set<Category> categorySet = Sets.newHashSet();
        findChildCategory(categorySet, categoryId);


        List<Integer> categoryIdList = Lists.newArrayList();
        if (categoryId != null) {
            for (Category categoryItem : categorySet) {
                categoryIdList.add(categoryItem.getId());
            }
        }
        return categoryIdList;
    }


    /**
     * 通过父节点id获取所有子节点信息
     *
     * @param categoryId 父节点id
     * @param pageSize   分页大小
     * @param pageNum    当前页数
     * @return 返回pageInfo
     */
    @Override
    public PageInfo<Category> getCategoryByPreId(Integer categoryId, Integer pageSize, Integer pageNum) {
        PageHelper.startPage(pageNum, pageSize);
        List<Category> categoryList = categoryMapper.selectCategoryChildrenByParentId(categoryId);
        PageInfo<Category> pageResult = new PageInfo<>(categoryList);
        return pageResult;
    }

    @Override
    public PageInfo<CateProductVo> getCateProductListByPreId(Integer pageSize, Integer pageNum) {
        PageHelper.startPage(pageNum, pageSize);
        List<Category> categoryList = categoryMapper.selectCategoryByPreId(0);
        List<CateProductVo> cateProductVoList = new ArrayList<>();
        for (Category category : categoryList) {
            List<Category> cateList = categoryMapper.selectCategoryByPreId(category.getId());
            CateProductVo cateProductVo = new CateProductVo();
            cateProductVo.setParentId(category.getParentId());
            cateProductVo.setCategoryName(category.getName());
            cateProductVo.setCategoryId(category.getId());
            if (cateList != null || cateList.size() > 0) {
                List<Integer> ids = Arrays.asList(cateList.get(0).getId());
                //TODO set pageSize
                PageHelper.startPage(pageNum, pageSize + 5);
                List<Product> productList = productMapper.selectByNameAndCategoryIds(null, ids);
                List<ProductDetailVo> productDetailVoList = assembleProductDetailVo(productList);
                cateProductVo.setProductList(productDetailVoList);
            } else {
                continue;
            }
            cateProductVoList.add(cateProductVo);
        }

        return new PageInfo<>(cateProductVoList);
    }

    /**
     * 组装productDetailVo
     *
     * @param productList productList
     * @return 返回productDetailVo
     */
    private List<ProductDetailVo> assembleProductDetailVo(List<Product> productList) {
        List<ProductDetailVo> productDetailVoList = new ArrayList<>();
        for (Product product : productList) {
            ProductDetailVo productDetailVo = new ProductDetailVo();
            productDetailVo.setId(product.getId());
            productDetailVo.setCategoryId(product.getCategoryId());
            productDetailVo.setName(product.getName());
            productDetailVo.setSubtitle(product.getSubtitle());
            productDetailVo.setMainImage(product.getMainImage());
            productDetailVo.setSubImages(product.getSubImages());
            productDetailVo.setDetail(product.getDetail());
            productDetailVo.setPrice(product.getPrice());
            productDetailVo.setStock(product.getStock());
            productDetailVo.setStatus(product.getStatus());
            productDetailVo.setCreateTime(DateTimeUtil.dateToStr(product.getCreateTime()));
            productDetailVo.setUpdateTime(DateTimeUtil.dateToStr(product.getUpdateTime()));

            productDetailVo.setImageHost(PropertiesUtil.getProperty("ftp.server.http.prefix", "http://img.dianpoint.com/"));

            productDetailVoList.add(productDetailVo);
        }
        return productDetailVoList;
    }

}
