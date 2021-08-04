package com.day19.boot_web04.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.day19.boot_web04.bean.User;
import com.day19.boot_web04.bean.UserAddress;
import com.day19.boot_web04.mapper.UserMapper;
import com.day19.boot_web04.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Author: 王嵩涛
 * @QQ: 2749391385
 * @CreateTime: 2021-07-26-15-52
 * @Description:
 */
@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements UserService {
    @Autowired
    private UserMapper userMapper;

    @Override
    public User selectById(int id) {
        return userMapper.selectById(id);
    }


}
