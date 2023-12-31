package com.project.damoim.recruit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/recruit")
public class RecruitController {

    @GetMapping("")
    public String recruit(){
        return "/post/requestpost";
    }
}
