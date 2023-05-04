package com.openmat.openmatservice.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class OpenmatController {
    @GetMapping("/test-api")
    public String testApi() {
        return "Hello from Openmat Service";
    }
}
