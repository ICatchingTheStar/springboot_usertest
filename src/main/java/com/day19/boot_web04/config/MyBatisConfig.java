package com.day19.boot_web04.config;

import com.baomidou.mybatisplus.extension.plugins.MybatisPlusInterceptor;
import com.baomidou.mybatisplus.extension.plugins.inner.PaginationInnerInterceptor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * @Author: 王嵩涛
 * @QQ: 2749391385
 * @CreateTime: 2021-07-25-16-56
 * @Description: 为mybatisplus的分页功能设置配置
 */
@Configuration
public class MyBatisConfig {
    @Bean
    public MybatisPlusInterceptor paginationInterceptor(){
        MybatisPlusInterceptor mybatisPlusInterceptor = new MybatisPlusInterceptor();
        PaginationInnerInterceptor paginationInnerInterceptor = new PaginationInnerInterceptor();
        paginationInnerInterceptor.setOverflow(true);//允许溢出
        paginationInnerInterceptor.setMaxLimit(500L);//每次最大查询500行
        mybatisPlusInterceptor.addInnerInterceptor(paginationInnerInterceptor);//加载到mybatisplus的配置中
        return mybatisPlusInterceptor;
    }
}
