package com.project.damoim.member.controller;


import com.project.damoim.Util.LoginUtiles;
import com.project.damoim.Util.upload.FileUtil;
import com.project.damoim.member.dto.request.LoginRequestDTO;
import com.project.damoim.member.dto.request.SignUpRequestDTO;
import com.project.damoim.member.entity.Member;
import com.project.damoim.member.service.LoginResult;
import com.project.damoim.member.service.MemberService;
import lombok.Getter;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;

@Controller
@RequestMapping("/members")
@Slf4j
@RequiredArgsConstructor
public class MemberController {

    private final MemberService memberService;
    @Value("${root.path}")
    private String rootPath;

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
            File file = new File(rootPath);

            if (!file.exists()) file.mkdirs();

            String savePath = FileUtil.uploadFile(dto.getProfile(), rootPath);
            boolean member = memberService.saveMember(dto, savePath);
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
    public String signIn(HttpSession session){
        return "/members/sign-in";
    }

    @PostMapping("/sign-in")
    public String signIn(LoginRequestDTO dto,
                         RedirectAttributes ra,
                         HttpSession session,
                         HttpServletResponse response){
        LoginResult authenticate = memberService.authenticate(dto, session, response);
        log.info("{}", dto);

        ra.addFlashAttribute("result", authenticate);


        if(authenticate == LoginResult.SUCCESS){ // 성공
            // 세션 받아오기
            memberService.LoginState(session, dto.getId());

            return "redirect:/";
        }

        return "redirect:/members/sign-in";
    }



    // 로그아웃 처리
    @GetMapping("/sign-out")
    public String signOut(HttpServletRequest request, HttpServletResponse response){
        HttpSession session = request.getSession();

        if(session.getAttribute("login") != null){

            if(LoginUtiles.isAutoLogin(request)){
                memberService.autoOut(request, response);
            }

            session.removeAttribute("login");
            session.invalidate();
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

    @GetMapping("/update")
    public String update(String type){
        log.info(type);
        memberService.updateMember(type);
        return "";
    }
}
