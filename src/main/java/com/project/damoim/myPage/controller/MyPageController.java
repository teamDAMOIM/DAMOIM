package com.project.damoim.myPage.controller;


import com.project.damoim.Util.LoginUtiles;
import com.project.damoim.member.entity.Member;
import com.project.damoim.member.service.MemberService;
import com.project.damoim.myPage.DTO.response.MyPageCommentResponseDTO;
import com.project.damoim.myPage.DTO.response.MyPagePostResponseDTO;
import com.project.damoim.myPage.DTO.response.MyPageRecruitResopseDTO;
import com.project.damoim.myPage.service.MyPageService;
import com.project.damoim.recruit.entity.RecruitandMember;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@Slf4j
@RequestMapping("/myPage")
@RequiredArgsConstructor
public class MyPageController {

    private final MemberService memberService;

    private final MyPageService myPageService;

    @GetMapping("")
    public String myPage(HttpSession session, Model model){
        int recruitedCount = myPageService.recruitCount(session);
        int postedCount = myPageService.postCount(session);
        int commentedCount = myPageService.commentCount(session);
        int recriteAndMemberCount = myPageService.recriteAndMemberCount(session);

        List<MyPageRecruitResopseDTO> recruitList = myPageService.getRecruitList(session);
        List<MyPagePostResponseDTO> postList = myPageService.getPostList(session);
        List<MyPageCommentResponseDTO> commentList = myPageService.getCommentList(session);
        List<RecruitandMember> recruitandMember = myPageService.getRecruitandMember(session);

        model.addAttribute("rcount", recruitedCount);
        model.addAttribute("pcount", postedCount);
        model.addAttribute("ccount", commentedCount);
        model.addAttribute("rmcount", recriteAndMemberCount);

        model.addAttribute("rList", recruitList);
        model.addAttribute("pList", postList);
        model.addAttribute("cList", commentList);
        model.addAttribute("rmList", recruitandMember);

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
