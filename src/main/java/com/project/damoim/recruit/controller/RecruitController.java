package com.project.damoim.recruit.controller;

import com.project.damoim.post.common.Search;
import com.project.damoim.recruit.common.RecruitSearch;
import com.project.damoim.recruit.dto.request.RecuritRequestDTO;
import com.project.damoim.recruit.dto.response.RecuriitDetileResponseDTO;
import com.project.damoim.recruit.dto.response.RecuritResponseDTO;
import com.project.damoim.recruit.entity.Category;
import com.project.damoim.recruit.entity.Recruit;
import com.project.damoim.recruit.service.RecuritService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/recruit")
@RequiredArgsConstructor
@Slf4j
public class RecruitController {
    private final RecuritService service;

    @GetMapping("")
    public String main(String type, String keyword, HttpSession session, Model model){
        List<RecuritResponseDTO> listRecurit = service.getListRecurit(type, keyword, session);

        model.addAttribute("rList", listRecurit);
        return "/recurit/requestpost";
    }

    @GetMapping("/write")
    public String write(){
        return "/recurit/requestpost-write";
    }

    @PostMapping("/write")
    public String write(RecuritRequestDTO dto, HttpSession session){
        service.saveRecurit(dto, session);
        log.info(" address : {} ",dto);
        return "redirect:/recruit";
    }

    @GetMapping("/detail")
    public String detail(int rno, Model model){
        RecuriitDetileResponseDTO r = service.detailRecurit(rno);
        model.addAttribute("r", r);
        return "/recurit/requestpost-detail";
    }

    @ResponseBody
    @GetMapping("/type/{type}/keyword/{keyword}")
    public ResponseEntity<?> findRecruit(
            @PathVariable String type,
            @PathVariable String keyword,
            HttpSession session
    ){
        List<RecuritResponseDTO> listRecurit = service.getListRecurit(type, keyword, session);


        return ResponseEntity
                .ok()
                .body(listRecurit)
                ;
    }


    @GetMapping("/addRecruit")
    public String addRecruit(int rno){
        return "redirect:/recruit/detail";
    }
}
