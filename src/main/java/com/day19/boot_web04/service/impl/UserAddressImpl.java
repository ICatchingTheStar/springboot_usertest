package com.day19.boot_web04.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.day19.boot_web04.bean.UserAddress;
import com.day19.boot_web04.mapper.UserAddressMappder;
import com.day19.boot_web04.service.UserAddressService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @Author: 王嵩涛
 * @QQ: 2749391385
 * @CreateTime: 2021-07-31-16-37
 * @Description:
 */
@Service
public class UserAddressImpl extends ServiceImpl<UserAddressMappder, UserAddress> implements UserAddressService {
    @Autowired
    private UserAddressMappder userAddressMappder;
}
