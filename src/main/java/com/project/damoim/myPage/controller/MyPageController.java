package com.project.damoim.myPage.controller;


import lombok.Getter;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@Slf4j
@RequestMapping("/myPage")
public class MyPageController {
    @GetMapping("")
    public String myPage(){
        return "/mypage/mypage";
    }
}
