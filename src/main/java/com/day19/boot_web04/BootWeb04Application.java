package com.day19.boot_web04;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
@MapperScan("com.day19.boot_web04.mapper")
@SpringBootApplication
public class BootWeb04Application {

    public static void main(String[] args) {
        SpringApplication.run(BootWeb04Application.class, args);
    }

}
