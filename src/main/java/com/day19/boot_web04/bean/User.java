package com.day19.boot_web04.bean;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @Author: 王嵩涛
 * @QQ: 2749391385
 * @CreateTime: 2021-07-25-16-45
 * @Description: user表的包装类
 */
@AllArgsConstructor
@NoArgsConstructor
@Data
@TableName("user")//使用mybatisplus时，若数据库表名不一致，需要在此指定
public class User {
    @TableId("uid")//使用mybatisplus自带方法时，若数据库字段不一致，需在此指定
    private int uid;
    @TableField("uname")//TableId用于指定主键字段，TableField用来指定非主键字段
    private String uname;
    @TableField("ugender")
    private String ugender;
    @TableField("uage")
    private int uage;
    @TableField("address")
    private int address;
    @TableField("uqq")
    private String uqq;
    @TableField("uemail")
    private String uemail;
}
