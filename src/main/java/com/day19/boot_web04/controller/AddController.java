package com.day19.boot_web04.controller;

import com.day19.boot_web04.bean.User;
import com.day19.boot_web04.bean.UserAddress;
import com.day19.boot_web04.service.UserAddressService;
import com.day19.boot_web04.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;

/**
 * @Author: 王嵩涛
 * @QQ: 2749391385
 * @CreateTime: 2021-08-01-09-40
 * @Description:
 */
@Controller
public class AddController {
    @Autowired
    UserAddressService userAddressService;
    @Autowired
    UserService userService;


    @GetMapping("/add")
    public String addpage(Model model){
        List<UserAddress> list = userAddressService.list();
        model.addAttribute("addressList",list);
        return "add";
    }

    @PostMapping("/addUser")
    public String addUser(User user){
        userService.save(user);
        return "redirect:/allUserList";
    }
}
