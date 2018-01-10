package com.zy.mall.entity;

import lombok.Data;

import java.math.BigDecimal;

/**
 * 订单详情信息
 */
@Data
public class OrdDetail {

    private Long       ordId;
    private Long       shopId;
    private int        shopCount;
    private BigDecimal shopPrice;
    private BigDecimal sumPrice;

}
