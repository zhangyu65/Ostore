package com.zy.mall.entity;

import lombok.Data;

import java.util.Date;

/**
 * 购物车信息
 */
@Data
public class ShoppingCart {

    private Long cusId;
    private Long shopId;
    private Date createTime;

}
