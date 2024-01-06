package com.project.damoim.myPage.controller;


import com.project.damoim.Util.LoginUtiles;
import com.project.damoim.member.entity.Member;
import com.project.damoim.member.service.MemberService;
import lombok.Getter;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
@Slf4j
@RequestMapping("/myPage")
@RequiredArgsConstructor
public class MyPageController {

    private final MemberService memberService;

    @GetMapping("")
    public String myPage(){
        return "/mypage/mypage";
    }

    // 회원정보 수정 페이지 데이터 보내기
    @GetMapping("/changeInfo")
    public String changeInfo(HttpSession session, Model model) {

        Member member = memberService.getMember(LoginUtiles.LoginUserId(session));

        model.addAttribute("m", member);
        return "/mypage/change-info";
    }
}
