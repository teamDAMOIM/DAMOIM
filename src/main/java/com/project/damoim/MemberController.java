package com.project.damoim;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/members")
@Slf4j
@RequiredArgsConstructor
public class MemberController {

    // 회원 가입 양식 요청
    @GetMapping("/sign-up")
    public String signUp() {
//        log.info("/memberssign-up GET : forwarding to sign-up.jsp");
        return "members/sign-up";
    }

    @GetMapping("/sign-in")
    public String signIn() {
        return "members/sign-in";
    }
}
