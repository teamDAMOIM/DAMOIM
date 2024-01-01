package com.project.damoim;


import com.project.damoim.post.dto.request.PostListRequestDTO;
import com.project.damoim.post.dto.request.PostSortRequestDTO;
import com.project.damoim.post.entity.Post;
import com.project.damoim.post.service.PostService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequiredArgsConstructor
@Slf4j
public class MainController {
    private final PostService service;
    @GetMapping("/")
    public String mainView(HttpSession session, Model model){

        List<PostSortRequestDTO> sortPostList = service.getSortPostList();

        List<Post> loginPost = service.getLoginPost(session);

        model.addAttribute("pList", sortPostList);

        model.addAttribute("loginPost", loginPost);
        return "index";
    }

}
