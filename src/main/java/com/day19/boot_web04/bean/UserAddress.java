package com.day19.boot_web04.bean;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @Author: 王嵩涛
 * @QQ: 2749391385
 * @CreateTime: 2021-07-25-16-48
 * @Description: 用户的省份选择地址
 */
@AllArgsConstructor
@NoArgsConstructor
@Data
@TableName("user_address")
public class UserAddress {
    private int id;
    private String address;
}
