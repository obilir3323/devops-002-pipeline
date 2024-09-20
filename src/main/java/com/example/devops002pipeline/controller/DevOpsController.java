package com.example.devops002pipeline.controller;


import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.time.LocalDateTime;

//http://localhost:8080
@RestController
@RequestMapping
public class DevOpsController {

    @GetMapping
    public String devopsHello()
    {
        return "Hello World : "+ LocalDateTime.now();
    }

    //http://localhost:8080/info
    @GetMapping("/info")
    public String devopsInfo()
    {
        return "INFO : "+ LocalDateTime.now();
    }

}
