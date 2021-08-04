package com.day19.boot_web04.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.day19.boot_web04.bean.User;
import com.day19.boot_web04.bean.UserAddress;

import java.util.List;


/**
 * @Author: 王嵩涛
 * @QQ: 2749391385
 * @CreateTime: 2021-07-26-15-51
 * @Description:
 */

public interface UserMapper extends BaseMapper<User> {
    User selectById(int id);

}
