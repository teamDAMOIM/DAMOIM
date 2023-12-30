package com.project.damoim;


import com.project.damoim.post.dto.request.PostListRequestDTO;
import com.project.damoim.post.dto.request.PostSortRequestDTO;
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
public class MainController {
    private final PostService service;
    @GetMapping("/")
    public String mainView(Model model){

        List<PostSortRequestDTO> sortPostList = service.getSortPostList();

        model.addAttribute("pList", sortPostList);
        return "index";
    }

}
