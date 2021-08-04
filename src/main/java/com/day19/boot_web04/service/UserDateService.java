package com.day19.boot_web04.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.day19.boot_web04.bean.UserDate;
import org.apache.ibatis.annotations.Param;

/**
 * @Author: 王嵩涛
 * @QQ: 2749391385
 * @CreateTime: 2021-07-26-14-44
 * @Description:
 */

public interface UserDateService extends IService<UserDate> {
    public UserDate selectByUsernameAndPassword(String username,String password);
}
