package com.project.damoim.member.controller;


import com.project.damoim.member.dto.request.SignUpRequestDTO;
import com.project.damoim.member.service.MemberService;
import lombok.Getter;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/members")
@Slf4j
@RequiredArgsConstructor
public class MemberController {

    private final MemberService memberService;

    @GetMapping("/sign-up")
    public String signUp(){
        return "/members/sign-up";
    }
    @PostMapping("/sign-up")
    public String signUp(SignUpRequestDTO dto, Model model){
        try {
            boolean member = memberService.getMember(dto.isEntity());
            if (member){
                model.addAttribute("t", member);
                return "/members/sign-in";
            }
            log.debug("{}", member);
        } catch (Exception e) {
            log.warn(e.getMessage());
        }

        return "/members/sign-up";
    }
}
