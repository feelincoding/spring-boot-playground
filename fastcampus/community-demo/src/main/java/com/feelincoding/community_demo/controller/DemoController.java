package com.feelincoding.community_demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.feelincoding.community_demo.repository.ArticleRepository;


// @Controller
@RestController
public class DemoController {
    @Autowired
    private ArticleRepository articleRepository;

    public String index() {
        return "index";
    }

    @GetMapping("/test-api")
    public String getMethodName() {
        return articleRepository.findAll().toString();
    }
    
    @GetMapping("/test-api2")
    public String getMethodName2() {
        return "hello";
    }
}
