package com.project.damoim.member.controller;


import com.project.damoim.member.dto.request.LoginRequestDTO;
import com.project.damoim.member.dto.request.SignUpRequestDTO;
import com.project.damoim.member.entity.Member;
import com.project.damoim.member.service.LoginResult;
import com.project.damoim.member.service.MemberService;
import lombok.Getter;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
    public String signIn(LoginRequestDTO dto,
                         RedirectAttributes ra){
        LoginResult authenticate = memberService.authenticate(dto);
        log.debug("{}", authenticate);
        Member member = memberService.getMember(dto.getId());

        ra.addFlashAttribute("result", authenticate);


        if(authenticate == LoginResult.SUCCESS){ // 성공
            ra.addFlashAttribute("m", member);
            return "redirect:/";
        }

        return "redirect:/members/sign-in";
    }


    /*
        회원가입 비동기 처리
     */
    @GetMapping("/check")
    @ResponseBody
    public ResponseEntity check(String type, String keyword){
        boolean flag = memberService.checkDuplicateValue(type, keyword);
        return ResponseEntity
                .ok()
                .body(flag);
    }
}
