package com.day19.boot_web04;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.day19.boot_web04.bean.User;
import com.day19.boot_web04.service.UserService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
@Slf4j
@SpringBootTest
class BootWeb04ApplicationTests {
    @Autowired
    UserService userService;

    @Test
    void contextLoads() {
    }

    @Test
    void page(){
        Page<User> page = userService.page(new Page<>(1,8),null);
        log.info(String.valueOf(page));
    }

}
