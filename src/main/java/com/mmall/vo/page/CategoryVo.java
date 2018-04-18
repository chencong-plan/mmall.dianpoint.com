package com.mmall.vo.page;

import com.mmall.pojo.Category;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;

/**
 * 用于显示当前分类下的子分类信息
 *
 * @author : ChenCong
 * @date : Created in 15:24 2018/4/18
 */

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class CategoryVo {

    private Integer categoryId;
    private String categoryName;

    private List<Category> childCategory;
}
