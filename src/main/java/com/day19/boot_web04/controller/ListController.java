package com.day19.boot_web04.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.day19.boot_web04.bean.SelectUser;
import com.day19.boot_web04.bean.User;
import com.day19.boot_web04.bean.UserAddress;
import com.day19.boot_web04.service.UserAddressService;
import com.day19.boot_web04.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpSession;
import java.util.Arrays;
import java.util.List;

/**
 * @Author: 王嵩涛
 * @QQ: 2749391385
 * @CreateTime: 2021-07-27-16-55
 * @Description:
 */
@Controller
public class ListController {
    @Autowired
    UserService userService;

//数据展示
    @GetMapping("/allUserList")
    public String listPage(@RequestParam(value = "pn",defaultValue = "1")Integer pn,
                           SelectUser selectUser,
                           Model model){
        if (!StringUtils.hasLength(selectUser.getName())
                && !StringUtils.hasLength(selectUser.getAddress())
                && !StringUtils.hasLength(selectUser.getEmail()) ){
            //使用mybatisPlus的自带page方法定义如何分页查询数据，pn为请求发送的当前页数，默认为1，每页8条记录
            Page<User> userPage = new Page<>(pn,8);
            //调用baseMapper的分页方法，传入配置，返回分页结果
        /*
        要想使用此方法，还需要配置mybatisPlus的拦截器设置，
        使MybatisPlusInterceptor的setOverflow为true，setMaxLimit随意设置(这里设为500L)
         */
            Page<User> page = userService.page(userPage, null);
            model.addAttribute("selectDate",selectUser);
            model.addAttribute("users",page);



            return "list";

        }


        if (StringUtils.hasLength(selectUser.getEmail())){
            Page<User> page = userService.page(new Page<>(pn,8), new QueryWrapper<User>()
                    .like("uname", "%" + selectUser.getName() + "%")
                    .like("address", "%" + selectUser.getAddress() + "%")
                    .like("uemail", "%" + selectUser.getEmail() + "%"));
            model.addAttribute("selectDate",selectUser);
            model.addAttribute("users",page);
            return "list";
        }else {
            Page<User> page = userService.page(new Page<>(pn,8), new QueryWrapper<User>()
                    .like("uname", "%" + selectUser.getName() + "%")
                    .like("address", "%" + selectUser.getAddress() + "%"));
            model.addAttribute("selectDate",selectUser);
            model.addAttribute("users",page);
            return "list";
        }

    }
//删除按钮处理
    @GetMapping("/user/delete/{id}")
    public String deleteUser(@PathVariable("id")Integer id,
                             @RequestParam(value = "pn",defaultValue = "1")Integer pn,
                             RedirectAttributes ra){
        userService.removeById(id);//使用mybatisplus的baseMapp基类中的removeById方法，删除数据库中对应的数据
        ra.addAttribute("pn",pn);//把当前页送达前台，使删除后可以保留在当前页面
        return "redirect:/allUserList";//重定向到list页，同时重新查询数据
    }


//    删除选中按钮处理
    @PostMapping("/delDelete")
    public String delDelete(@RequestParam(value = "uid",required = false)Integer[] uid){
        userService.removeByIds(Arrays.asList(uid));//使用baseMapper的批量删除方法，删除选中的用户
        return "redirect:/allUserList";
    }
//    复杂条件查询
    @PostMapping("/allUserList")
    public String selectByUser(@RequestParam(value = "pn",defaultValue = "1")Integer pn,
                               SelectUser selectUser,
                               Model model){
//        List<User> list = userService.list(new QueryWrapper<User>()
//                .like("uname","%" + selectUser.getName() + "%")
//                .like("address","%" + selectUser.getAddress() + "%")
//                .like("uemail","%" + selectUser.getEmail() + "%"));
        if (StringUtils.hasLength(selectUser.getEmail())){
            Page<User> page = userService.page(new Page<>(pn,8), new QueryWrapper<User>()
                    .like("uname", "%" + selectUser.getName() + "%")
                    .like("address", "%" + selectUser.getAddress() + "%")
                    .like("uemail", "%" + selectUser.getEmail() + "%"));
            model.addAttribute("selectDate",selectUser);
            model.addAttribute("users",page);
            return "list";
        }else {
            Page<User> page = userService.page(new Page<>(pn,8), new QueryWrapper<User>()
                    .like("uname", "%" + selectUser.getName() + "%")
                    .like("address", "%" + selectUser.getAddress() + "%"));
            model.addAttribute("selectDate",selectUser);
            model.addAttribute("users",page);
            return "list";
        }

    }
}
