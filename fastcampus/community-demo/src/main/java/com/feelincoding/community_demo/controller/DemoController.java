package com.feelincoding.community_demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class DemoController {

    public String index() {
        return "index";
    }

    @GetMapping("/test-api")
    public String getMethodName(@RequestParam String param) {
        return new String();
    }
    
}
