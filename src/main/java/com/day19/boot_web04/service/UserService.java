package com.day19.boot_web04.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.day19.boot_web04.bean.User;
import com.day19.boot_web04.bean.UserAddress;
import com.day19.boot_web04.bean.UserDate;

import java.util.List;

/**
 * @Author: 王嵩涛
 * @QQ: 2749391385
 * @CreateTime: 2021-07-26-15-52
 * @Description:
 */

public interface UserService extends IService<User> {
    User selectById(int id);

}
