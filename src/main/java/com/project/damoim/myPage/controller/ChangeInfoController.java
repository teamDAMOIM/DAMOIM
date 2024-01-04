package com.project.damoim.myPage.controller;

import com.project.damoim.Util.LoginUtiles;
import com.project.damoim.member.entity.Member;
import com.project.damoim.member.service.MemberService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
@Slf4j
@RequestMapping("/changeInfo")
@RequiredArgsConstructor
public class ChangeInfoController {

    private final MemberService memberService;

    @GetMapping("")
    public String changeInfo(HttpSession session, Model model){

        Member member = memberService.getMember(LoginUtiles.LoginUserId(session));
        model.addAttribute("m",member);
        return "/mypage/change-info";
    }
}
