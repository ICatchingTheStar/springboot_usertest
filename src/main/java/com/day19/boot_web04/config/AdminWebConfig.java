package com.day19.boot_web04.config;

import com.day19.boot_web04.interceptor.LoginInterceptor;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/**
 * @Author: 王嵩涛
 * @QQ: 2749391385
 * @CreateTime: 2021-07-25-16-50
 * @Description:
 */
@Configuration
public class AdminWebConfig implements WebMvcConfigurer {

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(new LoginInterceptor())//为LoginInterceptor()拦截器添加配置
                .addPathPatterns("/**")//拦截所有资源，包括静态
                .excludePathPatterns("/","/login","/loginByDate","/checkCodeServlet","/css/**","/fonts/**","/images/**","/js/**");//放行初始页和静态资源
    }
}
