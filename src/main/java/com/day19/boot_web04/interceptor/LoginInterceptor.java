package com.day19.boot_web04.interceptor;

import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * @Author: 王嵩涛
 * @QQ: 2749391385
 * @CreateTime: 2021-07-25-16-52
 * @Description: 拦截器
 */

public class LoginInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {


        HttpSession session = request.getSession();//用户登录时会存入一个loginUser的session
        Object loginUser = session.getAttribute("loginUser");//拿到用户登录时放入session中的loginUser
        if (loginUser != null){
            return true;//放行
        }
        //是空的则没登录
        request.setAttribute("msg","请先登录");
        request.getRequestDispatcher("/").forward(request,response);//到登录页
        return false;//拦截
    }
}
