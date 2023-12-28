package com.project.damoim.post.controller;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/post")
@Slf4j
@RequiredArgsConstructor
public class PostController {

    @GetMapping("/post")
    public String post(){
        return "/post/post";
    }

    @GetMapping("/requestpost")
    public String requestpost(){
        return "/post/requestpost";
    }
}
