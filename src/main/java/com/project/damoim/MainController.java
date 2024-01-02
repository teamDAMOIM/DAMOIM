package com.project.damoim;


import com.project.damoim.post.dto.request.PostListRequestDTO;
import com.project.damoim.post.dto.request.PostSortRequestDTO;
import com.project.damoim.post.entity.Post;
import com.project.damoim.post.service.PostService;
import com.project.damoim.recruit.dto.response.RecuritResponseDTO;
import com.project.damoim.recruit.service.RecuritService;
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
    private final PostService postService;
    private final RecuritService recuritService;
    @GetMapping("/")
    public String mainView(HttpSession session, Model model){
        List<Post> loginPost = postService.getLoginPost(session);

        List<PostSortRequestDTO> sortPostList = postService.getSortPostList();


        List<RecuritResponseDTO> sortRecurit = recuritService.getSortRecurit(session);

        model.addAttribute("loginPost", loginPost);
        model.addAttribute("pList", sortPostList);
        model.addAttribute("rList", sortRecurit);
        return "index";
    }

}
