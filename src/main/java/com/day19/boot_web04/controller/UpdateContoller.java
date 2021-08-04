package com.day19.boot_web04.controller;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.conditions.segments.MergeSegments;
import com.baomidou.mybatisplus.core.conditions.update.UpdateWrapper;
import com.day19.boot_web04.bean.User;
import com.day19.boot_web04.bean.UserAddress;
import com.day19.boot_web04.service.UserAddressService;
import com.day19.boot_web04.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @Author: 王嵩涛
 * @QQ: 2749391385
 * @CreateTime: 2021-08-01-10-18
 * @Description:
 */
@Controller
public class UpdateContoller {
    @Autowired
    UserService userService;
    @Autowired
    UserAddressService userAddressService;

//    修改按钮李处
    @GetMapping("/user/update/{id}")
    public String updateUser(@PathVariable("id")Integer id,
                             HttpSession session){
        //按下修改按钮时，会发送对应用户的id，把这个id存入session用于服务端后续操作
        session.setAttribute("updateId",id);
        return "redirect:/update";//此处应该注意使用 重定向，转到update页面
    }

//    修改页
    @GetMapping("/update")
    public String updatePage(HttpSession session, Model model){
        int updateId = (int) session.getAttribute("updateId");//获取需要修改的用户id

        //根据id查询到该用户数据
        User updateOne = userService.getOne(new QueryWrapper<User>().eq("uid", updateId));
        //再查询到用于下拉列表展示的籍贯数据
        List<UserAddress> list = userAddressService.list();

        //包装数据发送给前台页面
        model.addAttribute("addressList",list);
        model.addAttribute("updateById",updateOne);

        return "/update";
    }

//  update页的修改提交处理
    @PostMapping("/doupdate")
    public String doUpdate(User userUpdate,HttpSession session){
        int updateId = (Integer) session.getAttribute("updateId");//首先获取到需要修改的用户id
        //调用mapper中自己定义的update方法修改数据库中的数据
        //修改数据库中 uid = 需要修改的用户id，的用户
        userService.update(userUpdate,new UpdateWrapper<User>().eq("uid",updateId));
        return "redirect:/allUserList";//返回查询所有页面
    }
}
