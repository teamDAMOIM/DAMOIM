package com.project.damoim.post.controller;

import com.project.damoim.post.entity.Post;
import com.project.damoim.post.service.PostService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/post")
@Slf4j
@RequiredArgsConstructor
public class PostController {

    private final PostService service;

    @GetMapping("")
    public String post(Model model) {
        List<Post> postList = service.getPostList();
        model.addAttribute("pList", postList);


        return "/post/post";
    }

    @GetMapping("/requestpost")
    public String requestpost() {
        return "/post/requestpost";
    }

    @GetMapping("/write")
    public String write(){
        return "/post/write";
    }

    @GetMapping("/detail")
    public String detail(int pno, Model model){
        log.debug("{}", pno);

        Post post = service.getPost(pno);
        model.addAttribute("p", post);
        return "/post/post-detail";
    }
}
