package com.project.damoim;


import com.project.damoim.post.common.Search;
import com.project.damoim.post.dto.request.PostListRequestDTO;
import com.project.damoim.post.dto.request.PostSortRequestDTO;
import com.project.damoim.post.entity.Post;
import com.project.damoim.post.service.PostService;
import com.project.damoim.recruit.dto.response.RecuriitDetileResponseDTO;
import com.project.damoim.recruit.dto.response.RecuritResponseDTO;
import com.project.damoim.recruit.entity.Recruit;
import com.project.damoim.recruit.service.RecuritService;
import lombok.Getter;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

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


        model.addAttribute("loginPost", loginPost);
        model.addAttribute("pList", sortPostList);

        return "index";
    }

    @ResponseBody
    @GetMapping("/recruitList")
    public ResponseEntity<?> mapMarkList(){
        List<Recruit> recruitList = recuritService.findAll();
        return ResponseEntity
                .ok()
                .body(
                        recruitList
                );
    }

    @ResponseBody
    @GetMapping("/recruitList/{rno}")
    public ResponseEntity<?> mapView(
            @PathVariable int rno
    ){
        RecuriitDetileResponseDTO dto = recuritService.detailRecurit(rno);


        return ResponseEntity
                .ok()
                .body(
                        dto
                )
                ;
    }


}
