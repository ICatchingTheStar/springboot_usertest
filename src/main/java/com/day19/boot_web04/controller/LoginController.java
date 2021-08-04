package com.day19.boot_web04.controller;

import com.day19.boot_web04.bean.User;
import com.day19.boot_web04.bean.UserDate;
import com.day19.boot_web04.service.UserDateService;
import com.day19.boot_web04.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

/**
 * @Author: 王嵩涛
 * @QQ: 2749391385
 * @CreateTime: 2021-07-26-13-38
 * @Description:登录及欢迎页面的控制器
 */
@Controller
public class LoginController {
    @Autowired
    UserDateService userDateService;
    @Autowired
    UserService userService;

//起始页
    @GetMapping(value = {"/","login"})
    public String loginPage(){
        return "login";
    }

    //生成登录页的验证码
    @GetMapping("/checkCodeServlet")
    public void checkCodeServlet(HttpSession session,
                                   HttpServletResponse response){
        //通知浏览器不要缓存
        response.setHeader("pragma","no-cache");
        response.setHeader("cache-control","no-cache");
        response.setHeader("expires","0");

        //在内存中创建一个长80，宽30的图片，默认黑色背景
        //参数一：长
        //参数二：宽
        //参数三：颜色
        int width=80;
        int height = 30;
        BufferedImage image = new BufferedImage(width,height,BufferedImage.TYPE_INT_RGB);

        Graphics g = image.getGraphics();//获取画笔
        g.setColor(Color.GRAY);//设置画笔颜色为灰色
        g.fillRect(0,0,width,height);//填充图片

        String base = "0123456789ABCDEFGabcdefg";
        int size = base.length();
        Random r = new Random();
        StringBuffer sb = new StringBuffer();
        for (int i =1; i <= 4; i++){
            int index = r.nextInt(size);//产生0到size-1的随机值
            char c = base.charAt(index);//在base字符串中获取下标为index的字符
            sb.append(c);//将c放入到StringBuffer中去
        }
        String getCheckCode = sb.toString();

        String checkCode = getCheckCode;//产生4个随机验证码, 12Ey
        session.setAttribute("CHECKCODE_SERVER",checkCode);//将验证码放入HttpSession中

        g.setColor(Color.YELLOW);//设置画笔颜色为黄色
        g.setFont(new Font("黑体",Font.BOLD,24));//设置字体的小大
        g.drawString(checkCode,15,25);//向图片上写入验证码

        //将内存中的图片输出到浏览器
        //参数一：图片对象
        //参数二：图片的格式，如PNG,JPG,GIF
        //参数三：图片输出到哪里去
        try {
            ImageIO.write(image,"PNG",response.getOutputStream());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

//    登录页需要登录验证，应该要发送一个请求来进行处理
    @PostMapping("/loginByDate")
    public String loginByDate(UserDate userDate,//接收表单数据并封装为账户密码
                              HttpSession session,//做好记录登录状态的准备
                              Model model,
                              HttpServletRequest request){//把结果发送给前台页面
        //效验验证码
        String checkcode_server = (String) session.getAttribute("CHECKCODE_SERVER");//获取到session里的正确验证码
        session.removeAttribute("CHECKCODE_SERVER");//删掉确保再次刷新时重新存入正确的验证码，确保一致
        String verifycode = request.getParameter("verifycode");//login页里的验证码name属性为verifycode
//        System.out.println(checkcode_server);
//        System.out.println(verifycode);
        if (!StringUtils.hasLength(verifycode) || !checkcode_server.equalsIgnoreCase(verifycode)){//前台验证码和后台验证码不一致
            model.addAttribute("msg","验证码错误！");
            return "login";//直接返回，不再执行后面的操作，节省性能
        }
        //验证账户和密码
        if (StringUtils.hasLength(userDate.getUsername())//账户密码都不为空才操作，节省性能
                && StringUtils.hasLength(userDate.getPassword())){
            UserDate loginUser = userDateService.selectByUsernameAndPassword(userDate.getUsername(), userDate.getPassword());
//            System.out.println(loginUser.getDid());
            if (loginUser != null){//用户存在
                User user = userService.selectById(loginUser.getDid());
//                System.out.println(user);
                session.setAttribute("loginUser",user);//把登录用户存入session
                return "redirect:/index";//重定向到欢迎页
            }
            //不存在
            model.addAttribute("msg","账号密码错误！");
            return "login";//退回登录页
        }else {
            model.addAttribute("msg","请输入账号密码！");
            return "login";
        }

    }
//登录成功后的欢迎页
    @GetMapping("/index")
    public String indexPage(){
        return "index";
    }
}
