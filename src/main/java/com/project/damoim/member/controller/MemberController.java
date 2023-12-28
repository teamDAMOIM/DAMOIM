package com.project.damoim.member.controller;


import com.project.damoim.member.dto.request.LoginRequestDTO;
import com.project.damoim.member.dto.request.SignUpRequestDTO;
import com.project.damoim.member.service.LoginResult;
import com.project.damoim.member.service.MemberService;
import lombok.Getter;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/members")
@Slf4j
@RequiredArgsConstructor
public class MemberController {

    private final MemberService memberService;

    /*
        회원가입 창 띄우기
     */
    @GetMapping("/sign-up")
    public String signUp(){
        return "/members/sign-up";
    }

    /*
        dto를 읽고 확인 체크
     */
    @PostMapping("/sign-up")
    public String signUp(
            @Validated
            SignUpRequestDTO dto,
            Model model,
            BindingResult result
    ){
        // 입력값 검증에 걸리면 회원가입창을 다시 띄우기
        if (result.hasErrors()) {
            return "/";
        }
        try { // 회원가입에 문제없이 통과하면
            boolean member = memberService.saveMember(dto);

            if (member){
                return "/members/sign-in";
            }
            log.debug("{}", member);

        } catch (Exception e) {
            log.warn(e.getMessage());
        }

        return "/members/sign-up";
    }

    // 로그인 창 띄우기
    @GetMapping("/sign-in")
    public String signIn(){
        return "/members/sign-in";
    }

    @PostMapping("/sign-in")
    public String signIn(LoginRequestDTO dto, Model model){
        LoginResult authenticate = memberService.authenticate(dto);
        log.debug("{}", authenticate);

        model.addAttribute("m", dto);

        return "redirect:/";
    }
}
