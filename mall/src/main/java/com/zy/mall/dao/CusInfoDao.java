package com.zy.mall.dao;

import com.zy.mall.entity.CusInfo;

public interface CusInfoDao {

    /**
     *根据手机号查询用户信息
     * @param cusPhone
     * @return
     */
    public CusInfo queryByPhone(Long cusPhone);

    /**
     * 根据邮箱查询用户信息
     * @param cusMail
     * @return
     */
    public CusInfo queryByMail(String cusMail);


}
