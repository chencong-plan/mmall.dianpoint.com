package com.mmall.vo.page;

import com.mmall.pojo.Product;
import com.mmall.vo.ProductDetailVo;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;

/**
 * 首页显示商品类别，还有显示该分类下商品。
 *
 * @author : ChenCong
 * @date : Created in 10:46 2018/4/18
 */
@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class CateProductVo {

    private Integer categoryId;

    private String categoryName;

    private Integer parentId;

    private List<ProductDetailVo> productList;

}
