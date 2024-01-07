package com.project.damoim.post.controller;

import com.project.damoim.Util.LoginUtiles;
import com.project.damoim.Util.date.DateChange;
import com.project.damoim.post.common.Page;
import com.project.damoim.post.common.PageMaker;
import com.project.damoim.post.common.Search;
import com.project.damoim.post.dto.request.PostListRequestDTO;
import com.project.damoim.post.dto.request.PostRequestDTO;
import com.project.damoim.post.dto.response.PostResponseDTO;
import com.project.damoim.post.entity.Post;
import com.project.damoim.post.service.PostService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/post")
@Slf4j
@RequiredArgsConstructor
public class PostController {

    private final PostService service;

    @GetMapping("")
    public String post(@ModelAttribute("ps") Search page, Model model) {
        List<PostListRequestDTO> postList = service.getPostList(page);
        int totalCount = service.totalPostCount(page);
        PageMaker pageMaker = new PageMaker(page, totalCount);
        model.addAttribute("maker",pageMaker);
        model.addAttribute("pList", postList);

        return "/post/post";
    }

    @GetMapping("/write")
    public String write(){
        return "/post/write";
    }

    @PostMapping("/write")
    public String write(PostRequestDTO dto, HttpSession session){
        service.savePost(dto, session);

        return "redirect:/post";
    }

    @GetMapping("/detail")
    public String detail(
            int pno,
            Model model,
            HttpSession session,
            @ModelAttribute("ps") Search page

    ){
        log.debug("{}", pno);


        // js에 포스트 entity 전달 과정
        PostResponseDTO post = service.getPost(pno);

        model.addAttribute("p", post);

        service.upViewCount(pno);


        return "/post/post-detail";
    }

    @GetMapping("/delete")
    public String delete(int pno){
        service.deletePost(pno);
        return "redirect:/post/detail";
    }
}
