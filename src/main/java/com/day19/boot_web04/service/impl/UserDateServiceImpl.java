package com.day19.boot_web04.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.day19.boot_web04.bean.UserDate;
import com.day19.boot_web04.mapper.UserDateMapper;
import com.day19.boot_web04.service.UserDateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @Author: 王嵩涛
 * @QQ: 2749391385
 * @CreateTime: 2021-07-26-14-44
 * @Description:
 */
@Service
public class UserDateServiceImpl extends ServiceImpl<UserDateMapper, UserDate> implements UserDateService {
    @Autowired
    private UserDateMapper userDateMapper;

    @Override
    public UserDate selectByUsernameAndPassword(String username, String password) {
        return userDateMapper.selectByUsernameAndPassword(username,password);
    }
}
