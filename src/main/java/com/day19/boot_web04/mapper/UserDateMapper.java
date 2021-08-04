package com.day19.boot_web04.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.day19.boot_web04.bean.UserDate;
import org.apache.ibatis.annotations.Param;

/**
 * @Author: 王嵩涛
 * @QQ: 2749391385
 * @CreateTime: 2021-07-26-13-49
 * @Description:
 */

public interface UserDateMapper extends BaseMapper<UserDate> {
    public UserDate selectByUsernameAndPassword(@Param("username")String username,@Param("password")String password);
}
