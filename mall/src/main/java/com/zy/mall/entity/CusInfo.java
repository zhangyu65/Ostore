package com.zy.mall.entity;

import lombok.Data;

import java.util.Date;

/**
 * 客户信息
 */
@Data
public class CusInfo {

    private Long   cusId;
    private String cusName;
    private String cusSex;
    private String cusPhone;
    private String cusMail;
    private String cusPwd;
    private String cusCertType;
    private String cusCertId;
    private String cusAddress;
    private Date   createTime;
    private String cusStatus;

}
