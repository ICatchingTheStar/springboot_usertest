package com.day19.boot_web04.bean;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @Author: 王嵩涛
 * @QQ: 2749391385
 * @CreateTime: 2021-07-25-16-47
 * @Description:user的用户名和密码
 */
@AllArgsConstructor
@NoArgsConstructor
@Data
@TableName("user_date")
public class UserDate {
    private int did;
    private String username;
    private String password;
}
