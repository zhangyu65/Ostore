package com.zy.mall.entity;

import lombok.Data;

import java.math.BigDecimal;

/**
 * 商品信息
 */
@Data
public class ShopInfo {

    private Long       shopId;
    private String     shopName;
    private int        shopCount;
    private String     shopType;
    private BigDecimal shopPrice;
    private String     discount;
    private String     shopStatus;

}
