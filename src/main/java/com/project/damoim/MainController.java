package com.project.damoim;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {
    @GetMapping("/zzz")
    public String mainView(){
        return "index";
    }
}
