package com.day19.boot_web04.bean;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @Author: 王嵩涛
 * @QQ: 2749391385
 * @CreateTime: 2021-07-28-16-08
 * @Description:
 */
@AllArgsConstructor
@NoArgsConstructor
@Data
public class SelectUser {
    public String name;
    public String address;
    public String email;
}
