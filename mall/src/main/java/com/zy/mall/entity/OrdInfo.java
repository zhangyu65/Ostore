package com.zy.mall.entity;

import lombok.Data;

import java.math.BigDecimal;
import java.util.Date;

/**
 * 订单信息
 */
@Data
public class OrdInfo {

    private Long       ordId;
    private Long       cusId;
    private String     cusPhone;
    private BigDecimal ordSum;
    private String     ordStatus;
    private Date       createTime;

}
