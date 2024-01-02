package com.project.damoim.recruit.controller;

import com.project.damoim.recruit.dto.response.RecuritResponseDTO;
import com.project.damoim.recruit.entity.Recruit;
import com.project.damoim.recruit.service.RecuritService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/recruit")
@RequiredArgsConstructor
public class RecruitController {
    RecuritService service;
    @GetMapping("")
    public String recruit(Model model){
        List<RecuritResponseDTO> listRecurit =  service.getListRecurit();
        model.addAttribute("rList", listRecurit);
        return "/post/requestpost";
    }

    @PostMapping("/write")
    public String save(Recruit recruit){
        service.saveRecurit(recruit);
        return "redirect:/recruit";
    }
}
