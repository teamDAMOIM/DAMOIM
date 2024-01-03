package com.project.damoim.recruit.controller;

import com.project.damoim.recruit.dto.request.RecuritRequestDTO;
import com.project.damoim.recruit.dto.response.RecuriitDetileResponseDTO;
import com.project.damoim.recruit.dto.response.RecuritResponseDTO;
import com.project.damoim.recruit.entity.Recruit;
import com.project.damoim.recruit.service.RecuritService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/recruit")
@RequiredArgsConstructor
@Slf4j
public class RecruitController {
    private final RecuritService service;

    @GetMapping("")
    public String recruit(Model model){
        log.info("hello recruit");
        List<RecuritResponseDTO> listRecurit =  service.getListRecurit();
        log.debug("{}", listRecurit);
        model.addAttribute("rList", listRecurit);
        return "/recurit/requestpost";
    }

    @GetMapping("/write")
    public String write(){
        return "/recurit/requestpost-write";
    }

    @PostMapping("/write")
    public String write(RecuritRequestDTO dto){
        service.saveRecurit(dto);
        return "redirect:/recruit";
    }

    @GetMapping("/detail")
    public String detail(int rno, Model model){
        RecuriitDetileResponseDTO r = service.detailRecurit(rno);
        service.upViewCount(rno);
        model.addAttribute("r", r);
        return "/recurit/requestpost-detail";
    }
}
